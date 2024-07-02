import 'package:flutter/material.dart';
import 'package:apk_mundial_qatar2022/constants.dart';
import 'package:apk_mundial_qatar2022/models/plants.dart';
import 'package:apk_mundial_qatar2022/ui/screens/detail_page.dart';
import 'package:apk_mundial_qatar2022/ui/screens/widgets/plant_widget.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;

    List<Plant> _plantList = Plant.plantList;

    //Plants category
    List<String> _plantTypes = [
      'Recomendado',
      'Estadiumns',
      'Grupos',
      'Jugadores',
      'Partidos hoy',
    ];

    //Toggle Favorite button
    bool toggleIsFavorated(bool isFavorited) {
      return !isFavorited;
    }

    return Scaffold(
        backgroundColor: const Color.fromRGBO(134, 0, 55, 1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      width: size.width * .9,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white.withOpacity(.6),
                          ),
                          const Expanded(
                              child: TextField(
                            showCursor: false,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              hintText: 'Buscar',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          )),
                          Icon(
                            Icons.mic,
                            color: Colors.white.withOpacity(.6),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: 50.0,
                width: size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _plantTypes.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Text(
                            _plantTypes[index],
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: selectedIndex == index
                                    ? FontWeight.bold
                                    : FontWeight.w300,
                                color: selectedIndex == index
                                    ? Constants.primaryColor
                                    : Colors.white.withOpacity(.6),
                                fontFamily: 'Qatar2022Arabic'),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: size.height * .3,
                child: ListView.builder(
                    itemCount: _plantList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: DetailPage(
                                    plantId: _plantList[index].plantId,
                                  ),
                                  type: PageTransitionType.bottomToTop));
                        },
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          width: 300,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.2),
                            border: Border.all(
                              color: Colors.white.withOpacity(.2),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                right: 20,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        bool isFavorited = toggleIsFavorated(
                                            _plantList[index].isFavorated);
                                        _plantList[index].isFavorated =
                                            isFavorited;
                                      });
                                    },
                                    icon: Icon(
                                      _plantList[index].isFavorated == true
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Color.fromARGB(255, 172, 16, 5),
                                    ),
                                    iconSize: 30,
                                  ),
                                ),
                              ),
                              Positioned(
                                // left: 50,
                                // right: 50,
                                // top: 50,
                                // bottom: 50,

                                child: Image.asset(_plantList[index].imageURL),
                              ),
                              Positioned(
                                bottom: 15,
                                left: 20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _plantList[index].category,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Qatar2022Arabic',
                                      ),
                                    ),
                                    Text(
                                      _plantList[index].plantName,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Qatar2022Arabic',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                padding: const EdgeInsets.only(left: 16, bottom: 20, top: 20),
                child: const Text(
                  'Nuevos Partidos',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: 'Qatar2022Arabic'),
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  height: size.height * .5,
                  child: ListView(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     PageTransition(
                          //         child: DetailPage(
                          //           plantId: plantList[index].plantId,
                          //         ),
                          //         type: PageTransitionType.bottomToTop));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Constants.primaryColor.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80.0,
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                          width: size.width,
                          child: ListView(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            scrollDirection: Axis.vertical,
                            physics: const BouncingScrollPhysics(),
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Text('Argentina'),
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Argentina.png'),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -4,
                                        left: 88,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            // random fecha

                                            Text(
                                              '18/12/2022',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text(
                                              'Argentina',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text('VS',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'Qatar2022Arabic')),
                                            Text(
                                              'Mexico',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Mexico.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     PageTransition(
                          //         child: DetailPage(
                          //           plantId: plantList[index].plantId,
                          //         ),
                          //         type: PageTransitionType.bottomToTop));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Constants.primaryColor.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80.0,
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                          width: size.width,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/ArabiaSaudita.png'),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -4,
                                        left: 76,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            // random fecha

                                            Text(
                                              '18/12/2022',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text(
                                              'Arabia Saudita',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text('VS',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'Qatar2022Arabic')),
                                            Text(
                                              'Polonia',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Polonia.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     PageTransition(
                          //         child: DetailPage(
                          //           plantId: plantList[index].plantId,
                          //         ),
                          //         type: PageTransitionType.bottomToTop));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Constants.primaryColor.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80.0,
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                          width: size.width,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Francia.png'),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -4,
                                        left: 88,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            // random fecha

                                            Text(
                                              '18/12/2022',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text(
                                              'Francia',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text('VS',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'Qatar2022Arabic')),
                                            Text(
                                              'Australia',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Australia.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     PageTransition(
                          //         child: DetailPage(
                          //           plantId: plantList[index].plantId,
                          //         ),
                          //         type: PageTransitionType.bottomToTop));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Constants.primaryColor.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80.0,
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                          width: size.width,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Marruecos.png'),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -4,
                                        left: 88,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            // random fecha

                                            Text(
                                              '18/12/2022',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text(
                                              'Marruecos',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text('VS',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'Qatar2022Arabic')),
                                            Text(
                                              'Croacia',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Croacia.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     PageTransition(
                          //         child: DetailPage(
                          //           plantId: plantList[index].plantId,
                          //         ),
                          //         type: PageTransitionType.bottomToTop));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Constants.primaryColor.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80.0,
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                          width: size.width,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Alemania.png'),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -4,
                                        left: 88,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            // random fecha

                                            Text(
                                              '18/12/2022',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text(
                                              'Alemania',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text('VS',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'Qatar2022Arabic')),
                                            Text(
                                              'Japon',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Japon.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     PageTransition(
                          //         child: DetailPage(
                          //           plantId: plantList[index].plantId,
                          //         ),
                          //         type: PageTransitionType.bottomToTop));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Constants.primaryColor.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80.0,
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                          width: size.width,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Espania.png'),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -4,
                                        left: 88,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            // random fecha

                                            Text(
                                              '18/12/2022',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text(
                                              'España',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text('VS',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'Qatar2022Arabic')),
                                            Text(
                                              'Costa Rica',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/CostaRica.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     PageTransition(
                          //         child: DetailPage(
                          //           plantId: plantList[index].plantId,
                          //         ),
                          //         type: PageTransitionType.bottomToTop));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Constants.primaryColor.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80.0,
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                          width: size.width,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Brazil.png'),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -4,
                                        left: 88,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            // random fecha

                                            Text(
                                              '18/12/2022',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text(
                                              'Brazil',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text('VS',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'Qatar2022Arabic')),
                                            Text(
                                              'Serbia',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Serbia.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     PageTransition(
                          //         child: DetailPage(
                          //           plantId: plantList[index].plantId,
                          //         ),
                          //         type: PageTransitionType.bottomToTop));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Constants.primaryColor.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80.0,
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                          width: size.width,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Dinamarca.png'),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 5,
                                        left: 88,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            // random fecha

                                            Text(
                                              '18/12/2022',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Qatar2022Arabic'),
                                            ),
                                            Text('VS',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'Qatar2022Arabic')),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 3,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 80.0,
                                          child: Image.asset(
                                              'assets/banderas/Tunez.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )

                  // child: ListView.builder(
                  //     itemCount: _plantList.length,
                  //     scrollDirection: Axis.vertical,
                  //     physics: const BouncingScrollPhysics(),
                  //     itemBuilder: (BuildContext context, int index) {
                  //       return GestureDetector(
                  //           onTap: () {
                  //             Navigator.push(
                  //                 context,
                  //                 PageTransition(
                  //                     child: DetailPage(
                  //                       plantId: _plantList[index].plantId,
                  //                     ),
                  //                     type: PageTransitionType.bottomToTop));
                  //           },
                  //           child:
                  //               PlantWidget(index: index, plantList: _plantList));
                  //     }),
                  ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Goleadores ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Qatar2022Arabic'),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 10),
                          child: const Text(
                            'Jugadores',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'Qatar2022Arabic'),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(left: 100)),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 10),
                          child: const Text(
                            'Seleccion',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'Qatar2022Arabic'),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(left: 10)),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 10),
                          child: const Text(
                            'Goles',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'Qatar2022Arabic'),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          children: const [
                            Text('Kylian Mbappe',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontFamily: 'Qatar2022Arabic')),
                            Padding(padding: EdgeInsets.only(left: 80)),
                            Image(
                                image:
                                    AssetImage('assets/banderas/Francia.png'),
                                width: 30,
                                height: 30),
                            Text('Fra',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontFamily: 'Qatar2022Arabic')),
                            Padding(padding: EdgeInsets.only(left: 72)),
                            Text('8',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontFamily: 'Qatar2022Arabic')),
                          ],
                        )),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: const [
                          Text('Lionel Messi',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 103)),
                          Image(
                              image:
                                  AssetImage('assets/banderas/Argentina.png'),
                              width: 30,
                              height: 30),
                          Text('Arg',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 70)),
                          Text('7',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: const [
                          Text('Julián Álvarez',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 92)),
                          Image(
                              image:
                                  AssetImage('assets/banderas/Argentina.png'),
                              width: 30,
                              height: 30),
                          Text('Arg',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 70)),
                          Text('4',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: const [
                          Text('Olivier Giroud',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 90)),
                          Image(
                              image: AssetImage('assets/banderas/Francia.png'),
                              width: 30,
                              height: 30),
                          Text('Fra',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 75)),
                          Text('4',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: const [
                          Text('Enner Valencia',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 80)),
                          Image(
                              image: AssetImage('assets/banderas/Ecuador.png'),
                              width: 30,
                              height: 30),
                          Text('Ecu',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 70)),
                          Text('3',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: const [
                          Text('Álvaro Morata',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 85)),
                          Image(
                              image: AssetImage('assets/banderas/Espania.png'),
                              width: 30,
                              height: 30),
                          Text('Esp',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 70)),
                          Text('3',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: const [
                          Text('Cody Gakpo',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 107)),
                          Image(
                              image: AssetImage('assets/banderas/Holanda.png'),
                              width: 30,
                              height: 30),
                          Text('Hol',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 70)),
                          Text('3',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: const [
                          Text('Marcus Rashford',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 62)),
                          Image(
                              image: AssetImage('assets/banderas/England.png'),
                              width: 30,
                              height: 30),
                          Text('Ing',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 70)),
                          Text('3',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: const [
                          Text('Richarlison',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 112)),
                          Image(
                              image: AssetImage('assets/banderas/Brazil.png'),
                              width: 30,
                              height: 30),
                          Text('Bra',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 70)),
                          Text('3',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: const [
                          Text('Bukayo Saka',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 98)),
                          Image(
                              image: AssetImage('assets/banderas/England.png'),
                              width: 30,
                              height: 30),
                          Text('Ing',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                          Padding(padding: EdgeInsets.only(left: 70)),
                          Text('3',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
