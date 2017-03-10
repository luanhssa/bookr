//
//  LoginViewController.swift
//  Bookr
//
//  Created by Student on 3/8/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        let books = BookDAO.searchAll()
        
        for var book in books {
            BookDAO.delete(book: book)
        }
        
        
        self.populateDatabase()
        
    }
    
    func populateDatabase() {
        // Populates database
        var user = User()
        user.name = "Juliana"
        user.lastName = "Almeida"
        user.email = "kkt@gmail.com"
        user.age = 22
        UserDAO.insert(user: user)
        UserProfile.user = user
        
        var book = Book(entity: NSEntityDescription.entity(forEntityName: "Book", in: CoreDataManager.getContext())!, insertInto: CoreDataManager.getContext())
        book.author = "Agatha Christie"
        book.name = "A AVENTURA DO PUDIM DE NATAL"
        //book.isbn = Int32(9788525427304)
        book.available = true
        book.year = 1943
        book.volume = 2
        book.pages = 145
        book.category = "Aventura"
        book.publisher = "Nova Fronteira"
        book.image = "aventuras_pudim_natal"
        book.sinopse = "Publicado originalmente em 1960, este livro contém seis histórias escolhidas pela própria autora, que faz aqui uma homenagem às festas de Natal de sua infância."
        
        user.addToHasManyBooks(book)
        book.owner = user
        BookDAO.insert(book: book)
        
        book = Book(entity: NSEntityDescription.entity(forEntityName: "Book", in: CoreDataManager.getContext())!, insertInto: CoreDataManager.getContext())
        book.name = "A BELA ADORMECIDA"
        book.author = "Alice Eça"
        book.available = true
        book.year = 1949
        book.pages = 187
        book.volume = 2
        book.category = "Conto"
        book.publisher = "Caramelo"
        book.image = "a_bela_adormecida"
        book.sinopse = "A Bela Adormecida é um clássico conto de fadas cuja personagem principal é uma princesa que é enfeitiçada por uma maléfica feiticeira por um dedo picado pelo fuso de uma roca. para cair num sono profundo, até que um príncipe encantado a desperte com um beijo provindo de um amor verdadeiro."
        
        user.addToHasManyBooks(book)
        book.owner = user
        BookDAO.insert(book: book)
        
        user = User(entity: NSEntityDescription.entity(forEntityName: "User", in: CoreDataManager.getContext())!, insertInto: CoreDataManager.getContext())
        user.name = "Tiago"
        user.lastName = "Pereira"
        user.email = "tp@gmail.com"
        user.age = 42
        UserDAO.insert(user: user)
        
        book = Book(entity: NSEntityDescription.entity(forEntityName: "Book", in: CoreDataManager.getContext())!, insertInto: CoreDataManager.getContext())
        book.name = "Cálculo - Volume 1"
        book.author = "James Stewart"
        book.available = true
        book.year = 1960
        book.pages = 3450
        book.volume = 2
        book.category = "Ciencias exatas"
        book.publisher = "Cengage Learning"
        book.image = "calculo1"
        book.sinopse = "A 7ª edição de Cálculo traz diversas inovações em relação à edição anterior. Alguns tópicos foram reescritos para proporcionar clareza e motivação; novos exemplos foram adicionados; soluções de parte dos exemplos foram ampliadas; dados de exemplos e exercícios readequados."
        
        user.addToHasManyBooks(book)
        book.owner = user
        BookDAO.insert(book: book)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "userProfileIdentifer") {
            // initialize new view controller and cast it as your view controller
            let viewController = segue.destination as! ProfileViewController
            // your new view controller should have property that will store passed value
            viewController.user = loggedUser
        }
    }
    */

}
