//
//  TouchesViewController.swift
//  Bookr
//
//  Created by Kamilla Kemilly Tenorio Alves dos Santos on 3/9/17.
//  Copyright © 2017 Luan Almeida. All rights reserved.
//

import UIKit

class TouchesViewController: UIViewController {
    
    // Sobreescrevemos o metodo touchesBegan(_: with:) que é chamado quando tocamos na tela. Isso faz com que você possa para a edição
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Chamamos a view para forçar que a edição pare
        self.view.endEditing(true)
    }
}
