



import UIKit
import MapKit
import CoreLocation


class MapKitViewController: UIViewController  {
    
    @IBOutlet weak var MapKit: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled(){
            // setup our location manager
            
        } else {
            //
        }
        
        
    }
    
    
}


extension MKMapView: CLLocationManagerDelegate {
    
    public func locationManager(_ _manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
}

