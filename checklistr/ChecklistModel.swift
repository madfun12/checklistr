//
//  ChecklistModel.swift
//  checklistr
//
//  Created by Madison Funderburk on 3/3/24.
//

import Foundation

struct ChecklistItem: Identifiable {
    let id = UUID()
    var name: String
    var isComplete: Bool = false
}

struct Checklist: Identifiable {
    let id = UUID()
    var name: String
    var items: [ChecklistItem]
}
