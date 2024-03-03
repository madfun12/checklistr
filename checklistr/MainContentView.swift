//
//  MainContentView.swift
//  checklistr
//
//  Created by Madison Funderburk on 3/3/24.
//

import SwiftUI

struct MainContentView: View {
    var body: some View {
        VStack{
            NavigationLink(destination: ChecklistCreation()){
                Text("Create a new checklist")
            }
            List(){
                Text("This is a checklist")
                Text("This is another checklist")
                Text("This is the last checklist")
            }
        }.navigationTitle("Home")
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
