//
//  ChecklistCreation.swift
//  checklistr
//
//  Created by Madison Funderburk on 3/3/24.
//

import SwiftUI

struct ChecklistCreation: View {
    @State private var name: String = ""
    var body: some View {
        VStack{
            TextField("Checklist name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Add Checklist"){
                createCheckList()
            }
        }
    }
    
    func createCheckList(){
        let checkList = Checklist(name: name, items: [])
        
        print(checkList)
    }
}



struct ChecklistCreation_Previews: PreviewProvider {
    static var previews: some View {
        ChecklistCreation()
    }
}
