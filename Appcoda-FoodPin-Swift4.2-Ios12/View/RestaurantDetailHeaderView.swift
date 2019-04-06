//
//  RestaurantDetailHeaderView.swift
//  Appcoda-FoodPin-Swift4.2-Ios12
//
//  Created by 陳裕銘 on 2019/2/15.
//  Copyright © 2019 yuming. All rights reserved.
//

import UIKit

class RestaurantDetailHeaderView: UIView {
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!{
        didSet
        {
            nameLabel.layer.cornerRadius = 5.0
            nameLabel.layer.masksToBounds = true
        }
    }
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var heartImageView: UIImageView!{
        didSet
        {
            heartImageView.image = UIImage(named: "heart-tick")?.withRenderingMode(.alwaysTemplate)
            heartImageView.tintColor = .white
            
        }
    }
    
    @IBOutlet var ratingImageView: UIImageView!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
