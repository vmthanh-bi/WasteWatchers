//
//  ChecklistItem.swift
//  WasteWatchers
//
//  Created by Tony Vu on 3/4/21.
//
import Foundation

struct ChecklistItem: Identifiable {
  let id = UUID()
  var name: String
  var isChecked: Bool = false
}
