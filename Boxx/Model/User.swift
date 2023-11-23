//
//  User.swift
//  Boxx
//
//  Created by Nikita Larin on 16.11.2023.
//

import Foundation
struct User: Identifiable, Codable{
    let id: String
    let fullname: String
    let login: String
    let email: String
    
    var initials: String{
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname) {
            formatter.style = .abbreviated
            return formatter.string (from: components)
        }
        
        return ""
        
    }
}
    extension User {
        static var TEST_USER = User(id: NSUUID().uuidString, fullname:"Никита Ларин",login:"Slam", email: "test@mail.ru")
}
