#  Checklist Creation View
User will be prompted with the checklist name
For now, we can just create an empty checklist.

Checklist struct is in ChecklistModel.swift

So, we need to have the ChecklistCreationView ask the user for the name of the checklist, then on that page create the checklist

func createChecklist(){
    var checkList = Checklist(name: $checklistName, items: [])
    
    // send checkList to db
}
