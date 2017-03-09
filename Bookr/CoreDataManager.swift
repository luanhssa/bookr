import Foundation
import CoreData

class CoreDataManager {
    
    // MARK: - Core Data stack
    
    static var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "Bookr")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
            
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    static func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    
    static func getContext() -> NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    static func insert(_ obj: NSManagedObject) -> Bool {
        var result = false
        
        CoreDataManager.getContext().insert(obj)
        
        do {
            try CoreDataManager.getContext().save()
            result = true
        } catch let error {
            print("Erro ao salva: \(error)")
        }
        
        return result
    }
    
    
    static func delete(_ obj: NSManagedObject) -> Bool {
        var result = false
        
        CoreDataManager.getContext().delete(obj)
        
        do {
            try CoreDataManager.getContext().save()
            result = true
        } catch let error {
            print("Erro ao salva: \(error)")
        }
        
        return result
    }
    
}
