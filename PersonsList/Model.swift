//
//  Model.swift
//  PersonsList
//
//  Created by Максим Горячкин on 22.03.2022.
//

import Foundation

enum URLAdress: String {
    case adress = "https://randomuser.me/api/"
}

struct FetchData: Decodable {
    let results: [Person]
    let info: Info
}

struct Person: Decodable {
    let gender: String
    let name: Name
    let location: Location
    let email: String
    let login: Login
    let dob: DateOfBirth
    let registered: Register
    let phone: String
    let cell: String
    let id: PersonID
    let picture: Picture
    let nat: String
}

struct Name: Decodable {
    let title: String
    let first: String
    let last: String
}

struct Location: Decodable {
    let street: Street
    let city: String
    let state: String
    let country: String
    let postcode: Int
    let coordinates: Coordinates
    let timezone: Timezone
}

struct Street: Decodable {
    let number: Int
    let name: String
}

struct Coordinates: Decodable {
    let latitude: String
    let longitude: String
}

struct Timezone: Decodable {
    let offset: String
    let description: String
}

struct Login: Decodable {
    let uuid: String
    let username: String
    let password: String
    let salt: String
    let md5: String
    let sha1: String
    let sha256: String
}

struct DateOfBirth: Decodable {
    let date: String
    let age: Int
}

struct Register: Decodable {
    let date: String
    let age: Int
}

struct PersonID: Decodable {
    let name: String
    let value: String
}

struct Picture: Decodable {
    let large: String
    let medium: String
    let thumbnail: String
}

struct Info: Decodable {
    let seed: String
    let results: Int
    let page: Int
    let version: String
}
