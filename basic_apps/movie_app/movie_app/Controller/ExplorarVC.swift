//
//  ExplorarVC.swift
//  movie_app
//
//  Created by Lucas Albuquerque on 02/07/20.
//  Copyright © 2020 Lucas Geek. All rights reserved.
//

import UIKit


class ExplorarVC: UITableViewController, UISearchBarDelegate {
    
    let cellId = "cellId"
    
    var filmes: [Filme] = []
    
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(ExplorarCell.self, forCellReuseIdentifier: cellId)
        
        self.configuraSearchBar()
        self.buscaFilmes()
    }
}

extension ExplorarVC {
    func buscaFilmes() {
        self.filmes = FilmeService.shared.buscaFilmes()
        self.tableView.reloadData()
    }
    
    func configuraSearchBar() {
        
        definesPresentationContext = true
        navigationItem.searchController = self.searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        
        self.searchController.obscuresBackgroundDuringPresentation = false
        self.searchController.searchBar.placeholder = "Descubra novos filmes"
        self.searchController.searchBar.delegate = self
    }
}

extension ExplorarVC {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ExplorarCell
        
        cell.filme = self.filmes[indexPath.item]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        
        let filme = self.filmes[indexPath.item]
        let filmeDetalheVC = FilmeDetalheVC()
        
        filmeDetalheVC.filme = filme
        
        self.navigationController?.pushViewController(filmeDetalheVC, animated: true)
    }
}
