import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      //EdgeInsetsGeometry
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Login Fourm',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),

              ),
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (value){
                print(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
