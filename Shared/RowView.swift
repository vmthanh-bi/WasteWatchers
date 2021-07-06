//
//  RowView.swift
//  WasteWatchers
//
//  Created by Tony Vu on 3/4/21.
//

import SwiftUI

struct RowView: View {

    @Binding var checklistItem: ChecklistItem

    var body: some View {
        NavigationLink(destination: EditChecklistItemView(checklistItem: $checklistItem)) {
        HStack {
          Text(checklistItem.name)
          Spacer()
          Text(checklistItem.isChecked ? "✅" : "🔲")
        }
        .background(Color(UIColor.systemBackground))
      }
    }
}

struct RowView_Previews: PreviewProvider {
  static var previews: some View {
    RowView(checklistItem: .constant(ChecklistItem(name: "Sample item")))
  }
}

