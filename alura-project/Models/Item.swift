//
//  Item.swift
//  alura-project
//
//  Created by Mathias Almeida Nonohay on 12/21/20.
//  Copyright © 2020 Mathias Almeida Nonohay. All rights reserved.
//

import UIKit

class Item: NSObject, NSCoding {
    
    // MARK: - Atributos
    let nome: String
    let calorias: Double
    
    // MARK: - Init (Construtor)
    init (nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
    }
    
    //MARK: - Coding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(nome, forKey: "nome")
        aCoder.encode(calorias, forKey: "calorias")
    }
    
    required init?(coder aDecoder: NSCoder) {
        nome = aDecoder.decodeObject(forKey: "nome") as! String
        calorias = aDecoder.decodeDouble(forKey: "calorias")
    }
}
