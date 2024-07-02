import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:apk_mundial_qatar2022/constants.dart';
import 'package:apk_mundial_qatar2022/models/plants.dart';
import 'package:apk_mundial_qatar2022/ui/scan_page.dart';
import 'package:apk_mundial_qatar2022/ui/screens/cart_page.dart';
import 'package:apk_mundial_qatar2022/ui/screens/favorite_page.dart';
import 'package:apk_mundial_qatar2022/ui/screens/home_page.dart';
import 'package:apk_mundial_qatar2022/ui/screens/profile_page.dart';
import 'package:page_transition/page_transition.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Plant> favorites = [];
  List<Plant> myCart = [];

  int _bottomNavIndex = 0;

  //List of the pages
  List<Widget> _widgetOptions() {
    return [
      const HomePage(),
      FavoritePage(
        favoritedPlants: favorites,
      ),
      CartPage(
        addedToCartPlants: myCart,
      ),
      const ProfilePage(),
    ];
  }

  //List of the pages icons
  List<IconData> iconList = [
    Icons.home,
    Icons.person_search_outlined,
    Icons.grid_on,
    Icons.person,
  ];

  //List of the pages titles
  List<String> titleList = [
    'Home',
    'Selecciones',
    'Grupos',
    'Perfil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(134, 0, 55, 1),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleList[_bottomNavIndex],
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  fontFamily: 'Qatar2022Arabic'),
            ),
            const Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 30.0,
            )
          ],
        ),
        backgroundColor: const Color.fromRGBO(134, 0, 55, 1),
        elevation: 0.0,
      ),
      body: IndexedStack(
        index: _bottomNavIndex,
        children: _widgetOptions(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  child: const Scaffold(
                    backgroundColor: Color.fromRGBO(134, 0, 55, 1),
                    body: MainScreen(),
                  ),
                  type: PageTransitionType.bottomToTop));
        },
        child: Icon(
          Icons.sports_soccer,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 40.0,
        ),
        backgroundColor: Color.fromRGBO(134, 0, 55, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          splashColor: Color.fromARGB(255, 255, 255, 255),
          activeColor: Color.fromRGBO(134, 0, 55, 1),
          inactiveColor: Colors.black.withOpacity(.5),
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index;
              final List<Plant> favoritedPlants = Plant.getFavoritedPlants();
              final List<Plant> addedToCartPlants = Plant.addedToCartPlants();

              favorites = favoritedPlants;
              myCart = addedToCartPlants.toSet().toList();
            });
          }),
    );
  }
}
