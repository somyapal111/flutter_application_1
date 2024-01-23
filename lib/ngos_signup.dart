import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/naviagtion1.dart';
import 'package:flutter_application_1/navigation.dart';

class signup1 extends StatefulWidget {
  const signup1({super.key});

  @override
  State<signup1> createState() => _signup1State();
}

class _signup1State extends State<signup1> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _loading = false;
  String _message = '';

  Future<void> _register() async {
    setState(() {
      _loading = true;
    });

    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      setState(() {
        _message = 'Registered successfully: ${userCredential.user!.email}';
      });

      // Navigate to home page after successful registration
      if (_message.startsWith('Registered')) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => naviagation1()),
        );
      }
    } catch (e) {
      setState(() {
        _message = 'Error: $e';
      });
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        // backgroundColor: Colors.red,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xff0D47A1),
                Color(0xff281534),
              ])),
              child: const Padding(
                padding: EdgeInsets.only(top: 56.0, left: 22),
                child: Text(
                  'Sign Up!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      )),
                  height: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .1,
                      right: 25,
                      left: 25,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter valid name';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Name',
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                filled: true,
                                prefixIcon: const Icon(Icons.call),
                                hintText: 'mobile',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter valid email-id';
                              } else {
                                return null;
                              }
                            },
                            controller: emailController,
                            decoration: InputDecoration(
                                filled: true,
                                prefixIcon: const Icon(Icons.email_outlined),
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter valid password';
                              } else {
                                return null;
                              }
                            },
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            height: 55,
                            width: 267,
                            child: ElevatedButton(
                              onPressed: _loading ? null : _register,
                              child: _loading
                                  ? CircularProgressIndicator()
                                  : Text(
                                      'Signup',
                                      style: TextStyle(
                                        fontSize: 30,
                                      ),
                                    ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            _message,
                            style: TextStyle(
                              color: _message.startsWith('Error')
                                  ? Colors.red
                                  : Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
