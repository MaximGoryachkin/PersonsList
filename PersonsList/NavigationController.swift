//
//  NavigationController.swift
//  PersonsList
//
//  Created by Максим Горячкин on 23.03.2022.
//

import Foundation
import UIKit

class NavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        let navigationBarAppearance = UINavigationBarAppearance()
//        navigationBarAppearance.titleTextAttributes = [.backgroundColor: UIColor.systemGreen]
        navigationBarAppearance.titleTextAttributes = [.backgroundColor: UIColor.red]
        navigationBarAppearance.backgroundColor = .systemGray
        
        
//        navigationBar.scrollEdgeAppearance = navigationBarAppearance
//        navigationBar.standardAppearance = navigationBarAppearance
//        navigationBar.compactAppearance = navigationBarAppearance
        navigationBar.compactScrollEdgeAppearance = navigationBarAppearance
    }
}
