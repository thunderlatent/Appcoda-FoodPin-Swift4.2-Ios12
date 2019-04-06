//
//  RestaurantDetailViewController.swift
//  Appcoda-FoodPin-Swift4.2-Ios12
//
//  Created by 陳裕銘 on 2019/2/12.
//  Copyright © 2019 yuming. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var restaurantImageView: UIImageView!
    
    
    
    @IBOutlet weak var headerView: RestaurantDetailHeaderView!
    @IBOutlet weak var tableView: UITableView!
    var restaurant = Restaurant()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        navigationItem.largeTitleDisplayMode = .never
        headerView.headerImageView.image = UIImage(named: restaurant.image)
        headerView.nameLabel.text = restaurant.name
        headerView.typeLabel.text = restaurant.type
//        tableView.separatorStyle = .none
        
        headerView.heartImageView.isHidden = (restaurant.isVisited) ? false : true
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        tableView.contentInsetAdjustmentBehavior = .never
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.tintColor = .white
        headerView.ratingImageView.image = UIImage(named: restaurant.rating)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailIconTextCell.self), for: indexPath) as! RestaurantDetailIconTextCell
            cell.iconImageView.image = UIImage(named: "phone")
            cell.shortTextLabel.text = restaurant.phone
            cell.selectionStyle = .none
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailIconTextCell.self), for: indexPath) as! RestaurantDetailIconTextCell
            cell.iconImageView.image = UIImage(named: "map")
            cell.shortTextLabel.text = restaurant.location
            cell.selectionStyle = .none
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailTextCell.self), for: indexPath) as! RestaurantDetailTextCell
            cell.descriptionLabel.text = restaurant.description
            cell.selectionStyle = .none
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailSeparatorCell.self), for: indexPath) as! RestaurantDetailSeparatorCell
            cell.titleLabel.text = "HOW TO GET HERE"
            cell.selectionStyle = .none
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailMapCell.self), for: indexPath) as! RestaurantDetailMapCell
            cell.configure(location: restaurant.location)
            return cell
        default:
            fatalError(" DetailTableViewCell has some wrong!")
                
            
        }
    }
//讓狀態列變成白的
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let backBarButton = UIBarButtonItem()
        backBarButton.title = "Come Back"
        navigationItem.backBarButtonItem = backBarButton
        if segue.identifier == "showMap"
        {
            let destinationController = segue.destination as! MapViewController
            destinationController.restaurant = restaurant
        }
        else if segue.identifier == "showReview"
        {
            let destinationController = segue.destination as! ReviewViewController
            destinationController.restaurant = restaurant
            
        }
    }
    @IBAction func close(segue:UIStoryboardSegue)
    {
//        dismiss(animated: true, completion: nil)
        print("呼叫了離開方法")
    }
    
    //接收ReviewViewController傳過來的資料
    @IBAction func rateRestaurant(segue:UIStoryboardSegue)
    {
        dismiss(animated: true)
        {
            
            if let rating = segue.identifier
            {
                self.restaurant.rating = rating
                self.headerView.ratingImageView.image = UIImage(named: rating)
            }
            let scaleTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.headerView.ratingImageView.transform = scaleTransform
            self.headerView.ratingImageView.alpha = 0
            UIView.animate(withDuration: 1.5, delay: 0, options: [], animations: {
                self.headerView.ratingImageView.transform = .identity
                self.headerView.ratingImageView.alpha = 1
            }, completion: nil)
            
        }
        print(segue.identifier!)
        
    }

}
