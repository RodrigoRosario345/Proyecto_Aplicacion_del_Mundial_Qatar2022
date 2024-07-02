import 'package:flutter/material.dart';
import 'package:apk_mundial_qatar2022/constants.dart';
import 'package:apk_mundial_qatar2022/ui/root_page.dart';
import 'package:apk_mundial_qatar2022/ui/screens/widgets/custom_textfield.dart';
import 'package:apk_mundial_qatar2022/ui/screens/signin_page.dart';
import 'package:page_transition/page_transition.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(134, 0, 55, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/signup.png'),
              const Text(
                'Registrarse',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontFamily: 'Qatar2022Arabic',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Introduzca email',
                  icon: Icon(Icons.alternate_email, color: Colors.white),
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'nombre completo',
                  icon: Icon(Icons.person, color: Colors.white),
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Introduzca contraseña',
                  icon: Icon(Icons.lock, color: Colors.white),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Center(
                    child: Text(
                      'Registrarse',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: 'Qatar2022Arabic'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('O',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Qatar2022Arabic')),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Constants.primaryColor),
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Image.asset('assets/images/google.png'),
                    ),
                    const Text(
                      'Registrarse con Google',
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 18.0,
                          fontFamily: 'Qatar2022Arabic'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const SignIn(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: 'Ya tienes cuenta? ',
                        style: TextStyle(
                          fontFamily: 'Qatar2022Arabic',
                          color: Constants.blackColor,
                        ),
                      ),
                      const TextSpan(
                        text: 'Inicia Sesion',
                        style: TextStyle(
                            color: Colors.blue, fontFamily: 'Qatar2022Arabic'),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
