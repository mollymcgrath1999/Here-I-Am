



import UIKit
import MapKit
import CoreLocation


class MapKitViewController: UIViewController  {
    
    @IBOutlet weak var MapKit: MKMapView!
    
  fileprivate  let locationManager = CLLocationManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func setupLocoationManager() {
     
        locationManager.delegate = self as? CLLocationManagerDelegate
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        
    }
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled(){
          setupLocoationManager()
            
        } else {
            // Show alert letting the user know they have to turn this on.
        }
        
        
    }
    func checkLocationAuthorization() {
        if CLLocationManager.locationServicesEnabled(){
            setupLocoationManager()
            checkLocationAuthorization()
            
        } else {
            
            //Show alert letting the user know they have to turn this on.
        }
            
            
        }
    
}
    
func checkLocationAuthorization() {
    
    switch CLLocationManager.authorizationStatus() {
    case.authorizedWhenInUse: break
        // Do Map stuff
        
    case.denied: break
    // Show alert instructing them how to turn on permissions
        
    case.notDetermined: break
        // Show alert instructing them to turn on permissions
        

    case .restricted: break
        // Show alert to tell the user what is happening 
        
    case .authorizedAlways: break
        // Do Map Stuff
    @unknown default:
        break
    }
    
    
    
}
    
    

    
    



extension MKMapView: CLLocationManagerDelegate {
    
    public func locationManager(_ _manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
}

