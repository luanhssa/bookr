//
//  UserProfile.swift
//  Bookr
//
//  Created by Student on 3/8/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import Foundation

class UserProfile {
    
    static var user = User()
    
    init() {
        UserProfile.user = User()
    }
    
    static func getUser() -> User {
        return user
    }
    
    static func setUser(user: User) {
        UserProfile.user = user
    }
}
