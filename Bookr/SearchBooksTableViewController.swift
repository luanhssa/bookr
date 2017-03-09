//
//  SearchBooksTableViewController.swift
//  Bookr
//
//  Created by Student on 3/7/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import UIKit

class SearchBooksTableViewController: UITableViewController {
    let searchController = UISearchController(searchResultsController: nil)
    
    var books = [Book]()
    
    // Crie uma propriedade na sua classe para armazenar os resultados do seu filtro
    
    var filteredBooks = [Book]()
    
    // 4. Crie o método de filtragem dos dados com base no texto digitado
    func filterContent(for searchText: String, scope: String = "All") {
        filteredBooks = books.filter({ books in
            return (books.name.lowercased().contains(searchText.lowercased()))
        })
        
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        books = BookDAO.searchAll()
        
        searchController.searchResultsUpdater = self // Por enquanto terá um erro aqui, mas ele some no passo numero 5
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        books = BookDAO.searchAll()
        reloadInputViews()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    // 6. Atualize o método tableView(_:numberOfRowsInSection:)
    // para que ele retorne o número de linhas correspondente ao
    // número de resultados da pesquisa
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if searchController.isActive && searchController.searchBar.text != "" {
            return filteredBooks.count
        }
        return books.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "booksIndetifier", for: indexPath)
        
        //Configure the cell...
        
        if let bookCell = cell as? BookTableViewCell {
            let book: Book
            
            if searchController.isActive && searchController.searchBar.text != "" {
                book = filteredBooks[indexPath.row]
            } else {
                book = books[indexPath.row]
            }
            
            
            bookCell.title.text = book.name
            bookCell.author.text = book.author
            if let image = book.image {
                bookCell.imageView?.image = UIImage(named: image)
            }
          
            
            return bookCell
        }
        
        return cell
    }
    

    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    
    var valueToPass = Book()
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("You selected cell #\(indexPath.row)!")
//        print(indexPath.count)
        let book: Book
        // Get Cell Label
        //let indexPath = tableView.indexPathForSelectedRow
        //let currentCell = tableView.cellForRow(at: indexPath!) as! BookTableViewCell!;
        book = books[(indexPath.row)]
        
        valueToPass.name = book.name
        valueToPass.author = book.author
        valueToPass.editor = book.editor
        valueToPass.isbn = book.isbn
        valueToPass.pages = book.pages
        valueToPass.volume = book.volume
        valueToPass.publisher = book.publisher
        valueToPass.sinopse = book.sinopse
        
        
        
        performSegue(withIdentifier: "bookSegueIdentifer", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "bookSegueIdentifer") {
            // initialize new view controller and cast it as your view controller
            let viewController = segue.destination as! BookProfileController
            // your new view controller should have property that will store passed value
            viewController.passedValue = valueToPass
        }
    }

}

extension SearchBooksTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContent(for: searchController.searchBar.text!)
    }

}
