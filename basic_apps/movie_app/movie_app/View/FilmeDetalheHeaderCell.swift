//
//  FilmeDetalheHeaderCell.swift
//  movie_app
//
//  Created by Lucas Albuquerque on 01/07/20.
//  Copyright © 2020 Lucas Geek. All rights reserved.
//

import UIKit

class FilmeDetalheHeaderCell: UICollectionViewCell {
    
    var filme: Filme? {
        didSet {
            if let filme = filme {
                self.imagemDestaqueImageView.image = UIImage(named: filme.capaDestaqueUrl)
                tituloLabel.text = filme.titulo
            }
        }
    }
    
    let imagemDestaqueImageView: UIImageView = {
        let imagem = UIImageView()
        
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.backgroundColor = .purple
        imagem.contentMode = .scaleAspectFill
        imagem.layer.cornerRadius = 8
        imagem.clipsToBounds = true
        
        return imagem
    }()
    
    let tituloLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 24)
        label.numberOfLines = 2
        
        return label
    }()
    
    let heartButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imagemDestaqueImageView.heightAnchor.constraint(equalToConstant: bounds.height * 0.7).isActive = true
        
        //let tituloBotaoStackView = UIStackView(arrangedSubviews: [tituloLabel, heartButton])
        
        let stackView = UIStackView(arrangedSubviews: [imagemDestaqueImageView, tituloLabel])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 12
        
        addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 24).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
