//
//  HomePageTableViewCell.swift
//  LessonTwo
//
//  Created by Hao Cui  on 2020/4/28.
//  Copyright © 2020 Hao Cui . All rights reserved.
//

import UIKit

class HomePageTableViewCell: UITableViewCell {

    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func config(with landmark: Landmark) {
        nameLabel.text = landmark.name
        previewImageView.image = UIImage(named: landmark.imageName)
    }

}
