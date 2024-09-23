import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              child: Icon(
                Icons.supervised_user_circle,
                color: Colors.white,
              ),
              radius: 20.0,
              backgroundColor: Colors.blue,
            ),
            SizedBox(
              width: 18,
            ),
            Text(
              'Chat',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: const Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.blue,
                      radius: 30,
                    ),
                  ],
                )
              ],
            ), //User
          ],
        ),
      ),
    );
  }
}
// Todo: - What todo in this Screen
/*
1- Create Search Bar
2- Create Whose are Online
3- Create Messages List
 */
