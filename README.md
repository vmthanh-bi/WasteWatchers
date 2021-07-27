
<!-- PROJECT START -->
# WasteWatchers
Lawrence University Capstone project: iOS app to help monitor food items inside your fridge.

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#the-process">The Process</a>
      <ul>
        <li><a href="#creating-a-list">Creating a list</a></li>
        <li><a href="#implementing-functions">Implementing functions</a></li>
        <li><a href="#creating-items">Creating items</a></li>
        <li><a href="#design-pattern">Design Pattern</a></li>
        <li><a href="#user-interface">User interface</a></li>
        <li><a href="#binding-properties-and-extensions">Binding properties and extensions</a></li>
        <li><a href="#monitoring-the-lifecycle">Monitoring the lifecycle</a></li>
        <li><a href="#polishing-and-stylistic-changes">Polishing and stylistic changes</a></li>
      </ul>
    </li>
    <li><a href="#the-process">Key takeaways</a>
      <ul>
        <li><a href="#app-structure">App structure</a></li>
        <li><a href="#glitches">Glitches</a></li>
        <li><a href="#dealing-with-swiftui">Dealing with SwiftUI</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#help">Help</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About the project

Whether it is for one person or a family of six, many can find it tricky to keep track of what goes in and out of their fridge.
Such an issue sparks a percentage that is surprising to most: as much as 43% of food in the fridge ends up in the trash! 

A study led by Brian Roe, a professor from Ohio State University, looks to reveal the dark secret behind the fridge doors of an American household.
When the participants of a survey were asked how much of their meat did they expect to consume, they confidently claimed that they would eat 97% of it, 
yet in reality it was only about half. Similarly, they would claim to have consumed 94% of their vegetables, but statitically would really just have 44%.
Additionally, many American households expect to eat 71% of their fruit and 84% of their dairy. Unfortunately, the reality shows only a consumption rate of
40% for the former and 42% for the latter. 

This terrible behaviour arises due to a multitude of things, some of them being our own food-related habits and food label misconceptions. Our fridge 
ultimately serves as a guilt-alleviation mechanism, where the chaos and lack of organisation in our lives reflects our common behaviour of tossing our leftovers 
away and hoping that they eventually disappear. Evidently, this is an issue that deserves to be addressed and should most definitely given more attention.

### Meet WasteWatchers!

**WasteWatchers** is a dietary and environmentally focused app to tackle this exact issue.

Dietary and environmental app

Monitors food storage
  How long items are stored for
  Freeze items to stop
  
Interactive UI
  Enables editing of list with gestures and items
  
Saves and loads content into internal storage

Functions in the background

<!-- THE PROCESS -->
## The Process

### Creating a list
Moving from static to dynamic lists
  Limitations of lists

Understanding arrays in SwiftUI
  Iteration through data

### Implementing functions
Removing items from list
  Built-in “swipe to delete”
  
Moving list items
  “Edit mode”
    Reveals options for each item
  Creating move handle 

### Creating items
Creating properties of each item
  UUID
    Universally unique identifier creates codes that can be referenced individually.
  isChecked
    Boolean to toggle and untoggle freezing
  Date()
    Determines date and time of creating object

### Design Pattern
So far, all of the code has been accumulated in a single file.
  More functions = more complexity
  
Programmers usually divide their code into these three categories:
1. Storing and manipulating data
2. Displaying information to user
3. Responding to user input

Also known as the Model-View-Controller (MVC) pattern
  Model
    Contains data
  View
    Visual of the app
    Shows data to user
  Controller
    Connects model to view
    Listens to view, sends to model, updates response back into views
    
SwiftUI’s design pattern
  A new form of an MVC pattern more focused on user interface.
  Model - View - ViewModel (MVVM)
    Model and View are standard
    ViewModel
      Gives View the data and function of Model
      Notifies any user interactions to ViewModel, updates model, and sends data back to ViewModel, which is in sync with View
      
WasteWatchers design pattern
  Models
    Checklist
    ChecklistItem
  View + ViewModels
    ChecklistView
    RowView
    EditChecklistItemView
    NewChecklistItemView

### User interface
Positioning functional buttons

Implementing a sheet when adding item
  NewItemView.swift
  Populates a quick textfield and button
  Add does not turn on until name is entered
  Easy swipe down gesture

Incorporating edit screen
  EditView.swift
  Activates when an item in list is tapped
    Fixing touch deadzone to work for the entire row
  Shows toggle for “Freeze”, which pauses and resumes stopwatch
  
Adding timer to every item row
  RowView.swift
  Counts, in days, how long each item has stayed in the fridge
  Will be paused by toggling “Freeze”

### Binding properties and extensions
Edit screen creates a new window
  This view obtains a copy of list items from previous window
  Is not connected to the other window
    Unless list items are given @Binding property
  Lot of formatting change
  
Although it worked for every item variable, it does not affect items into a For loop.
  raywenderlich.com provides books, tutorials and forums on app development
  Extensions for @Binding that allow use inside For loops

### Monitoring the lifecycle
We have an app that creates, updates and deletes items

Needs to be able to save and load data
  When is the app active and when is it inactive
    Turning off app
    Entering background and foreground state
  When should the app load data
  Keeping the stopwatch working when app is not turned off

IOS Notification Center
  Internal messaging system
  Lets different parts of apps to communicate with each other
    Using a method to listen to the IOS notification center
    Notifies closing and opening the app
    Notifies entering foreground or background
  Find directory to save the files


### Polishing and stylistic changes
Polishing
  Fixing highlight of the rows
  Edit item window did not align the text box and button properly
  
Adding icons for the app

Incorporating a launch screen

Custom Navigation bar

Wave shape

<!-- KEY TAKEAWAYS -->
## Key takeaways

### App structure
Organisation allowed for more efficient progress and work

Deeper understanding of program
  Knowledge of where each part of the program belongs
  Easier to build on top of the code
  
Understanding of how SwiftUI works differently
  Explanation of ViewModels
  Helps focusing on the front-end part of the program a lot more

### Glitches
Fallbacks of SwiftUI
  Relatively new platform
  Many small issues arise constantly

Simulator Glitch: Tapping same item twice would freeze the list
  No sign of issues in the code
  With research online
    Common issue

### Dealing with SwiftUI
Huge rising popularity
  Increasing number of content produced online
  Textbook, guides, code
    Extension from raywenderlich.com
    Finding data directory
  Forums
    Finding common issue

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

Things you need to use the software.
* MacOS
* Xcode

### Installation

Clone this repo.
   ```sh
   git clone https://github.com/vmthanh-bi/WasteWatchers.git
   ```

<!-- Help -->
## Help

See the [open issues](https://github.com/vmthanh-bi/WasteWatchers/issues) for a list of proposed features (and known issues).

<!-- CONTACT -->
## Contact

Tony Vu - [@vmthanh.bi](https://github.com/vmthanh-bi) - vmthanh.bi@gmail.com

Project Link: [https://github.com/vmthanh-bi/WasteWatchers](https://github.com/vmthanh-bi/WasteWatchers)

<!-- MARKDOWN LINKS & IMAGES -->

