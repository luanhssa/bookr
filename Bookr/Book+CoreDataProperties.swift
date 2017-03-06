//
//  Book+CoreDataProperties.swift
//  Bookr
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import Foundation
import CoreData


extension Book {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book");
    }

    @NSManaged public var name: String?
    @NSManaged public var isbn: Int32
    @NSManaged public var year: Int16
    @NSManaged public var sinopse: String?
    @NSManaged public var pages: Int16
    @NSManaged public var author: String?
    @NSManaged public var editor: String?
    @NSManaged public var publisher: String?
    @NSManaged public var volume: Int16
    @NSManaged public var owner: User?
    @NSManaged public var borrowedTo: User?

}
