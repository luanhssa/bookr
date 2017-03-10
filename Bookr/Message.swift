//
//  Message.swift
//  Bookr
//
//  Created by Kamilla Kemilly Tenorio Alves dos Santos on 3/9/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import Foundation

class Message {
    
    let fromUser: User
    let toUser: User
    let title: String
    let subtitle: String
    let image: String?
    
    init(fromUser: User, toUser: User,_ title: String,_ subtitle: String,_ image: String?) {
        self.fromUser = fromUser
        self.toUser = toUser
        self.title = title
        self.subtitle = subtitle
        self.image = image
    }
    
}

class MessageDAO {
    
    static func getList() -> [Message] {
        return [
            Message(fromUser: UserProfile.user, toUser: UserProfile.user, UserProfile.user.name, "Harry Potter e a Pedra Filosofal", "kkt")
        ]
    }
}
