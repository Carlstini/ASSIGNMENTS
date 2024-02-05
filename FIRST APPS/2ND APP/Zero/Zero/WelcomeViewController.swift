// WelcomeViewController.swift

import UIKit

class WelcomeViewController: UIViewController {
    
    let username: String
    
    init(username: String) {
        self.username = username
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        displayWelcomeMessage()
    }
    
    private func displayWelcomeMessage() {
        let welcomeMessage = "Welcome, \(username)!"
        
        let label = UILabel()
        label.text = welcomeMessage
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        label.center = view.center
        
        view.addSubview(label)
    }
}

