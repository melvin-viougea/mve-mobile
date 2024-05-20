import 'package:flutter/material.dart';
import '../../screens/story/story_screen.dart';

class StoryWidget extends StatelessWidget {
  final String photoUrl;
  final Color color;
  final String pseudo;
  const StoryWidget({
    Key? key,
    required this.photoUrl,
    required this.color,
    required this.pseudo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.all(1),
      margin: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: color,
          width: 2,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StoryScreen(),
                fullscreenDialog: true,
              ),
            );
          },
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(photoUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.3),
                child: Center(
                  child: Text(
                    pseudo,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
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
