//
//  RestaurantDetailMapCell.swift
//  Appcoda-FoodPin-Swift4.2-Ios12
//
//  Created by 陳裕銘 on 2019/3/16.
//  Copyright © 2019 yuming. All rights reserved.
//

import UIKit
import MapKit
class RestaurantDetailMapCell: UITableViewCell {

    @IBOutlet weak var mapView: MKMapView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configure(location:String)
    {//取得位置
        let geoCoder = CLGeocoder()
        print(location)
        geoCoder.geocodeAddressString(location) { (placemarks, error) in
            if let error = error
            {
                print(error.localizedDescription)
                return
            }
            if let placemarks = placemarks
            {
                //取得第一個地理座標
                let placemark = placemarks[0]
                
                //加上標注
                let annotation = MKPointAnnotation()
                
                if let location = placemark.location
                {
                    annotation.coordinate = location.coordinate
                    self.mapView.addAnnotation(annotation)
                    
                    let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 250, longitudinalMeters: 250)
                    self.mapView.setRegion(region, animated: false)
                }
            }
        }
    }
    
    
}
