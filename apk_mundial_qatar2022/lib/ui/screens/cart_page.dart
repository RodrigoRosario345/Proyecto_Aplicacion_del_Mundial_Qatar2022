import 'package:flutter/material.dart';
import 'package:apk_mundial_qatar2022/models/plants.dart';

class CartPage extends StatefulWidget {
  final List<Plant> addedToCartPlants;
  const CartPage({Key? key, required this.addedToCartPlants}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(134, 0, 55, 1),
      body: ListView(padding: const EdgeInsets.all(30), children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 246, 237, 237),
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 200))),
              child: const Column(children: [
                Text('Grupo A',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Qatar2022Arabic',
                      color: Color.fromRGBO(134, 0, 55, 1),
                    )),
                Divider(
                  color: Color.fromARGB(255, 189, 154, 17),
                  height: 30,
                  thickness: 2,
                  endIndent: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Qatar.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Qatar',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Ecuador.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Ecuador',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Senegal.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      'Senegal',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Qatar2022Arabic',
                          color: Color.fromRGBO(134, 0, 55, 1)),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Holanda.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Netherlands',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
              ]),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 30)),
        Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 246, 237, 237),
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 200))),
              child: const Column(children: [
                Text('Grupo B',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Qatar2022Arabic',
                      color: Color.fromRGBO(134, 0, 55, 1),
                    )),
                Divider(
                  color: Color.fromARGB(255, 189, 154, 17),
                  height: 30,
                  thickness: 2,
                  endIndent: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/England.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('England',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Iran.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('IR Iran',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/USA.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      'USA',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Qatar2022Arabic',
                          color: Color.fromRGBO(134, 0, 55, 1)),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Wales.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Wales',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
              ]),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 30)),
        Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 246, 237, 237),
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 200))),
              child: const Column(children: [
                Text('Grupo C',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Qatar2022Arabic',
                      color: Color.fromRGBO(134, 0, 55, 1),
                    )),
                Divider(
                  color: Color.fromARGB(255, 189, 154, 17),
                  height: 30,
                  thickness: 2,
                  endIndent: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Argentina.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Argentina',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/ArabiaSaudita.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Saudi Arabia',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Mexico.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      'Mexico',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Qatar2022Arabic',
                          color: Color.fromRGBO(134, 0, 55, 1)),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Polonia.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Poland',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
              ]),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 30)),
        Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 246, 237, 237),
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 200))),
              child: Column(children: [
                const Text('Grupo D',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Qatar2022Arabic',
                      color: Color.fromRGBO(134, 0, 55, 1),
                    )),
                const Divider(
                  color: Color.fromARGB(255, 189, 154, 17),
                  height: 30,
                  thickness: 2,
                  endIndent: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Francia.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('France',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Australia.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Australia',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Dinamarca.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      'Denmark',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Qatar2022Arabic',
                          color: Color.fromRGBO(134, 0, 55, 1)),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Tunez.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Tunisia',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
              ]),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 30)),
        Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 246, 237, 237),
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 200))),
              child: Column(children: [
                const Text('Grupo E',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Qatar2022Arabic',
                      color: Color.fromRGBO(134, 0, 55, 1),
                    )),
                const Divider(
                  color: Color.fromARGB(255, 189, 154, 17),
                  height: 30,
                  thickness: 2,
                  endIndent: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Espania.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Spain',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/CostaRica.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Costa Rica',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Alemania.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      'Germany',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Qatar2022Arabic',
                          color: Color.fromRGBO(134, 0, 55, 1)),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Japon.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Japan',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
              ]),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 30)),
        Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 246, 237, 237),
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 200))),
              child: Column(children: [
                const Text('Grupo F',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Qatar2022Arabic',
                      color: Color.fromRGBO(134, 0, 55, 1),
                    )),
                const Divider(
                  color: Color.fromARGB(255, 189, 154, 17),
                  height: 30,
                  thickness: 2,
                  endIndent: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Belgica.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Belgium',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Canada.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Canada',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Marruecos.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      'Morocco',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Qatar2022Arabic',
                          color: Color.fromRGBO(134, 0, 55, 1)),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Croacia.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Croatia',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
              ]),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 30)),
        Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 246, 237, 237),
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 200))),
              child: Column(children: [
                const Text('Grupo G',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Qatar2022Arabic',
                      color: Color.fromRGBO(134, 0, 55, 1),
                    )),
                const Divider(
                  color: Color.fromARGB(255, 189, 154, 17),
                  height: 30,
                  thickness: 2,
                  endIndent: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Brazil.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Brazil',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Serbia.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Serbia',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Suiza.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      'Switzerland',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Qatar2022Arabic',
                          color: Color.fromRGBO(134, 0, 55, 1)),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Camerun.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Cameroon',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
              ]),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 30)),
        Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 246, 237, 237),
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 200))),
              child: Column(children: [
                const Text('Grupo H',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Qatar2022Arabic',
                      color: Color.fromRGBO(134, 0, 55, 1),
                    )),
                const Divider(
                  color: Color.fromARGB(255, 189, 154, 17),
                  height: 30,
                  thickness: 2,
                  endIndent: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Portugal.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Portugal',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Ghana.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Ghana',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Uruguay.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      'Uruguay',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Qatar2022Arabic',
                          color: Color.fromRGBO(134, 0, 55, 1)),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Image(
                      image: AssetImage('assets/banderas/Corea.png'),
                      height: 50.0,
                      width: 58.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Korea Republic',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Qatar2022Arabic',
                            color: Color.fromRGBO(134, 0, 55, 1))),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ]),
    );
  }
}
