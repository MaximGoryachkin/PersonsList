//
//  ViewController.swift
//  PersonsList
//
//  Created by Максим Горячкин on 22.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let view = UIButton(type: .system)
        view.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.setTitle("Tap me!", for: .normal)
        return view
    }()
    
    private lazy var label: UILabel = {
        let view = UILabel()
        view.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        view.text = "Label"
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(button)
        view.addSubview(label)
        button.addTarget(self, action: #selector(fetchData), for: .touchUpInside)
    }

    @objc func fetchData() {
        NetworkManager.shared.fetchData(from: URLAdress.adress.rawValue) { data in
            self.label.text = data.results.first?.name.first ?? "not text"
            print(data.results.first?.name.first ?? "123")
        }
    }

}

