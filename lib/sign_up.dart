import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close,)),
              ],
            ),
          ),
          const Text(
            'Hire Me',
            style: TextStyle(
              fontFamily: 'Thasadith',
              fontWeight: FontWeight.bold,
              color: Color(0xff303952),
              fontSize: 50,
            ),
          ),
          Image.asset(
            height: 210,
            'assets/register_stock_nobg.png'),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff303952)),
                        borderRadius: BorderRadius.circular(17)),
                    labelText: "Full Name",
                    border: const OutlineInputBorder()),
              )),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff303952)),
                        borderRadius: BorderRadius.circular(17)),
                    labelText: "Username",
                    border: const OutlineInputBorder()),
              )),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff303952)),
                        borderRadius: BorderRadius.circular(17)),
                    labelText: "Password",
                    border: const OutlineInputBorder()),
              )),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: ElevatedButton(
              onPressed: () {
                final String email = emailController.text.trim();
                final String password = passwordController.text.trim();
                final String name = nameController.text.trim();

                if (email.isEmpty || password.isEmpty || name.isEmpty) {
                } else {
                  
                }
              },
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff303952),
                  fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: const Text("CONFIRM"),
            ),
          ),
        ],
      ),
    )));
  }
}