import Foundation
import UIKit

public protocol AbstractCoordinator: AnyObject {    
    func goToHomeScreen()
    func start() -> UIViewController
}
