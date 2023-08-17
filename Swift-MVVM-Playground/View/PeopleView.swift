//
//  ContentView.swift
//  Swift-MVVM-Playground
//
//  Created by Gawah Chan on 16/08/2023.
//

import SwiftUI

struct PeopleView: View {
    @ObservedObject var viewModel = PersonViewModel()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                ForEach(viewModel.people) { person in
                    HStack {
                        Text(person.name)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            Text(person.phoneNumber)
                            Text(person.email)
                        }
                    }
                    .frame(height: 80)
                    .padding(12)
                }
            }
            Menu("Menu".uppercased()) {
                Button("Reverse", action: {viewModel.reverseOrder()})
                Button("Shuffle", action: {viewModel.shuffleOrder()})
                Button("Remove last", action: {viewModel.removeLastPerson()})
                Button("Remove first", action: {viewModel.removeFirstPerson()})
            }
            .padding()
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
