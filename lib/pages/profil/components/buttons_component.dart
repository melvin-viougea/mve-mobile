import 'package:flutter/material.dart';
import '../../../theme/colors.dart';
import '../../../widgets/profil/round_card_widget.dart';

class ButtonsComponent extends StatelessWidget {
  const ButtonsComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundCardWidget(
            textInside: 'Add Bio',
            cardColor: kLightGrey,
            textColor: kDarkGrey,
          ),
          RoundCardWidget(
            textInside: 'Add to story',
            cardColor: kLightGrey,
            textColor: kDarkGrey,
          ),
          RoundCardWidget(
            textInside: 'More',
            cardColor: kLightGrey,
            textColor: kDarkGrey,
          ),
        ],
      ),
    );
  }
}
