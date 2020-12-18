//
//  ViewController.swift
//  alura-project
//
//  Created by Mathias Almeida Nonohay on 12/18/20.
//  Copyright © 2020 Mathias Almeida Nonohay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet weak var felicidadeTextField: UITextField!
    
    @IBAction func adicionar(_ sender: Any) {
        let nome = nomeTextField.text
        let felicidade = felicidadeTextField.text
        
        print("comi \(nome) e fiquei com felicidade: \(felicidade)")
    }
    

}

