//
//  PersonViewModel.swift
//  Swift-MVVM-Playground
//
//  Created by Gawah Chan on 16/08/2023.
//

import SwiftUI

class PersonViewModel: ObservableObject {
    @Published var people: [Person] = []
    
    init() {
        addPeople()
    }
    
    func addPeople() {
        people = peopleData
    }
    func shuffleOrder() {
        people.shuffle()
    }
    
    func reverseOrder() {
        people.reverse()
    }
    
    func removeLastPerson() {
        people.removeLast()
    }
    
    func removeFirstPerson() {
        people.removeFirst()
    }
}

let peopleData = [
    Person(name: "Jon Snow", email: "jon@email.com", phoneNumber: "999"),
    Person(name: "Robert Baratheon", email: "RobertB@email.com", phoneNumber: "123"),
    Person(name: "Cersei Lannister", email: "Cersei@email.com", phoneNumber: "456"),
    Person(name: "Daenerys Targaryen", email: "Daenerys@email.com", phoneNumber: "789"),
    Person(name: "Samwell Tarley", email: "same@email.com", phoneNumber: "101"),
]
