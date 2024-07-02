import 'package:flutter/material.dart';
import 'package:apk_mundial_qatar2022/Jugadores.dart';
import 'package:apk_mundial_qatar2022/constants.dart';
import 'package:apk_mundial_qatar2022/models/plants.dart';
import 'package:apk_mundial_qatar2022/ui/screens/signin_page.dart';
import 'package:apk_mundial_qatar2022/ui/screens/widgets/plant_widget.dart';

class FavoritePage extends StatefulWidget {
  final List<Plant> favoritedPlants;
  const FavoritePage({super.key, required this.favoritedPlants});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(134, 0, 55, 1),
      body: ListView(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                    color: const Color.fromARGB(255, 213, 188, 199)
                        .withOpacity(.5),
                    clipBehavior: Clip
                        .antiAlias, // permite acortar todo fuera de la tarjeta
                    elevation: 10.0, // sombra debajo de la tarjeta
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ), // Borde redondeado
                    child: Column(
                      children: <Widget>[
                        const FadeInImage(
                          image: AssetImage(
                            'assets/Selecciones/Argentina.jpg',
                          ),
                          placeholder: AssetImage(
                            'assets/loading.gif',
                          ),
                          fadeInDuration:
                              Duration(milliseconds: 200), // Tiempo de carga
                          height: 220.0,
                          fit: BoxFit.cover,
                        ),
                        TextButton(
                          onPressed: () {
                            print('Argentina.');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Jugadores()),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text('Argentina',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontFamily: 'Qatar2022Arabic')),
                          ),
                        ),
                      ],
                    )),
                Card(
                    color: Color.fromARGB(255, 213, 188, 199).withOpacity(.5),
                    clipBehavior: Clip
                        .antiAlias, // permite acortar todo fuera de la tarjeta
                    elevation: 10.0, // sombra debajo de la tarjeta
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ), // Borde redondeado
                    child: Column(
                      children: <Widget>[
                        const FadeInImage(
                          image: AssetImage(
                            'assets/Selecciones/Brazil.jpg',
                          ),
                          placeholder: AssetImage(
                            'assets/loading.gif',
                          ),
                          fadeInDuration:
                              Duration(milliseconds: 200), // Tiempo de carga
                          height: 220.0,
                          fit: BoxFit.cover,
                        ),
                        InkWell(
                          onTap: () {
                            print('Argentina.');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text('Brazil',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontFamily: 'Qatar2022Arabic')),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 12.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                    color: Color.fromARGB(255, 213, 188, 199).withOpacity(.5),
                    clipBehavior: Clip
                        .antiAlias, // permite acortar todo fuera de la tarjeta
                    elevation: 10.0, // sombra debajo de la tarjeta
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ), // Borde redondeado
                    child: Column(
                      children: <Widget>[
                        const FadeInImage(
                          image: AssetImage(
                            'assets/Selecciones/Francia.jpg',
                          ),
                          placeholder: AssetImage(
                            'assets/loading.gif',
                          ),
                          fadeInDuration:
                              Duration(milliseconds: 200), // Tiempo de carga
                          height: 220.0,
                          fit: BoxFit.cover,
                        ),
                        InkWell(
                          onTap: () {
                            print('Francia.');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text('Francia',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontFamily: 'Qatar2022Arabic')),
                          ),
                        ),
                      ],
                    )),
                Card(
                    color: Color.fromARGB(255, 213, 188, 199).withOpacity(.5),
                    clipBehavior: Clip
                        .antiAlias, // permite acortar todo fuera de la tarjeta
                    elevation: 10.0, // sombra debajo de la tarjeta
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ), // Borde redondeado
                    child: Column(
                      children: <Widget>[
                        const FadeInImage(
                          image: AssetImage(
                            'assets/Selecciones/Alemania.jpg',
                          ),
                          placeholder: AssetImage(
                            'assets/loading.gif',
                          ),
                          fadeInDuration:
                              Duration(milliseconds: 200), // Tiempo de carga
                          height: 220.0,
                          fit: BoxFit.cover,
                        ),
                        InkWell(
                          onTap: () {
                            print('A.');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text('Alemania',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontFamily: 'Qatar2022Arabic')),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 12.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                    color: Color.fromARGB(255, 213, 188, 199).withOpacity(.5),
                    clipBehavior: Clip
                        .antiAlias, // permite acortar todo fuera de la tarjeta
                    elevation: 10.0, // sombra debajo de la tarjeta
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ), // Borde redondeado
                    child: Column(
                      children: <Widget>[
                        const FadeInImage(
                          image: AssetImage(
                            'assets/Selecciones/España.jpg',
                          ),
                          placeholder: AssetImage(
                            'assets/loading.gif',
                          ),
                          fadeInDuration:
                              Duration(milliseconds: 200), // Tiempo de carga
                          height: 220.0,
                          fit: BoxFit.cover,
                        ),
                        InkWell(
                          onTap: () {
                            print('España.');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text('España',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontFamily: 'Qatar2022Arabic')),
                          ),
                        ),
                      ],
                    )),
                Card(
                    color: Color.fromARGB(255, 213, 188, 199).withOpacity(.5),
                    clipBehavior: Clip
                        .antiAlias, // permite acortar todo fuera de la tarjeta
                    elevation: 10.0, // sombra debajo de la tarjeta
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ), // Borde redondeado
                    child: Column(
                      children: <Widget>[
                        const FadeInImage(
                          image: AssetImage(
                            'assets/Selecciones/Portugal.jpg',
                          ),
                          placeholder: AssetImage(
                            'assets/loading.gif',
                          ),
                          fadeInDuration:
                              Duration(milliseconds: 200), // Tiempo de carga
                          height: 220.0,
                          fit: BoxFit.cover,
                        ),
                        InkWell(
                          onTap: () {
                            print('Argentina.');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text('Portugal',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontFamily: 'Qatar2022Arabic')),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 12.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                    color: Color.fromARGB(255, 213, 188, 199).withOpacity(.5),
                    clipBehavior: Clip
                        .antiAlias, // permite acortar todo fuera de la tarjeta
                    elevation: 10.0, // sombra debajo de la tarjeta
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ), // Borde redondeado
                    child: Column(
                      children: <Widget>[
                        const FadeInImage(
                          image: AssetImage(
                            'assets/Selecciones/Belgica.jpg',
                          ),
                          placeholder: AssetImage(
                            'assets/loading.gif',
                          ),
                          fadeInDuration:
                              Duration(milliseconds: 200), // Tiempo de carga
                          height: 220.0,
                          fit: BoxFit.cover,
                        ),
                        InkWell(
                          onTap: () {
                            print('Argentina.');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text('Belgica',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontFamily: 'Qatar2022Arabic')),
                          ),
                        ),
                      ],
                    )),
                Card(
                    color: Color.fromARGB(255, 213, 188, 199).withOpacity(.5),
                    clipBehavior: Clip
                        .antiAlias, // permite acortar todo fuera de la tarjeta
                    elevation: 10.0, // sombra debajo de la tarjeta
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ), // Borde redondeado
                    child: Column(
                      children: <Widget>[
                        const FadeInImage(
                          image: AssetImage(
                            'assets/Selecciones/Holanda.jpg',
                          ),
                          placeholder: AssetImage(
                            'assets/loading.gif',
                          ),
                          fadeInDuration:
                              Duration(milliseconds: 200), // Tiempo de carga
                          height: 220.0,
                          fit: BoxFit.cover,
                        ),
                        InkWell(
                          onTap: () {
                            print('Argentina.');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text('Holanda',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontFamily: 'Qatar2022Arabic')),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ],
        )
      ]),
      // body: widget.favoritedPlants.isEmpty
      //     ? Center(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             SizedBox(
      //               height: 100,
      //               child: Image.asset('assets/images/favorited.png'),
      //             ),
      //             const SizedBox(
      //               height: 10,
      //             ),
      //             Text(
      //               'Your favorited Plants',
      //               style: TextStyle(
      //                 color: Constants.primaryColor,
      //                 fontWeight: FontWeight.w300,
      //                 fontSize: 18,
      //               ),
      //             ),
      //           ],
      //         ),
      //       )
      //     : Container(
      //         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
      //         height: size.height * .5,
      //         child: ListView.builder(
      //             itemCount: widget.favoritedPlants.length,
      //             scrollDirection: Axis.vertical,
      //             physics: const BouncingScrollPhysics(),
      //             itemBuilder: (BuildContext context, int index) {
      //               return PlantWidget(
      //                   index: index, plantList: widget.favoritedPlants);
      //             }),
      //       ),
    );
  }
}
