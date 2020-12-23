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
    let felicidade: Int
    var itens: Array<Item> = []
    
    // MARK: - Contrutor (Init)
    
    init(nome: String, felicidade: Int, itens: [Item] = []){
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        for item in itens {
            total += item.calorias
        }
        return total
    }
}
