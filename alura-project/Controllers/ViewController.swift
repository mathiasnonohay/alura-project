//
//  ViewController.swift
//  alura-project
//
//  Created by Mathias Almeida Nonohay on 12/18/20.
//  Copyright © 2020 Mathias Almeida Nonohay. All rights reserved.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController {
    
    var delegate: AdicionaRefeicaoDelegate?
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    @IBAction func adicionar(_ sender: Any) {
        
        guard let nomeDaRefeicao = nomeTextField?.text else{
            // verifica o nome da refeição para não haver problemas com nil
            return
        }
        
        guard let felicadedDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicadedDaRefeicao) else {
            // verifica a felicidade para não haver problemas com nil
            return
        }
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        
        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)  // desaparece com a tela atual
    }
}

