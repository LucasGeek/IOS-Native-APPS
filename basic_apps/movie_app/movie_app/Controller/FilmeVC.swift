//
//  FilmeVC.swift
//  movie_app
//
//  Created by Lucas Albuquerque on 01/07/20.
//  Copyright © 2020 Lucas Geek. All rights reserved.
//

import UIKit

class FilmeVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let cellId = "cellId"
    
    var filmes: [Filme] = []
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = UIColor.white
        collectionView.register(FilmeCell.self, forCellWithReuseIdentifier: cellId)
        
        navigationController?.navigationBar.prefersLargeTitles = false
        
        let headerView = UIView()
        headerView.frame = CGRect(x: 0, y: 0, width: 100, height: 35)
        
        let imagemView = UIImageView(frame: headerView.frame)
        imagemView.image = UIImage(named: "logomarca")
        
        headerView.addSubview(imagemView)
        
        navigationItem.titleView = headerView
        
        self.buscaFilmes()
    }
}

extension FilmeVC {
    func buscaFilmes() {
        self.filmes = FilmeService.shared.buscaFilmes()
        self.collectionView.reloadData()
    }
}

extension FilmeVC {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.filmes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! FilmeCell
        cell.filme = self.filmes[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width / 2 - 32
        let height = width * 1.8
        
        return .init(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 24, left: 24, bottom: 24, right: 24)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 24
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let filme = self.filmes[indexPath.item]
        let filmeDetalheVC = FilmeDetalheVC()
        
        filmeDetalheVC.filme = filme
        
        self.navigationController?.pushViewController(filmeDetalheVC, animated: true)
    }
}
