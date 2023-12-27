//
//  ContentView.swift
//  ContacoList
//
//  Created by Tim Halli on 27/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            HomeScreenView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacnts")
                }
            
            ContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Contacnts")
                }
        }
    }
}
#Preview {
    ContentView()
}
