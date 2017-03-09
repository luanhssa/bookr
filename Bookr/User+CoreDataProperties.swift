//
//  User+CoreDataProperties.swift
//  Bookr
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User");
    }

    @NSManaged public var name: String
    @NSManaged public var email: String
    @NSManaged public var lastName: String
    @NSManaged public var age: Int16
    @NSManaged public var senha: String?
    @NSManaged public var image: String?
    @NSManaged public var hasManyBooks: NSSet?
    @NSManaged public var booksBorrowed: NSSet?

}

// MARK: Generated accessors for hasManyBooks
extension User {

    @objc(addHasManyBooksObject:)
    @NSManaged public func addToHasManyBooks(_ value: Book)

    @objc(removeHasManyBooksObject:)
    @NSManaged public func removeFromHasManyBooks(_ value: Book)

    @objc(addHasManyBooks:)
    @NSManaged public func addToHasManyBooks(_ values: NSSet)

    @objc(removeHasManyBooks:)
    @NSManaged public func removeFromHasManyBooks(_ values: NSSet)

}

// MARK: Generated accessors for booksBorrowed
extension User {

    @objc(addBooksBorrowedObject:)
    @NSManaged public func addToBooksBorrowed(_ value: Book)

    @objc(removeBooksBorrowedObject:)
    @NSManaged public func removeFromBooksBorrowed(_ value: Book)

    @objc(addBooksBorrowed:)
    @NSManaged public func addToBooksBorrowed(_ values: NSSet)

    @objc(removeBooksBorrowed:)
    @NSManaged public func removeFromBooksBorrowed(_ values: NSSet)

}
