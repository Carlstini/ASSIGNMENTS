// RegistrationViewController.swift

import UIKit

class RegistrationViewController: UIViewController {
    
  
    let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your username"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let registrationButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Register", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
     
        view.addSubview(usernameTextField)
        view.addSubview(registrationButton)
        view.addSubview(welcomeLabel)
        
        
        setupConstraints()
        
    
        registrationButton.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
    }
    
    //Button Action
    @objc private func registerButtonTapped() {
        if let username = usernameTextField.text, !username.isEmpty {
            showWelcomeScreen(username: username)
        }
    }
    
    // Function to Navigate to Welcome Screen
    private func showWelcomeScreen(username: String) {
        let welcomeViewController = WelcomeViewController(username: username)
        navigationController?.pushViewController(welcomeViewController, animated: true)
    }
    
    // Setup of Constraints
    private func setupConstraints() {
        
    }
}
