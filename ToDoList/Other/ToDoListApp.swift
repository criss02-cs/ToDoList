//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by GBdev on 26/09/23.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
