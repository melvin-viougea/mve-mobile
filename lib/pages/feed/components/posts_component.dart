import 'package:flutter/material.dart';
import '../../../models/posts_model.dart';
import '../../../widgets/feed/post_widget.dart';

class PostsComponent extends StatelessWidget {
  const PostsComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: posts.map((post) {
        return PostWidget(
          photoProfil: post['photoProfil'],
          pseudo: post['pseudo'],
          dateTime: post['dateTime'],
          liked: post['liked'],
          photoPost: post['photoPost'],
        );
      }).toList(),
    );
  }
}
