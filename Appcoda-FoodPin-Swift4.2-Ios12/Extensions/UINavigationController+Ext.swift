//
//  UINavigationController+Ext.swift
//  Appcoda-FoodPin-Swift4.2-Ios12
//
//  Created by 陳裕銘 on 2019/3/15.
//  Copyright © 2019 yuming. All rights reserved.
//

import UIKit
extension UINavigationController{
    open override var childForStatusBarStyle: UIViewController?{
        return topViewController
    }
}
