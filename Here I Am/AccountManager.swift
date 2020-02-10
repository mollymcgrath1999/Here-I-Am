import CoreLocation
import Firebase

class AccountManager {
    
    
    
    
    func markAs(available: Bool, uid: String) {
        let ref = Firestore.firestore().collection("users").document(uid)
        ref.setData(["available": available], merge: true)
    }
  
    
    func updateLocation(uid: String, coordinate: CLLocation) {
        
    }
    
    
    
    
    
}
