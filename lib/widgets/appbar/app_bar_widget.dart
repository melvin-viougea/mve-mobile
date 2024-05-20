import 'package:flutter/material.dart';
import 'package:mve_mobile/screens/welcome/sign_in_page.dart';
import '../../theme/styles.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MyAppBar({Key? key, required this.title}) : super(key: key);

  void openSigninPage(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const SignInScreen(),
      ),
          (route) => false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white.withOpacity(0),
      centerTitle: false,
      title: Text(
        title,
        style: appBarTitleStyle,
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey[800],
            ),
            onPressed: () {
              openSigninPage(context);
            },
          ),
        ),
        const SizedBox(width: 15),
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: IconButton(
            icon: Icon(
              Icons.mail,
              color: Colors.grey[800],
            ),
            onPressed: () {
              openSigninPage(context);
            },
          ),
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}