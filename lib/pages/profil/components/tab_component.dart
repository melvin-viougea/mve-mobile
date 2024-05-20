import 'package:flutter/material.dart';
import '../../../theme/styles.dart';

class TabComponent extends StatelessWidget {
  const TabComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Posts',
            style: profilTabStyle,
          ),
          Text(
            'Photos',
            style: profilTabSelectedStyle,
          ),
          Text(
            'Stories',
            style: profilTabStyle,
          ),
          Text(
            'Friends',
            style: profilTabStyle,
          ),
        ],
      ),
    );
  }
}
