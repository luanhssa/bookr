//
//  FAQViewController.swift
//  Bookr
//
//  Created by Student on 3/8/17.
//  Copyright © 2017 Abigail Musa. All rights reserved.
//

import UIKit


class FAQViewController: UIViewController {
    
    
    @IBOutlet weak var enviarmensagem: UILabel!
    
    @IBOutlet weak var mensagem: UILabel!
    
    @IBOutlet weak var assunto: UILabel!
    
    @IBOutlet weak var textview: UITextView!
    
    @IBOutlet weak var dig_assunto: UITextField!
    
    
    @IBOutlet weak var Dig_mensagem: UITextField!
    
    @IBAction func enviar(_ sender: Any) {
        
        
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
     }
     */
    
}
