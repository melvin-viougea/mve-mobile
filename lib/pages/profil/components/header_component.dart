import 'package:flutter/material.dart';
import '../../../theme/colors.dart';
import '../../../widgets/profil/round_card_widget.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          height: 240,
          decoration: const BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
            image: DecorationImage(
              image: AssetImage('assets/image/photo/photo-10.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 100,
          padding: const EdgeInsets.fromLTRB(17, 0, 23, 0),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.all(3),
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/image/profil/photo-1.webp'),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RoundCardWidget(
                            textInside: '18K Followers',
                            cardColor: kColorPrimary,
                            textColor: kWhite,
                          ),
                          RoundCardWidget(
                            textInside: '16K Following',
                            cardColor: Colors.grey,
                            textColor: kWhite,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                            child: Center(
                              child: Text(
                                'Graphic Design/Product Designer',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 32,
                            width: 110,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.edit,
                                  size: 20,
                                  color: Colors.grey[800],
                                ),
                                Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
