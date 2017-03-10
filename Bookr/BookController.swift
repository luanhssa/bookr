//
//  BookController.swift
//  Bookr
//
//  Created by Student on 3/7/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import UIKit

class BookController : UIViewController {

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
    
    var isbn: Int32{
        if let text = isbnInserir.text{
            if let int32 = Int32(text){
                return int32
            }
        }
        return 0
    }
    
    var year: Int16{
        if let text = anoInserir.text{
            if let int16 = Int16(text){
                return int16
            }
        }
        return 0
    }
    
    var pages: Int16{
        if let text = paginasInserir.text{
            if let int16 = Int16(text){
                return int16
            }
        }
        return 0
    }
    
    var volume: Int16{
        if let text = volumeInserir.text{
            if let int16 = Int16(text){
                return int16
            }
        }
        return 0
    }
    
    @IBAction func cadastrarLivro(_ sender: Any) {
        book = Book()
        book?.name = tituloInserir.text!
        book?.isbn = self.isbn
        book?.year = self.year
        book?.pages = self.pages
        book?.volume = self.volume
        book?.author = autorInserir.text!
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Chamamos a view para forçar que a edição pare
        self.view.endEditing(true)
    }
    
    
}
