//
//  HomeViewController.swift
//  PasswordCustomRuleTutorial
//
//  Created by Leonardo on 29/11/2021.
//

import UIKit
import CompanyCoordinatorKit

public class HomeViewController: UIViewController {

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
        view.backgroundColor = .lightGray
        title = "Home View Controller"
    }
}
