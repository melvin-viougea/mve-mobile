import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../widgets/appbar/profil_app_bar_widget.dart';
import 'components/buttons_component.dart';
import 'components/header_component.dart';
import 'components/latest_component.dart';
import 'components/photos_component.dart';
import 'components/tab_component.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const ProfilAppBar(title: 'Profil'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderComponent(),
            const SizedBox(height: 10),
            const ButtonsComponent(),
            Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                height: 1,
                color: Colors.grey[300]),
            const SizedBox(height: 10),
            const TabComponent(),
            const SizedBox(height: 10),
            const LatestComponent(),
            const SizedBox(height: 10),
            const PhotosComponent(),
            const SizedBox(height: 10),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kColorPrimary,
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {},
      ),
    );
  }
}
