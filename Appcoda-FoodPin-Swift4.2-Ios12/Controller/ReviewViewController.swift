//
//  ReviewViewController.swift
//  Appcoda-FoodPin-Swift4.2-Ios12
//
//  Created by 陳裕銘 on 2019/3/23.
//  Copyright © 2019 yuming. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
var restaurant = Restaurant()
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet var rateButtons: [UIButton]!
    
    @IBOutlet weak var closeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.image = UIImage(named: restaurant.image)
        // Do any additional setup after loading the view.
        //應用模糊效果
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        //讓按鈕隱藏
        let moveRightTransform = CGAffineTransform(translationX: 300, y: 0)
        let scaleTransform = CGAffineTransform(scaleX: 8.0, y: 8.0)
        let moveScaleTransform = moveRightTransform.concatenating(scaleTransform)
        for rateButton in rateButtons
        {
            rateButton.alpha = 0
            rateButton.transform = moveScaleTransform
        }
        let sliderTransform = CGAffineTransform(translationX: 0, y: -100)
        closeButton.transform = sliderTransform
        closeButton.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        //淡出動畫
//        UIView.animate(withDuration: 0.4, delay: 0.1, options: [], animations: {
//            self.rateButtons[0].alpha = 1
//        }, completion: nil)
//
//        UIView.animate(withDuration: 0.4, delay: 0.3, options: [], animations: {
//            self.rateButtons[1].alpha = 1
//        }, completion: nil)
//
//        UIView.animate(withDuration: 0.4, delay: 0.5, options: [], animations: {
//            self.rateButtons[2].alpha = 1
//        }, completion: nil)
//
//        UIView.animate(withDuration: 0.4, delay: 0.7, options: [], animations: {
//            self.rateButtons[3].alpha = 1
//        }, completion: nil)
//
//        UIView.animate(withDuration: 0.4, delay: 0.9, options: [], animations: {
//            self.rateButtons[4].alpha = 1
//        }, completion: nil)
        
        //滑入動畫
//        UIView.animate(withDuration: 0.8, delay: 0.1, options: [], animations: {
//            self.rateButtons[0].alpha = 1
//            self.rateButtons[0].transform = .identity
//        }, completion: nil)
        
        
        UIView.animate(withDuration: 0.8, delay: 0.9, options: [], animations: {
            self.rateButtons[2].alpha = 1
            self.rateButtons[2].transform = .identity
        }, completion: nil)
        
        UIView.animate(withDuration: 2, delay: 0, options: [], animations: {
            self.rateButtons[3].alpha = 1
            self.rateButtons[3].transform = .identity
        }, completion: nil)
        
        UIView.animate(withDuration: 0.8, delay: 0, options: [], animations: {
            self.rateButtons[4].alpha = 1
            self.rateButtons[4].transform = .identity
        }, completion: nil)
        
        //彈跳動畫
        UIView.animate(withDuration: 2.0, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: [], animations: {
            self.rateButtons[0].alpha = 1
            self.rateButtons[0].transform = .identity
        }, completion: nil)
        //變形加縮放動畫
        UIView.animate(withDuration: 2.0, delay: 0.1, options: [], animations: {
            self.rateButtons[1].alpha = 1
            self.rateButtons[1].transform = .identity
        }, completion: nil)
        
        //關閉按鈕的動畫
        UIView.animate(withDuration: 3, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.8, options: [], animations: {
            self.closeButton.alpha = 1
            self.closeButton.transform = .identity
        }, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
