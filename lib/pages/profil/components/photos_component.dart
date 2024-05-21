import 'package:flutter/material.dart';
import '../../../data/all_photos_model.dart';
import '../../../theme/styles.dart';
import '../../../widgets/profil/photo_card_widget.dart';

class PhotosComponent extends StatelessWidget {
  const PhotosComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screendWidth = MediaQuery.of(context).size.width;
    double cardSize = (screendWidth - 60) / 3;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'May',
            style: profilSubTitleStyle,
          ),
          const SizedBox(height: 15),
          Wrap(
            runSpacing: 10,
            spacing: 10,
            children: allPhotos.map((post) {
              return PhotoCardWidget(
                cardSize: cardSize,
                photoUrl: post['photoPost'],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
