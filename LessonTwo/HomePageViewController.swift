//
//  HomePageViewController.swift
//  LessonTwo
//
//  Created by Hao Cui  on 2020/4/28.
//  Copyright © 2020 Hao Cui . All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {
    
    @IBOutlet weak var toLoginButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    private var isLogined = false

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        toLoginButton.isHidden = isLogined
        tableView.isHidden = !isLogined
    }
    
    @IBAction func handleToLoginButton(_ sender: Any) {
        performSegue(withIdentifier: "login", sender: sender)
        /*
        let sb = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = sb.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        vc.didLoginCallback = { [weak self] in
            self?.isLogined = true
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
         */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "login" {
            let vc = segue.destination as! LoginViewController
            vc.modalPresentationStyle = .fullScreen
            vc.didLoginCallback = { [weak self] in
                self?.isLogined = true
            }
        }
    }
}

extension HomePageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomePageTableViewCell") as! HomePageTableViewCell
        cell.config(with: landmarkData[indexPath.row])
        return cell
    }
}

extension HomePageViewController: UITableViewDelegate {
    
}
