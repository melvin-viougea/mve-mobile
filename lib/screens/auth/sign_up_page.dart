import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../widgets/auth/textfield_widget.dart';
import '../tabs/tabs_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailField = TextEditingController();
  final passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: const Color(0xFF6735D0),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF6735D0),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                'Création de compte',
                style: TextStyle(
                  color: Color(0xFF6735D0),
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 50),
              TextFieldWidget(
                  fieldName: 'Prénom',
                  fieldController: emailField,
                  fieldType: TextInputType.text,
                  obscureText: false,
              ),
              const SizedBox(height: 10),
              TextFieldWidget(
                  fieldName: 'Email',
                  fieldController: emailField,
                  fieldType: TextInputType.emailAddress,
                  obscureText: false,
              ),
              const SizedBox(height: 10),
              TextFieldWidget(
                  fieldName: 'Téléphone',
                  fieldController: emailField,
                  fieldType: TextInputType.number,
                  obscureText: false,
              ),
              const SizedBox(height: 10),
              TextFieldWidget(
                  fieldName: 'Mot de passe',
                  fieldController: passwordField,
                  fieldType: TextInputType.visiblePassword,
                  obscureText: true,
              ),
              const SizedBox(height: 40),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TabsPage(),
                      ),
                    );
                  },
                  child: const Text('Inscription'),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'En cliquant sur S\'inscrire, vous acceptez les conditions générales suivantes sans réserve',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
