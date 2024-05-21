import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../widgets/auth/textfield_widget.dart';
import '../tabs/tabs_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final emailField = TextEditingController();

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
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              'Mot de passe oublié',
              style: TextStyle(
                color: Color(0xFF6735D0),
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Veuillez entrer votre adresse e-mail. Vous recevrez un lien pour créer un nouveau mot de passe.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 30),
            TextFieldWidget(
                fieldName: 'Adresse email',
                fieldController: emailField,
                fieldType: TextInputType.emailAddress),
            const SizedBox(height: 30),
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
                child: const Text('Envoyé'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}