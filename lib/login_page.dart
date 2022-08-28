import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:provider/provider.dart';
import 'package:login_pages_etc/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
 State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // const LoginPage({ Key? key }) : super(key: key);
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
      child: Column(
        children: <Widget>[
          Image.asset('assets/hirehire.png'),
          Form(
            child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(bottom: 15, right: 15, left: 15),
                    child: TextFormField(
                      controller: userController,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey)),
                          hintText: ("Username"),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xff303952),
                          ),
                          border: OutlineInputBorder()),
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey)),
                          hintText: ("Password"),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xff303952),
                          ),
                          border: OutlineInputBorder()),
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: ElevatedButton(
                      onPressed: () {
                        var username = userController.text.trim();
                        var password = passwordController.text.trim();
 
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff303952),
                          fixedSize: const Size(200, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: const Text("LOGIN"),
                    )),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp(),));
                  },
                  child: const Text("Don't have account yet? Register now!",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                )
              ],
            ),
          )
        ],
      ),
    )));
  }
}