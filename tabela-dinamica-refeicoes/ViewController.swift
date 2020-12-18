//
//  ViewController.swift
//  tabela-dinamica-refeicoes
//
//  Created by Fabricio Rodrigo Baixo on 12/18/20.
//  Copyright © 2020 Fabricio Rodrigo Baixo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let refeicoes = ["Churros","Macarrão","Pizza"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("tableviewcontrollerfoicarregado")
    }
    
    //adicionando linhas
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    //inserindo os dados nas linhas criadas
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let refeicao = refeicoes[indexPath.row]
        
        celula.textLabel?.text = refeicao
        
        return celula
    }


}

