import 'package:flutter/material.dart';
import '../../theme/styles.dart';

class ProfilAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const ProfilAppBar({Key? key, required this.title}) : super(key: key);
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
        style: profilAppBarTitleStyle,
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.grey[800],
            ),
            onPressed: () {},
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
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
