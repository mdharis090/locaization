import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            TextField(
             decoration: InputDecoration(
               label: Text("username"),
               hintText: "Enter user name",
               prefix: Icon(Icons.person),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
               )),
          ),
         SizedBox(
           height: 30,
         ),
          TextField(
            decoration: InputDecoration(
              label: Text("Password"),
              hintText: "Enter user password",
              prefix: Icon(Icons.password_rounded),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),

              )
            ),
          ),
       SizedBox(
         height: 20,
       ),

       ElevatedButton(onPressed: (){}, child: Text("Login")),

        ],
      ),
    );
  }
}
