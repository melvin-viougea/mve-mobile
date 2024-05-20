import 'package:flutter/material.dart';

class AddStoryWidget extends StatelessWidget {
  final String photoUrl;
  const AddStoryWidget({Key? key, required this.photoUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.all(1),
      margin: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
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
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[100],
                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      size: 25,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
