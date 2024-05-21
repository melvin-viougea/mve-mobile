import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mve_mobile/screens/auth/sign_up_page.dart';
import '../../interface/login_interface.dart';
import '../../models/user_model.dart';
import '../../services/login_service.dart';
import '../../theme/colors.dart';
import '../../widgets/auth/textfield_widget.dart';
import '../tabs/tabs_screen.dart';
import 'forget_password_page.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailField = TextEditingController();
  final passwordField = TextEditingController();
  final ILogin loginService = LoginService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            height: 250,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.1),
              borderRadius: BorderRadius.circular(70),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 15,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              padding: const EdgeInsets.all(20),
              child: SvgPicture.asset(
                'assets/icon/logo.svg',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            height: 530,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Bon retour !',
                    style: TextStyle(
                      color: Color(0xFF6735D0),
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Connexion a votre compte',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 25),
                  TextFieldWidget(
                    fieldName: 'Adresse email',
                    fieldType: TextInputType.emailAddress,
                    fieldController: emailField,
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    fieldName: 'Mot de passe',
                    fieldType: TextInputType.visiblePassword,
                    fieldController: passwordField,
                    obscureText: true,
                  ),
                  const SizedBox(height: 25),
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(
                      width: double.infinity,
                      height: 47,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6735D0),
                        textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        foregroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                      onPressed: () async {
                        if (emailField.text.isNotEmpty &&
                            passwordField.text.isNotEmpty) {
                          UserModel? user = await loginService.login(
                              emailField.text,
                              passwordField.text);
                          if (user != null) {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (_) => TabsPage(), //TabsPage(user: // user),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                duration: Duration(seconds: 3),
                                content: Text('email or password incorrect'),
                              ),
                            );
                            return null;
                          }
                        }
                      },
                      child: const Text('Connexion'),
                    ),
                  ),
                  // const SizedBox(height: 10),
                  // ConstrainedBox(
                  //   constraints: const BoxConstraints.tightFor(
                  //     width: double.infinity,
                  //     height: 47,
                  //   ),
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: Colors.blueAccent,
                  //       textStyle: const TextStyle(fontSize: 17),
                  //       shape: const RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.all(Radius.circular(25)),
                  //       ),
                  //     ),
                  //     onPressed: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => const TabsPage(),
                  //         ),
                  //       );
                  //     },
                  //     child: const Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         FaIcon(FontAwesomeIcons.facebook),
                  //         SizedBox(width: 10),
                  //         Text('Connect with Facebook'),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(height: 10), celle pour la bouton fb
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 45,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgetPasswordScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Mot de passe oublié ?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 45,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pas de compte ?',
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Inscription',
                              style: TextStyle(
                                color: Color(0xFF6735D0),
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
