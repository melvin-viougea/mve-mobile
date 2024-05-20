import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class HeaderVideoWidget extends StatelessWidget {
  final String photoProfil;
  final String pseudo;
  final String duration;
  final bool live;
  const HeaderVideoWidget({
    Key? key,
    required this.photoProfil,
    required this.pseudo,
    required this.duration,
    required this.live,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: CircleAvatar(
              radius: 17,
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
              ],
            ),
          ),
          const SizedBox(width: 10),
          live == true
              ? SizedBox(
                  height: 30,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(kColorSecondary),
                      foregroundColor: WidgetStateProperty.all<Color>(kWhite),
                      padding:
                          WidgetStateProperty.all(const EdgeInsets.all(0)),
                    ),
                    child: const Text(
                      'Live',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              : Text(
                  duration,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
          const SizedBox(width: 10),
          SizedBox(
            height: 30,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all<Color>(Colors.grey.shade200),
                foregroundColor:
                WidgetStateProperty.all<Color>(kColorPrimary),
                padding: WidgetStateProperty.all(const EdgeInsets.all(0)),
              ),
              child: const Text(
                'Follow',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
