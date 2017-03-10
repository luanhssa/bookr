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
    
    @IBOutlet weak var imagem: UIImageView!
    
    @IBOutlet weak var titulo: UILabel!
    
    @IBOutlet weak var autor: UILabel!
    
    @IBOutlet weak var paginas: UILabel!
    
    @IBOutlet weak var isbn: UILabel!
    
    @IBOutlet weak var editora: UILabel!
    
    @IBOutlet weak var edicao: UILabel!
    
    @IBOutlet weak var ano: UILabel!
    
    @IBOutlet weak var volume: UILabel!
    
    @IBOutlet weak var categoria: UILabel!
    
    @IBOutlet weak var sinopse: UILabel!
    
    @IBAction func doacao(_ sender: Any) {
        
        
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        autor.text = passedValue.author
        titulo.text = passedValue.name
        paginas.text = String(Int(passedValue.pages))
        isbn.text = String(Int(passedValue.isbn))
        volume.text = String(Int(passedValue.volume))
        editora.text = passedValue.publisher
        edicao.text = passedValue.editor
        ano.text = String(Int(passedValue.year))
        categoria.text = passedValue.category
        sinopse.text = passedValue.sinopse
        
        if let image = passedValue.image {
            imagem.image = UIImage(named: image)
        }
    }

    
    
}
