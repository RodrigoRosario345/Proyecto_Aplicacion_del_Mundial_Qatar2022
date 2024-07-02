import 'package:flutter/material.dart';
import 'package:apk_mundial_qatar2022/ui/screens/data.dart';

class DetailsPage extends StatelessWidget {
  final JugadoresInfo jugadorInfo;

  const DetailsPage({super.key, required this.jugadorInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(134, 0, 55, 1),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 300),
                        Text(
                          jugadorInfo.name,
                          style: const TextStyle(
                            fontFamily: 'Qatar2022Arabic',
                            fontSize: 56,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const Text(
                          'Jugador Top Profesional',
                          style: TextStyle(
                            fontFamily: 'Qatar2022Arabic',
                            fontSize: 31,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const Divider(color: Colors.white),
                        const SizedBox(height: 32),
                        Text(
                          jugadorInfo.description,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontFamily: 'Qatar2022Arabic',
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 32),
                        const Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 32.0),
                    child: Text(
                      'Galeria',
                      style: TextStyle(
                        fontFamily: 'Qatar2022Arabic',
                        fontSize: 25,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    height: 250,
                    padding: const EdgeInsets.only(left: 32.0),
                    child: ListView.builder(
                        itemCount: jugadorInfo.images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.network(
                                  jugadorInfo.images[index],
                                  fit: BoxFit.cover,
                                )),
                          );
                        }),
                  ),
                ],
              ),
            ),
            Positioned(
              right: -100,
              height: 450,
              width: 450,
              child: Hero(
                tag: jugadorInfo.position,
                child: Image.asset(jugadorInfo.iconImage),
              ),
            ),
            Positioned(
              top: 0,
              left: 32,
              child: Text(
                jugadorInfo.position.toString(),
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 247,
                  color: Colors.white.withOpacity(0.10),
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
