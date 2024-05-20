import 'package:flutter/material.dart';

class FormComponent extends StatelessWidget {
  const FormComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 40,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/image/profil/photo-1.webp'),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade400,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                filled: true,
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
                hintText: "What do you think ?",
                fillColor: Colors.white70,
                contentPadding: const EdgeInsets.only(left: 15),
              ),
            ),
          ),
          const SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: IconButton(
              icon: Icon(
                Icons.photo_library,
                color: Colors.grey[800],
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
