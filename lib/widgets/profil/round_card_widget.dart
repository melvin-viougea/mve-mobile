import 'package:flutter/material.dart';

class RoundCardWidget extends StatelessWidget {
  final String textInside;
  final Color cardColor;
  final Color textColor;
  const RoundCardWidget({
    Key? key,
    required this.textInside,
    required this.cardColor,
    required this.textColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 110,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          textInside,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
