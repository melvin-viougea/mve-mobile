import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../widgets/welcome/textfield_widget.dart';
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
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                'Create an account',
                style: TextStyle(
                  color: Colors.deepPurple[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 50),
              TextFieldWidget(
                  fieldName: 'Username',
                  fieldController: emailField,
                  fieldType: TextInputType.text),
              const SizedBox(height: 10),
              TextFieldWidget(
                  fieldName: 'Email',
                  fieldController: emailField,
                  fieldType: TextInputType.emailAddress),
              const SizedBox(height: 10),
              TextFieldWidget(
                  fieldName: 'Phone',
                  fieldController: emailField,
                  fieldType: TextInputType.number),
              const SizedBox(height: 10),
              TextFieldWidget(
                  fieldName: 'Date of birth',
                  fieldController: emailField,
                  fieldType: TextInputType.text),
              const SizedBox(height: 10),
              TextFieldWidget(
                  fieldName: 'Password',
                  fieldController: passwordField,
                  fieldType: TextInputType.visiblePassword),
              const SizedBox(height: 40),
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
                  child: const Text('Sign Up'),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'By clicking Sign Up, you agree to the following Terms and Conditions without reservation',
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
