import 'package:flutter/material.dart';
import 'package:apk_mundial_qatar2022/ui/screens/widgets/GrupoA.dart';
import 'package:apk_mundial_qatar2022/ui/screens/widgets/GrupoB.dart';
import 'package:apk_mundial_qatar2022/ui/screens/widgets/GrupoC.dart';

class FixtureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(134, 0, 55, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(134, 0, 55, 1),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20.0),
            child: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.white,
              tabs: const [
                Tab(
                  child: Text('20 Nov'),
                ),
                Tab(
                  child: Text('21 Nov'),
                ),
                Tab(
                  child: Text('22 Nov'),
                ),
                Tab(
                  child: Text('Todos'),
                ),
                Tab(
                  child: Text('23 Nov'),
                ),
                Tab(
                  child: Text('24 Nov'),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: 2000,
            child: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      GrupoB(),
                      GrupoA(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      GrupoB(),
                      GrupoA(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      GrupoB(),
                      GrupoA(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      GrupoB(),
                      GrupoA(),
                      GrupoC(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      GrupoB(),
                      GrupoA(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      GrupoB(),
                      GrupoA(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
