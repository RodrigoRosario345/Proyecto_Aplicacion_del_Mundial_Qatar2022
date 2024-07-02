import 'package:flutter/material.dart';
import 'package:apk_mundial_qatar2022/constants.dart';
import 'package:apk_mundial_qatar2022/ui/screens/widgets/custom_textfield.dart';
import 'package:apk_mundial_qatar2022/ui/screens/signin_page.dart';
import 'package:page_transition/page_transition.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

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
              Image.asset('assets/images/reset-password.png'),
              const Text(
                'Has olvidado tu contraseña',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontFamily: 'Qatar2022Arabic',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Indroduzca email',
                  icon: Icon(Icons.alternate_email,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 233, 165, 75),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Center(
                    child: Text(
                      'Reset Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Qatar2022Arabic',
                      ),
                    ),
                  ),
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
                      const TextSpan(
                        text: 'Ya tienes cuenta? ',
                        style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Qatar2022Arabic',
                        ),
                      ),
                      TextSpan(
                        text: 'Iniciar sesión',
                        style: TextStyle(
                          color: Constants.primaryColor,
                          fontFamily: 'Qatar2022Arabic',
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
