//
//  User.swift
//  ToDoList
//
//  Created by GBdev on 26/09/23.
//

import Foundation
struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
