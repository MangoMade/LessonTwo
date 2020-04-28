//
//  HomePageViewController.swift
//  LessonTwo
//
//  Created by Hao Cui  on 2020/4/28.
//  Copyright © 2020 Hao Cui . All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
