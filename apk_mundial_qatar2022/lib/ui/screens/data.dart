class JugadoresInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  JugadoresInfo(
    this.position, {
    required this.name,
    required this.iconImage,
    required this.description,
    required this.images,
  });
}

List<JugadoresInfo> jugadorInfo = [
  JugadoresInfo(1,
      name: 'Rodrigo de Paul',
      iconImage: 'assets/RodrigoDePaul.png',
      description:
          "Rodrigo Javier de Paul Ferrarotti es un futbolista profesional argentino que juega como centrocampista en el Atlético de Madrid de la Primera División de España. Es internacional con la selección argentina. Su carrera profesional comenzó en Racing Club de Avellaneda en el año 2013. ",
      images: [
        'https://depor.com/resizer/Si-EQdalt-SwcildY-1eEyNWKJg=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/NZ3NTYXRVFBRLINNMDYS4HD75Q.jfif',
        'https://icdn.football-espana.net/wp-content/uploads/2022/10/Rodrigo-de-Paul-e1664612957104.jpg',
        'https://e00-co-marca.uecdn.es/claro/assets/multimedia/imagenes/2022/12/07/16704400476011.jpg',
        'https://images.hola.com/imagenes/actualidad/20230108224210/rodrigo-de-paul-tatuaje-tini-stoessel/1-187-173/rodrigo-tini-ig-t.jpg?tx=w_680',
        'https://st1.uvnimg.com/95/fe/ab669a0d4ef2b15a5d6236d5300d/rodrigo-de-paul-argentina-qatar-2022.jpg'
      ]),
  JugadoresInfo(2,
      name: 'Angel Di Maria',
      iconImage: 'assets/AngelDiMaria.png',
      description:
          "Ángel Fabián Di María es un futbolista argentino. Juega de extremo en la Juventus de Turín de la Serie A de Italia. Es jugador internacional con la selección argentina. Comenzó su carrera en Rosario Central, pero tras un ascenso vertiginoso fue rápidamente traspasado al Benfica de Portugal con solo 19 años, en 2007. ",
      images: [
        'https://media.ambito.com/p/350ba95fc4a92371e6e3226712364089/adjuntos/239/imagenes/039/856/0039856542/1200x675/smart/angel-di-mariajpg.jpg',
        'https://static.dw.com/image/62003243_303.jpg',
        'https://cdn.vox-cdn.com/thumbor/Pcqt6YsotymeuBVuWYlOJb_qXDI=/0x272:5000x3333/1200x800/filters:focal(2100x1267:2900x2067)/cdn.vox-cdn.com/uploads/chorus_image/image/71547153/1434579336.0.jpg',
        'https://bolavip.com/__export/1671475320334/sites/bolavip/img/2022/12/19/gettyimages-1450113919_crop1671475318333.jpg_1216690859.jpg',
        'https://es.psg.fr/media/200845/di-maria.jpg?quality=60&width=1600&bgcolor=ffffff'
      ]),
  JugadoresInfo(3,
      name: 'Lionel Messi',
      iconImage: 'assets/LionelMessi.png',
      description:
          'Lionel Andrés Messi Cuccittini (Rosario, 24 de junio de 1987), conocido como Leo Messi, es un futbolista argentino que juega como delantero o centrocampista. Jugador histórico del Fútbol Club Barcelona, al que estuvo ligado veinte años, desde 2021 integra el plantel del Paris Saint-Germain de la Ligue 1 de Francia.',
      images: [
        'https://assets-es.imgfoot.com/media/cache/1200x1200/lionel-messi-2223-argentina-1.jpg',
        'https://www.latercera.com/resizer/A0uv8a_gYxInJ974wu7-DwdL4e8=/900x600/smart/cloudfront-us-east-1.images.arcpublishing.com/copesa/AT6N36HFFNCPTHAE5TKAXYJEVM.jpg',
        'https://e.rpp-noticias.io/normal/2023/01/04/025002_1370555.jpg',
        'https://static.dw.com/image/64284602_303.jpg',
        'https://www.semana.com/resizer/moxJkkMuevequ55gZiw8WwUheaw=/fit-in/768x0/smart/filters:format(jpg):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/semana/OY5EZ6OAABB2LFRMJ6WKNZLO4U.jpg'
      ]),
  JugadoresInfo(4,
      name: 'Leandro Paredes',
      iconImage: 'assets/LeandroParedes.png',
      description:
          "Leandro Daniel Paredes es un futbolista profesional argentino que juega como mediocampista defensivo en el club Juventus de la Serie A, cedido por el club Paris Saint-Germain de la Ligue 1 y la selección nacional de Argentina. Formó parte del equipo que ganó la Copa Mundial de la FIFA 2022. ",
      images: []),
  JugadoresInfo(5,
      name: 'Dibu Martinez',
      iconImage: 'assets/DibuMartinez.png',
      description:
          "Damián Emiliano Martínez, conocido comúnmente como «Dibu» Martínez, es un futbolista argentino que juega de arquero, en el Aston Villa de la Premier League de Inglaterra, y es internacional con la selección argentina.",
      images: []),
  JugadoresInfo(6,
      name: 'Julián Álvarez',
      iconImage: 'assets/JulianAlvarez.png',
      description:
          "Julián Álvarez es un futbolista argentino que juega como delantero en el Manchester City F. C. de la Premier League de Inglaterra. Es internacional con la selección argentina desde 2021. Surgió en Club Atlético Calchín, pero se formó y debutó profesionalmente en C. A. River Plate.",
      images: []),
  JugadoresInfo(7,
      name: 'Enzo Fernández',
      iconImage: 'assets/EnzoFernandez.png',
      description:
          "Enzo Jeremías Fernández es un futbolista argentino. Se desempeña como mediocampista y actualmente juega en el Sport Lisboa e Benfica de Portugal. Es internacional absoluto con la selección argentina. Su carrera como futbolista profesional comenzó en el 2020, en Club Atlético River Plate.",
      images: []),
  JugadoresInfo(8,
      name: 'Nahuel Molina',
      iconImage: 'assets/NahuelMolina.png',
      description:
          "Nahuel Molina Lucero ​ es un futbolista argentino. Juega como defensor, y su equipo actual es el Atlético de Madrid de la Primera División de España.​ Es internacional absoluto con la selección argentina.",
      images: []),
];
