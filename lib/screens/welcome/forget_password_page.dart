import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../widgets/welcome/textfield_widget.dart';
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
        foregroundColor: Colors.deepPurple[900],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.deepPurple[900],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              'Forgot Password',
              style: TextStyle(
                color: Colors.deepPurple[900],
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Please enter your email address. You will receive a link to create a new password via email.',
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
                child: const Text('Send'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}