//
//  RestaurantTableViewCell.swift
//  Appcoda-FoodPin-Swift4.2-Ios12
//
//  Created by 陳裕銘 on 2019/2/6.
//  Copyright © 2019 yuming. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var thumbnaiImageView: UIImageView!
    @IBOutlet weak var checkInImageView: UIImageView!
        {
        didSet{
            checkInImageView.image = UIImage(named: "heart-tick")?.withRenderingMode(.alwaysTemplate)
            checkInImageView.tintColor = .white
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
