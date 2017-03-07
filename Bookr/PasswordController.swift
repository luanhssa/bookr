//
//  Password.swift
//  Bookr
//
//  Created by Kamilla Kemilly Tenorio Alves dos Santos on 3/7/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import UIKit

class PasswordController : UIViewController{
    
    @IBAction func password(_ sender: Any) {
        let alert = UIAlertController(title: "Enviado", message: "O link para alteração da sua senha foi enviada para o email!", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}
