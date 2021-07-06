//
//  EditChecklistItemView.swift
//  WasteWatchers
//
//  Created by Tony Vu on 3/4/21.
//

import SwiftUI

struct EditChecklistItemView: View {

  // Properties
  // ==========

    @Binding var checklistItem: ChecklistItem

  // User interface content and layout
    var body: some View {
        Form {
            TextField("Name", text: $checklistItem.name)
            Toggle("Completed", isOn: $checklistItem.isChecked)
        }
    }

}


// Preview
// =======

struct EditChecklistItemView_Previews: PreviewProvider {
  static var previews: some View {
    EditChecklistItemView(checklistItem: .constant(ChecklistItem(name: "Sample item")))
  }
}


