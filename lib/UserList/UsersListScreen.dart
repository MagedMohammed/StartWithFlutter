import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class UserListScreen extends StatelessWidget {
  UserListScreen({super.key});
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Maged 1',
      phone: '0123456789',
    ),
    UserModel(
      id: 2,
      name: 'Maged 2',
      phone: '0123456789',
    ),
    UserModel(
      id: 3,
      name: 'Maged 3',
      phone: '0123456789',
    ),
    UserModel(
      id: 4,
      name: 'Maged 4',
      phone: '0123456789',
    ),
    UserModel(
      id: 5,
      name: 'Maged 5',
      phone: '0123456789',
    ),
    UserModel(
      id: 6,
      name: 'Maged 6',
      phone: '0123456789',
    ),
    UserModel(
      id: 1,
      name: 'Maged 1',
      phone: '0123456789',
    ),
    UserModel(
      id: 2,
      name: 'Maged 2',
      phone: '0123456789',
    ),
    UserModel(
      id: 3,
      name: 'Maged 3',
      phone: '0123456789',
    ),
    UserModel(
      id: 4,
      name: 'Maged 4',
      phone: '0123456789',
    ),
    UserModel(
      id: 5,
      name: 'Maged 5',
      phone: '0123456789',
    ),
    UserModel(
      id: 6,
      name: 'Maged 6',
      phone: '0123456789',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return userItem(users[index]);
            },
            separatorBuilder: (context, index) {
              return Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey,
              );
            },
            itemCount: users.length),
      ),
    );
  }

  Widget userItem(UserModel user) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            child: Text("${user.id}"),
            radius: 30,
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.name}',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
              Text(
                '${user.phone}',
                style: const TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
