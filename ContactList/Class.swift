//
//  Class.swift
//  ContactList
//
//  Created by Егор on 27.07.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    private let names = ["Evgenii", "Andrey", "Igor", "Oleg"]
    private let surnames = ["Belousov", "Gregoriev", "Razumovsky", "Zaikin"]
    private let phones = ["451435235", "451435132", "2344345", "09865451"]
    private let emails = ["haefjbv@mail.ru", "fahsdgfja@yandex.ru", "shabksf@swiftbook.ru", "sdhjfbsj@google.com"]

    func getPersonList() -> [Person] {
        var list: [Person] = []

        let shuffledNames = names.shuffled()
        let shuffledSurnames = surnames.shuffled()
        let shuffledPhones = phones.shuffled()
        let shuffledEmals = emails.shuffled()

        for index in 0..<4 {
            let person = Person(
                name: shuffledNames[index],
                surname: shuffledSurnames[index],
                phone: shuffledPhones[index],
                email: shuffledEmals[index]
            )
            list.append(person)
        }

        return list
    }
}


