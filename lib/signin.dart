import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/forgotpassword.dart';
import 'package:flutter_application_1/navigation.dart';
import 'package:flutter_application_1/admin_signup.dart';
import 'package:flutter_application_1/two_option.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _loading = false;
  String _message = '';

  Future<void> _signIn() async {
    setState(() {
      _loading = true;
    });

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      setState(() {
        _message = 'Signed in successfully: ${userCredential.user!.email}';
      });

      // Navigate to home page after successful sign-in
      if (_message.startsWith('Signed in')) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => navigation()),
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
        body: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff0D47A1),
              Color(0xff281534),
            ])),
            child: const Padding(
              padding: EdgeInsets.only(top: 70.0, left: 22),
              child: Text(
                'Sign In!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
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
                  right: 20,
                  left: 20,
                ),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Form(
                          child: Column(
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter the valid Email-id';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    filled: true,
                                    // prefixIcon:Icon(Icons.email_outlined),
                                    hintText: 'Email-id',
                                    hintStyle: const TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    )),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter the valid Password';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    filled: true,
                                    hintText: 'Password',
                                    hintStyle: const TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ForgotPasswordPage()),
                                );
                              },
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 55,
                          width: 300,
                          child: ElevatedButton(
                            onPressed: _loading ? null : _signIn,
                            child: _loading
                                ? CircularProgressIndicator()
                                : Text(
                                    'Sign In',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Color.fromARGB(255, 4, 46, 145)),
                                  ),
                          ),
                        ),
                        Text(
                          _message,
                          style: TextStyle(
                            color: _message.startsWith('Error')
                                ? Colors.red
                                : Colors.green,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                const Text(
                                  "Don't have a account?",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 14),
                                ),
                                OutlinedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const two()),
                                    );
                                  },
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  child: const Text(
                                    "Sign up",
                                    style: TextStyle(
                                        color: Color(0xff0D47A1),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ))
                      ]),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
