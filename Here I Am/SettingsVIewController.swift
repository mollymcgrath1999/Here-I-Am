import UIKit

class SettingsViewController: UIViewController {
    
    let manager = AccountManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.markAs(available: false, uid: "XMJ4cZqnHppLG5Ph4HxU")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        manager.markAs(available: true, uid: "XMJ4cZqnHppLG5Ph4HxU")

        
    }
    
}
