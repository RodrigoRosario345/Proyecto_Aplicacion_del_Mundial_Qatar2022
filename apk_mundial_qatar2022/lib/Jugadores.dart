// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:apk_mundial_qatar2022/ui/screens/details_Page.dart';
import 'package:apk_mundial_qatar2022/ui/screens/data.dart';
import 'package:apk_mundial_qatar2022/ui/screens/constants.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class Jugadores extends StatefulWidget {
  const Jugadores({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _JugadoresState createState() => _JugadoresState();
}

class _JugadoresState extends State<Jugadores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(134, 0, 55, 1),
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(134, 0, 55, 1),
          elevation: 0,
          title: const Text(
            'ARGENTINA',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Qatar2022Arabic',
              fontSize: 25,
            ),
          )),
      body: Container(
        alignment: Alignment.center,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Plantilla',
                        style: TextStyle(
                          fontFamily: 'Qatar2022Arabic',
                          fontSize: 44,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      DropdownButton<String>(
                        items: const [
                          DropdownMenuItem<String>(
                            child: Text(
                              'Jugadores',
                              style: TextStyle(
                                fontFamily: 'Qatar2022Arabic',
                                fontSize: 24,
                                color: Color(0x7cdbf1ff),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                        onChanged: (value) {},
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Image.asset(
                            'assets/drop_down_icon.png',
                          ),
                        ),
                        underline: const SizedBox(),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 500,
                padding: const EdgeInsets.only(left: 32),
                child: Swiper(
                  itemCount: jugadorInfo.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: const SwiperPagination(
                    builder:
                        DotSwiperPaginationBuilder(activeSize: 20, space: 8),
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) => DetailsPage(
                              jugadorInfo: jugadorInfo[index],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              const SizedBox(height: 80),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Color.fromARGB(255, 33, 88, 122),
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(height: 80),
                                      Text(
                                        jugadorInfo[index].name,
                                        style: const TextStyle(
                                          fontFamily: 'Qatar2022Arabic',
                                          fontSize: 22,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const Text(
                                        'Jugador Profesional',
                                        style: TextStyle(
                                          fontFamily: 'Qatar2022Arabic',
                                          fontSize: 20,
                                          color: Colors.white54,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const SizedBox(height: 32),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Ver mas',
                                            style: TextStyle(
                                              fontFamily: 'Qatar2022Arabic',
                                              fontSize: 18,
                                              color: secondaryTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: secondaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 52),
                            child: Hero(
                              tag: jugadorInfo[index].position,
                              child: Image.asset(
                                jugadorInfo[index].iconImage,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 24,
                            bottom: 60,
                            child: Text(
                              jugadorInfo[index].position.toString(),
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 200,
                                color: primaryTextColor.withOpacity(0.08),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
