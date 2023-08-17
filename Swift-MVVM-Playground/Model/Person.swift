//
//  Person.swift
//  Swift-MVVM-Playground
//
//  Created by Gawah Chan on 16/08/2023.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var phoneNumber: String
}
