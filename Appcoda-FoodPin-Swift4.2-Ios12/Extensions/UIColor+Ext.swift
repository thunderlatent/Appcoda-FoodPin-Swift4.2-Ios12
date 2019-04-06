//
//  UIColor+Ext.swift
//  Appcoda-FoodPin-Swift4.2-Ios12
//
//  Created by 陳裕銘 on 2019/3/14.
//  Copyright © 2019 yuming. All rights reserved.
//

import UIKit

extension UIColor{
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat){
        let redValue = red / 255.0
        let greenValue = green / 255.0
        let blueValue = blue / 255.0
        self.init(red: redValue , green: greenValue , blue: blueValue , alpha: 1.0)
    }
}
