//
//  User+CoreDataClass.swift
//  Bookr
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import Foundation
import CoreData


public class User: NSManagedObject {

    convenience init() {
        let context = CoreDataManager.getContext()
        
        let entity = NSEntityDescription.entity(forEntityName: "User", in: context)
        
        
        self.init(entity: entity!, insertInto: context)
    }
    
}
