//
//  ListTableViewModel.swift
//  PersonsList
//
//  Created by Максим Горячкин on 03.04.2022.
//

import Foundation

protocol ListTableViewModelProtocol {
    var persons: [Person] { get }
    
    func fetchPersons(completion: @escaping() -> Void)
    func numberOfRows() -> Int
    func cellViewModel(at indexPath: IndexPath) -> ListCellViewModel
}

class ListTableViewModel: ListTableViewModelProtocol {
    var persons: [Person] = []
    
    func fetchPersons(completion: @escaping () -> Void) {
        NetworkManager.shared.fetchData(from: URLAdress.adress.rawValue) { data in
            self.persons = data.results
            completion()
        }
    }
    
    func numberOfRows() -> Int {
        persons.count
    }
    
    func cellViewModel(at indexPath: IndexPath) -> ListCellViewModel {
        let person = persons[indexPath.row]
        return ListCellViewModel(person: person)
    }
    
    
}
