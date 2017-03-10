//
//  ProfileViewController.swift
//  Bookr
//
//  Created by Student on 3/8/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var userImage: UIImageView!

    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var user = User()
    
    func maskRoundedImage(image: UIImage, radius: Float) -> UIImage {
        let imageView: UIImageView = UIImageView(image: image)
        var layer: CALayer = CALayer()
        layer = imageView.layer
        
        layer.masksToBounds = true
        layer.cornerRadius = CGFloat(radius)
        
        UIGraphicsBeginImageContext(imageView.bounds.size)
        let roundedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return roundedImage!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = UserProfile.user
        
        userName.text = user.name + " " + user.lastName
        if let image = user.image {
            let uiimage = maskRoundedImage(image: UIImage(named: image)!, radius: 45.0)
            userImage.image = uiimage
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (user.hasManyBooks?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifier : String = "userBooksIdentifier"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        let books = user.hasManyBooks?.allObjects
        
        let book = books?[indexPath.row] as! Book
        
        cell.textLabel?.text = book.name
        cell.detailTextLabel?.text = book.author
        if let image = book.image {
            cell.imageView?.image = UIImage(named: image)
        }
        
        return cell
    }
}


