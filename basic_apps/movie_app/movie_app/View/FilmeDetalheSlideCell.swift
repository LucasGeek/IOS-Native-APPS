//
//  FilmeDetalheSlideCell.swift
//  movie_app
//
//  Created by Lucas Albuquerque on 02/07/20.
//  Copyright © 2020 Lucas Geek. All rights reserved.
//

import UIKit

class FilmeDetalheSlideCell: UICollectionViewCell, UICollectionViewDelegateFlowLayout {
    
    let filmesSlideVC = FilmesSlideVC()
    
    let tituloLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Títulos semelhantes"
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(tituloLabel)
        tituloLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        tituloLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        tituloLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        
        addSubview(filmesSlideVC.view)
        filmesSlideVC.view.translatesAutoresizingMaskIntoConstraints = false
        filmesSlideVC.view.topAnchor.constraint(equalTo: tituloLabel.bottomAnchor, constant: 12).isActive = true
        filmesSlideVC.view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        filmesSlideVC.view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        filmesSlideVC.view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
