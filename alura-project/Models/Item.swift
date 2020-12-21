//
//  Item.swift
//  alura-project
//
//  Created by Mathias Almeida Nonohay on 12/21/20.
//  Copyright © 2020 Mathias Almeida Nonohay. All rights reserved.
//

import UIKit

class Item: NSObject {
    // MARK: - Atributos
    let nome: String
    let calorias: Double
    
    // MARK: - Init (Construtor)
    init (nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
    }
}
