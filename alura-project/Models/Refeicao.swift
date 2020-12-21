//
//  Refeicao.swift
//  alura-project
//
//  Created by Mathias Almeida Nonohay on 12/21/20.
//  Copyright © 2020 Mathias Almeida Nonohay. All rights reserved.
//

import UIKit

class Refeicao: NSObject {
    // MARK: - Atributos
    let nome: String
    let felicidade: String
    let itens: Array<Item> = []
    
    // MARK: - Contrutor
    init(nome: String, felicidade: String){
        self.nome = nome
        self.felicidade = felicidade
    }
    
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        for item in itens {
            total += item.calorias
        }
        return total
    }
}
