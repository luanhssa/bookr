//
//  BookDAO.swift
//  Bookr
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import Foundation
import CoreData

class BookDAO {
    
    // insert
    static func insert(book: Book) -> Bool {
        return CoreDataManager.insert(book)
    }
    
    // delete
    static func delete(user: User) -> Bool {
        return CoreDataManager.delete(user)
    }
    
    

}
