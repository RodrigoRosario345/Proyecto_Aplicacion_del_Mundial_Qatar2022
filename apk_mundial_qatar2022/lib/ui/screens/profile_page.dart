import 'package:flutter/material.dart';
import 'package:apk_mundial_qatar2022/constants.dart';
import 'package:apk_mundial_qatar2022/ui/screens/widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromRGBO(134, 0, 55, 1),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        ExactAssetImage('assets/Selecciones/Argentina.jpg'),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Constants.primaryColor.withOpacity(.5),
                      width: 5.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: size.width * .3,
                  child: Row(
                    children: [
                      Text(
                        'Rodrigo',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontFamily: ('Qatar2022Arabic'),
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                          height: 24,
                          child: Image.asset("assets/images/verified.png")),
                    ],
                  ),
                ),
                Text(
                  'RodrigoRosario@gmail.com',
                  style: TextStyle(
                      color: Colors.white.withOpacity(.8),
                      fontFamily: 'Qatar2022Arabic'),
                ),
                Divider(
                  color: Colors.white.withOpacity(.3),
                  thickness: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: size.height * .7,
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.white.withOpacity(.8),
                        ),
                        title: Text(
                          'Mi Perfil',
                          style: TextStyle(
                              color: Colors.white.withOpacity(.8),
                              fontFamily: 'Qatar2022Arabic'),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(.8),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Colors.white.withOpacity(.8),
                        ),
                        title: Text(
                          'Ajustes',
                          style: TextStyle(
                              color: Colors.white.withOpacity(.8),
                              fontFamily: 'Qatar2022Arabic'),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(.8),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.notifications,
                          color: Colors.white.withOpacity(.8),
                        ),
                        title: Text(
                          'Notificaciones',
                          style: TextStyle(
                              color: Colors.white.withOpacity(.8),
                              fontFamily: 'Qatar2022Arabic'),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(.8),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.chat,
                          color: Colors.white.withOpacity(.8),
                        ),
                        title: Text(
                          'Mensajes',
                          style: TextStyle(
                              color: Colors.white.withOpacity(.8),
                              fontFamily: 'Qatar2022Arabic'),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(.8),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.share,
                          color: Colors.white.withOpacity(.8),
                        ),
                        title: Text(
                          'Compartir',
                          style: TextStyle(
                              color: Colors.white.withOpacity(.8),
                              fontFamily: 'Qatar2022Arabic'),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(.8),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: Colors.white.withOpacity(.8),
                        ),
                        title: Text(
                          'Cerrar Sesión',
                          style: TextStyle(
                              color: Colors.white.withOpacity(.8),
                              fontFamily: 'Qatar2022Arabic'),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(.8),
                        ),
                      ),
                      // ProfileWidget(
                      //   icon: Icons.person,
                      //   title: 'Mi Perfil',
                      // ),
                      // ProfileWidget(
                      //   icon: Icons.settings,
                      //   title: 'Ajustes',
                      // ),
                      // ProfileWidget(
                      //   icon: Icons.notifications,
                      //   title: 'Notificaciones',
                      // ),
                      // ProfileWidget(
                      //   icon: Icons.chat,
                      //   title: 'Mensajes',
                      // ),
                      // ProfileWidget(
                      //   icon: Icons.share,
                      //   title: 'Compartir',
                      // ),
                      // ProfileWidget(
                      //   icon: Icons.logout,
                      //   title: 'cerrar sesión',
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
