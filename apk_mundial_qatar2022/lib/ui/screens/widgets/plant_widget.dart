import 'package:flutter/material.dart';
import 'package:apk_mundial_qatar2022/constants.dart';
import 'package:apk_mundial_qatar2022/models/plants.dart';

class PlantWidget extends StatelessWidget {
  const PlantWidget({
    super.key,
    required this.index,
    required this.plantList,
  });

  final int index;
  final List<Plant> plantList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        child: Image.asset('assets/banderas/Argentina.png'),
                      ),
                    ),
                    const Positioned(
                      bottom: 5,
                      left: 88,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // random fecha

                          Text(
                            '18/12/2022',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontFamily: 'Qatar2022Arabic'),
                          ),
                          Text('VS',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
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
                        child: Image.asset('assets/banderas/Mexico.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        child: Image.asset('assets/banderas/Argentina.png'),
                      ),
                    ),
                    const Positioned(
                      bottom: 5,
                      left: 88,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // random fecha

                          Text(
                            '18/12/2022',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontFamily: 'Qatar2022Arabic'),
                          ),
                          Text('VS',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'Qatar2022Arabic')),
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
                        child: Image.asset('assets/banderas/Mexico.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
