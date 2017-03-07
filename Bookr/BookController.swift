//
//  BookController.swift
//  Bookr
//
//  Created by Student on 3/7/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import UIKit

class BookController : UIViewController {

    //@NSManaged public var name: String?
    //@NSManaged public var isbn: Int32
    //@NSManaged public var year: Int16
    //@NSManaged public var sinopse: String?
    //@NSManaged public var pages: Int16
    //@NSManaged public var author: String?
    //@NSManaged public var editor: String?
    //@NSManaged public var publisher: String?
    //@NSManaged public var volume: Int16
    //@NSManaged public var owner: User?
    //@NSManaged public var borrowedTo: User?
    //@NSManaged public var available: Bool
    //@NSManaged public var category: String?
        
    var book: Book?
    var listaBooks: [Book]?
    
    @IBOutlet weak var tituloInserir: UITextField!
    
    @IBOutlet weak var autorInserir: UITextField!
    
    @IBOutlet weak var isbnInserir: UITextField!
    
    @IBOutlet weak var paginasInserir: UITextField!
    
    @IBOutlet weak var editoraInserir: UITextField!
    
    @IBOutlet weak var edicaoInserir: UITextField!
    
    @IBOutlet weak var anoInserir: UITextField!
    
    @IBOutlet weak var volumeInserir: UITextField!
    
    @IBOutlet weak var categoriaInserir: UITextField!
    
    @IBOutlet weak var sinopseInserir: UITextField!
    
    @IBAction func cadastrarLivro(_ sender: Any) {
        book = Book()
        book?.name = tituloInserir.text
        //book?.isbn = isbnInserir.
        book?.author = autorInserir.text
        book?.editor = editoraInserir.text
        book?.publisher = editoraInserir.text
        book?.sinopse = sinopseInserir.text
        book?.category = categoriaInserir.text
        
    
        if BookDAO.insert(book: book!) {
            let alert = UIAlertController(title: "Cadastrado", message: "Seu livro foi cadastrado com sucesso!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
}
