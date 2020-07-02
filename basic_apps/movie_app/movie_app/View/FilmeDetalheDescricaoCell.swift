//
//  FilmeDetalheDescricaoCell.swift
//  movie_app
//
//  Created by Lucas Albuquerque on 02/07/20.
//  Copyright © 2020 Lucas Geek. All rights reserved.
//

import UIKit

class FilmeDetalheDescricaoCell: UICollectionViewCell {
    
    var filme: Filme? {
        didSet {
            if let filme = filme {
                descricaoLabel.text = filme.descricao
            }
        }
    }
    
    let descricaoLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Titulo"
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(descricaoLabel)
        descricaoLabel.topAnchor.constraint(equalTo: topAnchor, constant: 24).isActive = true
        descricaoLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        descricaoLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        descricaoLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
