//
//  NumberListView.swift
//  ContacoList
//
//  Created by Tim Halli on 27/12/2023.
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts, id: \.self) { contact in
                    Section(header: Text(contact.fullName)) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(Color.blue)
                            Text(contact.phoneNumber)
                        }
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(Color.blue)
                            Text(contact.email)
                        }
                    }
                    .textCase(.none)
                }
                .navigationBarTitle("Contact List")
            }
        }
    }
}

