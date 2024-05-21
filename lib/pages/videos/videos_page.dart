import 'package:flutter/material.dart';
import '../../data/videos_model.dart';
import '../../widgets/appbar/app_bar_widget.dart';
import '../../widgets/videos/video_widget.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Vidéos'),
      body: SingleChildScrollView(
        child: Column(
          children: videos.map((video) {
            return VideoWidget(
              photoProfil: video['photoProfil'],
              pseudo: video['pseudo'],
              duration: video['duration'],
              live: video['live'],
              videoUrl: video['videoUrl'],
              title: video['title'],
              likes: video['likes'],
            );
          }).toList(),
        ),
      ),
    );
  }
}
