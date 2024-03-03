//
//  ContentView.swift
//  checklistr
//
//  Created by Madison Funderburk on 3/2/24.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @State private var isAuthenticated: Bool = false
    
    var body: some View {
        if isAuthenticated {
            MainContentView()
        } else {
            NavigationStack{
                LoginView(isAuthenticated: $isAuthenticated)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
