//
//  FilmeSlideCell.swift
//  movie_app
//
//  Created by Lucas Albuquerque on 02/07/20.
//  Copyright © 2020 Lucas Geek. All rights reserved.
//

import UIKit

class FilmeSlideCell: UICollectionViewCell {
    
    var filme: Filme? {
        didSet {
            if let filme = filme {
                destaqueImagemView.image = UIImage(named: filme.capaUrl)
            }
        }
    }
    
    let destaqueImagemView: UIImageView = {
        let imagem = UIImageView()
        
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.backgroundColor = .purple
        imagem.contentMode = .scaleAspectFill
        imagem.layer.cornerRadius = 8
        imagem.clipsToBounds = true
        
        return imagem
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(destaqueImagemView)
        destaqueImagemView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        destaqueImagemView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        destaqueImagemView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        destaqueImagemView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
