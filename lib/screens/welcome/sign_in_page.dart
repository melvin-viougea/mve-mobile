import 'package:flutter/material.dart';
import 'package:mve_mobile/screens/welcome/sign_up_page.dart';
import '../../theme/colors.dart';
import '../../widgets/welcome/textfield_widget.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/photo/photo-11.jpeg"),
                fit: BoxFit.cover,
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
                  Text(
                    'Welcome back',
                    style: TextStyle(
                      color: Colors.deepPurple[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Login to your account',
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
                  ),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    fieldName: 'Mot de passe',
                    fieldType: TextInputType.visiblePassword,
                    fieldController: passwordField,
                  ),
                  const SizedBox(height: 25),
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(
                      width: double.infinity,
                      height: 47,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        textStyle: const TextStyle(fontSize: 17),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TabsPage(),
                          ),
                        );
                      },
                      child: const Text('Login'),
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
                        'Forgot your password ?',
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
                              'Dont\'t have a account ?',
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.orange,
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
