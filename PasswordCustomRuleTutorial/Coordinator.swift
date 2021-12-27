import Foundation
import UIKit
import CompanyCoordinatorKit
import CompanyLoginKit
import CompanyHomeKit

class Coordinator: AbstractCoordinator {
    
    var navigationController: UINavigationController?

    func goToHomeScreen() {
        navigationController?.pushViewController(HomeViewController(coordinator: self), animated: true)
    }
    
    func start() -> UIViewController {
        self.navigationController = UINavigationController(rootViewController: LoginViewController(coordinator: self))
        
        return navigationController!
    }
}
