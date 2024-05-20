import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import '../../models/story_model.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          StoryView(
              repeat: true,
              storyItems: storyItems,
              controller: controller,
              onVerticalSwipeComplete: (direction) {
                if (direction == Direction.down) {
                  Navigator.pop(context);
                }
              }),
          Container(
            padding: const EdgeInsets.only(
              top: 80,
              left: 16,
              right: 16,
            ),
            child: _buildProfileView(),
          )
        ],
      ),
    );
  }
}

Widget _buildProfileView() {
  return const Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage("assets/image/profil/photo-2.jpeg"),
      ),
      SizedBox(width: 16),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Not Grッ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              '40 minutes ago',
              style: TextStyle(
                color: Colors.white38,
              ),
            )
          ],
        ),
      )
    ],
  );
}
