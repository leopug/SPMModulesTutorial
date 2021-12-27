import UIKit
import CompanyCoordinatorKit

public class LoginViewController: UIViewController {

    private let passwordTextField = UITextField()
    private let loginTextField = UITextField()
    private let loginButton = UIButton()
    private let coordinator: AbstractCoordinator
    
    public init(coordinator: AbstractCoordinator) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Login Screen"
        
        
        configureLoginTextField()
        configurePasswordTextField()
        configureLoginButton()
    }
    
    private func configureLoginTextField() {
        view.addSubview(loginTextField)
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.textContentType = .username
        loginTextField.layer.borderColor = UIColor.gray.cgColor
        loginTextField.layer.borderWidth = 1
        loginTextField.layer.cornerRadius = 10
        loginTextField.placeholder = "Login"
        loginTextField.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0)
        
        NSLayoutConstraint.activate([
            loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            loginTextField.widthAnchor.constraint(equalToConstant: 200),
            loginTextField.heightAnchor.constraint(equalToConstant: 30),

        ])
    }
    
    private func configurePasswordTextField() {
        view.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.layer.borderColor = UIColor.gray.cgColor
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.placeholder = "Password"
        passwordTextField.textContentType = .password
        passwordTextField.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0)
        
        NSLayoutConstraint.activate([
            passwordTextField.widthAnchor.constraint(equalToConstant: 200),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30),
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 20),
            passwordTextField.centerXAnchor.constraint(equalTo: loginTextField.centerXAnchor)
        ])
    }
    
    private func configureLoginButton() {
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.configuration = UIButton.Configuration.filled()
        loginButton.addAction(UIAction(handler: { [weak self] action in
            self?.coordinator.goToHomeScreen()
        }), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20)
        ])
    }
}
