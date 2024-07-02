import 'package:flutter/material.dart';
import 'package:apk_mundial_qatar2022/constants.dart';
import 'package:apk_mundial_qatar2022/ui/root_page.dart';
import 'package:apk_mundial_qatar2022/ui/screens/forgot_password.dart';
import 'package:apk_mundial_qatar2022/ui/screens/signup_page.dart';
import 'package:apk_mundial_qatar2022/ui/screens/widgets/custom_textfield.dart';
import 'package:page_transition/page_transition.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
              Image.asset('assets/images/signin.png'),
              const Text(
                'Iniciar sesión',
                style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: 'Qatar2022Arabic'),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Introduzca email',
                  icon: Icon(Icons.alternate_email, color: Colors.white),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Introduzca contraseña',
                  icon: Icon(Icons.lock, color: Colors.white),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const RootPage(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Center(
                    child: Text(
                      'Iniciar sin registrarse',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: 'Qatar2022Arabic'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const ForgotPassword(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      const TextSpan(
                        text: '¿olvidaste contraseña? ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 105, 191),
                            fontFamily: 'Qatar2022Arabic'),
                      ),
                      TextSpan(
                        text: 'Restablecer aquí',
                        style: TextStyle(
                          color: Constants.primaryColor,
                          fontFamily: 'Qatar2022Arabic',
                        ),
                      ),
                    ]),
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
                    child: Text('OR'),
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
                      'Inicia sesión con Google',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 18.0,
                        fontFamily: 'Qatar2022Arabic',
                      ),
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
                          child: const SignUp(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      const TextSpan(
                        text: 'Crear Cuenta ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 105, 191),
                        ),
                      ),
                      TextSpan(
                        text: 'Registro',
                        style: TextStyle(
                          color: Constants.primaryColor,
                        ),
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
