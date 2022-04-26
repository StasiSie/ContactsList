//
//  Models.swift
//  ContactsList
//
//  Created by Игорь Богданов on 26.04.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let emailAdress: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

class DataManager {
    let names = ["John","Erick","Victoria","Eva","Andrew"]
    let surnames = ["Smith","Johnson","Muller","Jackson","Bergsteiner"]
    let phoneNumbers = ["792111111111","79212222222","79213333333","79214444444","79215555555"]
    let emailAdresses = ["111@gmail.com","222@gmail.com","333@gmail.com","444@gmail.com","555@gmail.com"]
}

extension Person {
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        let data = DataManager.init()
        let name = data.names
        let surname = data.surnames
        let emails = data.emailAdresses
        let phones = data.phoneNumbers
        
        let iterations = min(name.count, surname.count, emails.count, phones.count)
        
        for iteration in 0..<iterations {
           let person = Person.init(
                name: name[iteration],
                surname: surname[iteration],
                phoneNumber: phones[iteration],
                emailAdress: emails[iteration])
            persons.append(person)
        }
        return persons
    }
}
