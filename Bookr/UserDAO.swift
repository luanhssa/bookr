//
//  UserDAO.swift
//  Bookr
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import Foundation
import CoreData

class UserDAO {
    
    // insert
    static func insert(user: User) -> Bool {
        return CoreDataManager.insert(user)
    }
    
    // delete
    static func delete(user: User) -> Bool {
        return CoreDataManager.delete(user)
    }
    
    // search
    
    // alter
    static func alter(user: User) -> Bool {
        //TODO
        return false
    }
}
