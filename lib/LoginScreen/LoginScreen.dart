import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
bool isChecked = false;
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login Fourm',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (value) {
                print(value);
              },
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: MaterialButton(
                  onPressed: (){
                    isChecked = !isChecked;
                  },
                  child: isChecked? Icon(Icons.remove_red_eye) : Icon(Icons.remove_red_eye_outlined),
                )
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 16.0),
            Container(
              color: Colors.blue,
              width: double.infinity,
              child: MaterialButton(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {
                  submit();
                },
                height: 50.0,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Text(
                  "don't have account?",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  void submit() {
    print(emailController.text);
    print(passwordController.text);
  }

}
