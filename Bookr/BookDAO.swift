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
    static func insert(user: User) -> Bool {
        return CoreDataManager.insert(user)
    }
    
    // delete
    static func delete(user: User) -> Bool {
        return CoreDataManager.delete(user)
    }
    
    // search
    static func searchAll() -> [Book] {

        var books = [Book]()
        
        let request: NSFetchRequest<Book> = Book.fetchRequest()
        
        request.sortDescriptors = [
            NSSortDescriptor.init(key: "category", ascending: true)
        ]
        
        do {
            try books = CoreDataManager.getContext().fetch(request)
        } catch let error {
            print("Erro: \(error)")
        }
 
        
        return books
    }

}
