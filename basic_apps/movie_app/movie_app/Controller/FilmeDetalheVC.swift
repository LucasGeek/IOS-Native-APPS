//
//  FilmeDetalheVC.swift
//  movie_app
//
//  Created by Lucas Albuquerque on 01/07/20.
//  Copyright © 2020 Lucas Geek. All rights reserved.
//

import UIKit

class FilmeDetalheVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let headerId = "headerId"
    let descricaoId = "descricaoId"
    let slideId = "slideId"
    
    var filme: Filme? {
        didSet {
            self.collectionView.reloadData()
        }
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.navigationController?.navigationItem.largeTitleDisplayMode = .never
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = UIColor.white
        collectionView.register(FilmeDetalheHeaderCell.self, forCellWithReuseIdentifier: headerId)
        collectionView.register(FilmeDetalheDescricaoCell.self, forCellWithReuseIdentifier: descricaoId)
        collectionView.register(FilmeDetalheSlideCell.self, forCellWithReuseIdentifier: slideId)
    }
}

extension FilmeDetalheVC {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: headerId, for: indexPath) as! FilmeDetalheHeaderCell
            
            cell.filme = self.filme
            
            return cell
        } else if indexPath.item == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: descricaoId, for: indexPath) as! FilmeDetalheDescricaoCell
            
            cell.filme = self.filme
            
            return cell
        } else {
            return collectionView.dequeueReusableCell(withReuseIdentifier: slideId, for: indexPath) as! FilmeDetalheSlideCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = view.bounds.width
        var height = width * 0.7
        
        if indexPath.item == 1 {
            let novaCell = FilmeDetalheDescricaoCell(frame: CGRect(x: 0, y: 0, width: width, height: 1000))
            
            novaCell.filme = self.filme
            novaCell.layoutIfNeeded()
            
            let estimativaTamanho = novaCell.systemLayoutSizeFitting(CGSize(width: width, height: 1000))
            height = estimativaTamanho.height
        }
        
        return .init(width: width, height: height)
    }
}
