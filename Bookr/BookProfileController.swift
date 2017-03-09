//
//  PerfilController.swift
//  Bookr
//
//  Created by Kamilla Kemilly Tenorio Alves dos Santos on 3/7/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import UIKit

class BookProfileController: UIViewController{
    
    var passedValue = Book()
    
    @IBOutlet weak var titulo: UILabel!
    
    @IBOutlet weak var autor: UILabel!
    
    @IBOutlet weak var paginas: UILabel!
    
    @IBOutlet weak var isbn: UILabel!
    
    @IBOutlet weak var editora: UILabel!
    
    @IBOutlet weak var edicao: UILabel!
    
    @IBOutlet weak var ano: UILabel!
    
    @IBOutlet weak var categoria: UILabel!
    
    @IBOutlet weak var sinopse: UILabel!
    
    @IBAction func doacao(_ sender: Any) {
        
        
    }
//    var isbn: Int32{
//        if let text = isbnInserir.text{
//            if let int32 = Int32(text){
//                return int32
//            }
//        }
//        return 0
//    }
//    
//    var year: Int16{
//        if let text = ano.text{
//            if let int16 = Int16(text){
//                return int16
//            }
//        }
//        return 0
//    }
//    
//    var paginas: Int16{
//        if let text = pages.text{
//            if let int16 = Int16(text){
//                return int16
//            }
//        }
//        return 0
//    }
//    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        autor.text = passedValue.author
        titulo.text = passedValue.name
        paginas.text = String(Int(passedValue.pages))
        //isbn.text = passedValue.isbn
        editora.text = passedValue.publisher
        edicao.text = passedValue.editor
        ano.text = String(Int(passedValue.year))
        categoria.text = passedValue.category
        sinopse.text = passedValue.sinopse
        
    }

    
    
}
