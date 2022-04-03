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
        
        
        navigationBar.scrollEdgeAppearance = navigationBarAppearance  // внешний вид контроллера в обычном состоянии без прокрутки (таблица не заходит за контроллер)
//        navigationBar.standardAppearance = navigationBarAppearance // внешний вид контроллера в состоянии прокрутки (таблица заходит за контроллер)
//        navigationBar.compactScrollEdgeAppearance = navigationBarAppearance // внешний вид контроллера в обычном состоянии без прокрутки (таблица не заходит за контроллер) только в альбомной ориентации
//        navigationBar.compactAppearance = navigationBarAppearance // внешний вид контроллера в состоянии прокрутки (таблица заходит за контроллер) только в альбомной ориентации
    }
}
