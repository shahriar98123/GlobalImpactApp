//
//  ViewController.swift
//  GlobalImpactApp
//
//  Created by Shams, Shahriar on 1/10/19.
//  Copyright © 2019 CTEC. All rights reserved.
//

import UIKit
import MapKit

public class ImpactViewController: UIViewController
{
    
    @IBOutlet weak var UIButton: UIButton!
    @IBOutlet weak var MKMapView: MKMapView!
    @IBOutlet weak var UIImageView: UIImageView!
    

    public override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func Button(_ sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: 39.913818, longitude: 116.363625)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 1.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        MKMapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }
    

}
extension MKMapView
{
    public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options: UIView.AnimationOptions.curveEaseIn, animations:
        { self.setRegion(zoomRegion, animated: true) }, completion: nil)
    }
}



