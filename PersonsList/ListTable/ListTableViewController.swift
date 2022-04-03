//
//  ListViewTableViewController.swift
//  PersonsList
//
//  Created by Максим Горячкин on 23.03.2022.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    private var viewModel: ListTableViewModelProtocol! {
        didSet {
            viewModel.fetchPersons {
                self.tableView.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ListTableViewModel()
        tableView.delegate = self
        tableView.register(UINib(nibName: String(describing: ListTableViewCell.self), bundle: nil), forCellReuseIdentifier: "cell")
        navigationItem.title = "Hello!"
//        navigationController?.hidesBarsOnTap = true
//        navigationController?.hidesBarsOnSwipe = true
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
        cell.viewModel = viewModel.cellViewModel(at: indexPath)
        return cell
    }
    
}
