//
//  FilmeCell.swift
//  movie_app
//
//  Created by Lucas Albuquerque on 01/07/20.
//  Copyright © 2020 Lucas Geek. All rights reserved.
//

import UIKit

class FilmeCell: UICollectionViewCell {
    
    var filme: Filme? {
        didSet {
            if let filme = filme {
                imagemView.image = UIImage(named: filme.capaUrl)
                tituloLabel.text = filme.titulo
            }
        }
    }
    
    let imagemView: UIImageView = {
        let imagem = UIImageView()
        
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.backgroundColor = .purple
        imagem.contentMode = .scaleToFill
        imagem.layer.cornerRadius = 8
        imagem.clipsToBounds = true
        
        return imagem
    }()
    
    let tituloLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Título"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 2
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.white
        
        addSubview(imagemView)
        imagemView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        imagemView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        imagemView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        imagemView.heightAnchor.constraint(equalToConstant: bounds.height - 44).isActive = true
        
        addSubview(tituloLabel)
        tituloLabel.topAnchor.constraint(equalTo: imagemView.bottomAnchor, constant: 8).isActive = true
        tituloLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        tituloLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
