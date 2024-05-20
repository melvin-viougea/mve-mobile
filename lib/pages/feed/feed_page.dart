import 'package:flutter/material.dart';
import '../../widgets/appbar/app_bar_widget.dart';
import 'components/stories_component.dart';
import 'components/form_component.dart';
import 'components/posts_component.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        title: 'Feed',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StoriesComponent(),
            SizedBox(height: 10),
            FormComponent(),
            SizedBox(height: 10),
            PostsComponent()
          ],
        ),
      ),
    );
  }
}
