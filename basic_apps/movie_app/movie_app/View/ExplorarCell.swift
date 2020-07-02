//
//  ExplorarCell.swift
//  movie_app
//
//  Created by Lucas Albuquerque on 02/07/20.
//  Copyright © 2020 Lucas Geek. All rights reserved.
//

import UIKit

class ExplorarCell: UITableViewCell {
    
    var filme: Filme? {
        didSet {
            if let filme = filme {
                capaImagemView.image = UIImage(named: filme.capaUrl)
                tituloLabel.text = filme.titulo
                descricaoLabel.text = filme.descricao
            }
        }
    }
    
    let capaImagemView: UIImageView = {
        let imagem = UIImageView()
        
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.widthAnchor.constraint(equalToConstant: 140).isActive = true
        imagem.backgroundColor = .purple
        imagem.contentMode = .scaleAspectFill
        imagem.layer.cornerRadius = 8
        imagem.clipsToBounds = true
        
        return imagem
    }()
    
    let tituloLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Titulo"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 2
        
        return label
    }()
    
    let descricaoLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Descricao"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 2
        label.textColor = .darkText
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let infoStackView = UIStackView(arrangedSubviews: [tituloLabel, descricaoLabel])
        infoStackView.axis = .vertical
        infoStackView.distribution = .fillProportionally
        
        let stackView = UIStackView(arrangedSubviews: [capaImagemView, infoStackView])
        stackView.axis = .horizontal
        stackView.spacing = 16
        
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
