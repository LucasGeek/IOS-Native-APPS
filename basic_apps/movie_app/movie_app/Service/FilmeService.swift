//
//  FilmeService.swift
//  movie_app
//
//  Created by Lucas Albuquerque on 01/07/20.
//  Copyright © 2020 Lucas Geek. All rights reserved.
//

import Foundation

class FilmeService {
    static let shared = FilmeService()
    
    func buscaFilmes() -> [Filme] {
        var filmes = [Filme]()
        
        filmes.append(Filme(
          id: 1,
          titulo: "Rambo: Até o Fim",
          capaUrl: "cartaz-1",
          capaDestaqueUrl: "cartaz-destaque-1",
          descricao: """
          Após décadas lutando contra seus inimigos, John Rambo (Sylvester Stallone) enfim encontrou a paz em um rancho na fronteira entre os Estados Unidos e o México.
          
          Lá ele ajuda Maria Beltran (Adriana Barraza) a criar a neta Gabrielle (Yvette Monreal), que o trata com imenso carinho.
          
          Decidida a encontrar o pai, que a abandonou ainda criança, ela conta com a ajuda de uma amiga que agora vive no México para localizá-lo.
          """
        ))
        
        filmes.append(Filme(
          id: 2,
          titulo: "Coringa",
          capaUrl: "cartaz-2",
          capaDestaqueUrl: "cartaz-destaque-2",
          descricao: """
          O comediante falido Arthur Fleck encontra violentos bandidos pelas ruas de Gotham City.

          Desconsiderado pela sociedade, Fleck começa a ficar louco e se transforma no criminoso conhecido como Coringa.
          """
        ))
        
        filmes.append(Filme(
          id: 3,
          titulo: "Malévola - Dona do Mal",
          capaUrl: "cartaz-3",
          capaDestaqueUrl: "cartaz-destaque-3",
          descricao: """
          Em "Malévola: Dona do Mal", uma sequência do sucesso de bilheteria global de 2014, Malévola e sua afilhada Aurora começam a questionar os complexos laços familiares que as prendem à medida que são puxadas em direções diferentes por casamentos, aliados inesperados e novas forças sombrias em jogo.
          """
        ))
        
        filmes.append(Filme(
          id: 4,
          titulo: "Zumbilândia - Atire Duas Vezes",
          capaUrl: "cartaz-4",
          capaDestaqueUrl: "cartaz-destaque-4",
          descricao: """
          Uma década depois de Zumbilândia se transformar em um hit cult, o elenco original (Woody Harrelson, Jesse Eisenberg, Abigail Breslin e Emma Stone) se reúne ao diretor Ruben Fleischer (Venom) e roteiristas Rhett Reese & Paul Wernick (Deadpool) para Zumbilândia: Atire duas vezes.
          """
        ))
        
        filmes.append(Filme(
          id: 5,
          titulo: "Angry Birds 2 - O Filme",
          capaUrl: "cartaz-5",
          capaDestaqueUrl: "cartaz-destaque-5",
          descricao: """
          Os raivosos pássaros que não voam e os engenhosos porquinhos verdes levam sua briga para o próximo nível em Angry Birds 2 – O Filme!
          """
        ))
        
        filmes.append(Filme(
          id: 6,
          titulo: "Ela Disse, Ele Disse",
          capaUrl: "cartaz-6",
          capaDestaqueUrl: "cartaz-destaque-6",
          descricao: """
          Ela Disse, Ele Disse acompanha a rotina dos adolescentes Rosa e Leo, sobre os seus próprios pontos de vista.

          Aos 14 anos, eles agora precisam se adaptar a uma nova realidade e fazer de tudo para sobreviver ao primeiro ano num novo colégio.
          """
        ))
        
        filmes.append(Filme(
          id: 7,
          titulo: "Star Wars: A Ascensão Skywalker",
          capaUrl: "cartaz-7",
          capaDestaqueUrl: "cartaz-destaque-7",
          descricao: """
          Lucasfilm e o diretor J.J. Abrams juntam forças mais uma vez para levar os espectadores a uma jornada épica em uma galáxia muito, muito distante em Star Wars: A Ascensão Skywalker, a fascinante conclusão da saga Skywalker, na qual novas lendas nascerão e a batalha final pela liberdade ainda está por vir
          """
        ))
        
        filmes.append(Filme(
          id: 8,
          titulo: "Projeto Gemini",
          capaUrl: "cartaz-8",
          capaDestaqueUrl: "cartaz-destaque-8",
          descricao: """
          PROJETO GEMINI” (GEMINI MAN) é um inovador thriller de ação estrelado por Will Smith como Henry Brogan, um assassino de elite, que é subitamente alvo e perseguido por um misterioso jovem agente que aparentemente pode prever cada movimento seu.
          """
        ))
        
        return filmes
    }
}
