import 'package:flutter/material.dart';

class PhotoCardWidget extends StatelessWidget {
  final double cardSize;
  final String photoUrl;
  const PhotoCardWidget({
    Key? key,
    required this.cardSize,
    required this.photoUrl,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardSize,
      height: cardSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage(photoUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
