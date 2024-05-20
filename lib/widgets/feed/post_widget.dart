import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class PostWidget extends StatelessWidget {
  final String photoProfil;
  final String pseudo;
  final String dateTime;
  final bool liked;
  final String photoPost;
  const PostWidget({
    Key? key,
    required this.photoProfil,
    required this.pseudo,
    required this.dateTime,
    required this.liked,
    required this.photoPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
            height: 1,
            color: Colors.grey[300],
          ),
          SizedBox(
            height: 40,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.lime,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(photoProfil),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        pseudo,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            dateTime,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            height: 2,
                            width: 2,
                            color: Colors.grey[700],
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            Icons.people,
                            size: 13,
                            color: Colors.grey[700],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                LikeButton(
                  isLiked: liked,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(photoPost),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 25,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 13,
                  backgroundImage: AssetImage(photoProfil),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade400,
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      filled: true,
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 10),
                      hintText: "Say something",
                      fillColor: Colors.white.withOpacity(0),
                      contentPadding: const EdgeInsets.all(16),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: IconButton(
                    iconSize: 11,
                    icon: Icon(
                      Icons.share,
                      color: Colors.grey[800],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
