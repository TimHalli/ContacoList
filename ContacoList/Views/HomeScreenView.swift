//
//  HomeScreenView.swift
//  ContacoList
//
//  Created by Tim Halli on 27/12/2023.
//

import SwiftUI

struct HomeScreenView: View {

    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts, id: \.self) { contact in
                NavigationLink(destination: ContactDetailView(person: contact)) {
                    Text(contact.fullName)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

