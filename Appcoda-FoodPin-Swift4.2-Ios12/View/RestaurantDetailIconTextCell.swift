//
//  RestaurantDetailIconTextCell.swift
//  Appcoda-FoodPin-Swift4.2-Ios12
//
//  Created by 陳裕銘 on 2019/2/17.
//  Copyright © 2019 yuming. All rights reserved.
//

import UIKit

class RestaurantDetailIconTextCell: UITableViewCell {
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var shortTextLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
