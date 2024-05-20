import 'package:flutter/material.dart';
import '../../models/notification_model.dart';
import '../../widgets/appbar/app_bar_widget.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Notifications'),
      body: SingleChildScrollView(
        child: Column(
          children: notifications.map((notification) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(notification['photoProfil']),
              ),
              title: RichText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  text: notification['pseudo'],
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    const TextSpan(text: ' '),
                    TextSpan(
                      text: notification['text'],
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              subtitle: Text(notification['date']),
              trailing: notification['photoPost'] == ''
                  ? SizedBox(
                      height: 30,
                      child: ElevatedButton(
                        child: const Text('Follow'),
                        onPressed: () {},
                      ),
                    )
                  : Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(notification['photoPost']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
