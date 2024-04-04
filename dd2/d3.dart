class Musica {
  Musica(
      this.tituloDaMusica, this.nomeDoArtista, this.nomeDoAlbum, this.duracao);

  final String tituloDaMusica;
  final String nomeDoArtista;
  final String nomeDoAlbum;
  final int duracao;
}

class ListaDeMusicas {
  /// Lista de músicas cadastradas
  final listaDeMusicas = <Musica>[
    Musica("Bohemian Rhapsody", "Queen", "A Night at the Opera", 354),
    Musica("Stairway to Heaven", "Led Zeppelin", "Led Zeppelin IV", 482),
    Musica("Hotel California", "Eagles", "Hotel California", 391)
  ];

  /// Lista das músicas cadastradas

  void listarMusicasCadastradas() {
    for (var musica in listaDeMusicas) {
      print("Título: ${musica.tituloDaMusica}, "
          "Artista: ${musica.nomeDoArtista}, "
          "Álbum: ${musica.nomeDoAlbum}, "
          "Duração: ${musica.duracao} segundos");
    }
  }

  /// Conta a quantidade de musicas da lista
  void numeroDeMusicasCadastradas() {
    print("Número de músicas cadastradas: ${listaDeMusicas.length}");
  }

  /// Conta a duração das músicas da lista
  void contarTempoTotalEmHoras() {
    int duracaoEmSegundos = 0;
    for (var musica in listaDeMusicas) {
      duracaoEmSegundos += musica.duracao;
    }

    double duracaoEmHoras = duracaoEmSegundos / 360;
    print("Tempo total em horas: ${duracaoEmHoras.toStringAsFixed(2)} ");
  }

  /// Encontra a musica por título
  void encontrarPorTitulo(String titulo) {
    for (var musica in listaDeMusicas) {
      if (musica.nomeDoAlbum == titulo) {
        print(" Título: ${musica.tituloDaMusica},\n "
            "Artista: ${musica.nomeDoArtista},\n "
            "Álbum: ${musica.nomeDoAlbum},\n "
            "Duração: ${musica.duracao} segundos");
      }
    }
  }
  /// Encontra a musica por artista
  void encontrarPorArtista(String artista) {
    for (var musica in listaDeMusicas) {
      if (musica.nomeDoArtista == artista) {
        print(" Título: ${musica.tituloDaMusica},\n "
            "Artista: ${musica.nomeDoArtista},\n "
            "Álbum: ${musica.nomeDoAlbum},\n "
            "Duração: ${musica.duracao} segundos");
      }
    }
  }
  /// Encontra a musica por album
  void encontrarPorAlbum(String album) {
    for (var musica in listaDeMusicas) {
      if (musica.nomeDoAlbum == album) {
        print(" Título: ${musica.tituloDaMusica},\n "
            "Artista: ${musica.nomeDoArtista},\n "
            "Álbum: ${musica.nomeDoAlbum},\n "
            "Duração: ${musica.duracao} segundos");
      }
    }
  }
}

void main() {
  final listaDeMusicasDisponiveis = ListaDeMusicas();
  listaDeMusicasDisponiveis.listarMusicasCadastradas();
  listaDeMusicasDisponiveis.numeroDeMusicasCadastradas();
  listaDeMusicasDisponiveis.contarTempoTotalEmHoras();
  print("________________________TÍTULO____________________________");
  listaDeMusicasDisponiveis.encontrarPorTitulo("Hotel California");
  print("________________________ARTISTA____________________________");
  listaDeMusicasDisponiveis.encontrarPorArtista("Queen");
  print("________________________ALBUM____________________________");
  listaDeMusicasDisponiveis.encontrarPorAlbum("Led Zeppelin IV");
}

//TEMPO: 50 min
