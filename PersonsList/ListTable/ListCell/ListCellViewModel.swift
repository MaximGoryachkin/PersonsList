//
//  ListCellViewModel.swift
//  PersonsList
//
//  Created by Максим Горячкин on 03.04.2022.
//

import Foundation

protocol ListCellViewModelProtocol {
    var image: Data? { get }
    var firstName: String? { get }
    var lastName: String? { get }
    var country: String? { get }
    
    init(person: Person)
}

class ListCellViewModel: ListCellViewModelProtocol {
    var image: Data? {
        NetworkManager.shared.fetchImageData(from: person.picture.thumbnail)
    }
    
    var firstName: String? {
        person.name.first
    }
    
    var lastName: String? {
        person.name.last    }
    
    var country: String? {
        person.location.country
    }
    
    private let person: Person
    
    required init(person: Person) {
        self.person = person
    }
}
