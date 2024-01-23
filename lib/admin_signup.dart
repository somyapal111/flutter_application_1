import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation.dart';
import 'package:flutter_application_1/utils/utilities.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
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
    return Scaffold(
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
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Name',
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
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
                    Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter valid email-id';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              prefixIcon: const Icon(Icons.email_outlined),
                              hintText: 'Email',
                              // helperText: 'enter email e.g admin@gmail.com',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter valid password';
                            } else {
                              return null;
                            }
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.password_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    // GestureDetector(
                    //   onTap: () async {
                    //     if (_formkey.currentState!.validate()) {
                    //       setState(() {
                    //         email = emailController.text;
                    //         password = passwordController.text;
                    //         name = nameController.text;
                    //       });
                    //     }
                    //     // registration();
                    //   },
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

                    SizedBox(height: 30),
                    const Column(children: [
                      Text(
                        "-or-",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 19,
                        ),
                      ),
                      Text("Sign up with",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 19,
                          )),
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/2048px-Google_%22G%22_logo.svg.png')),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Logo_of_Twitter.svg/512px-Logo_of_Twitter.svg.png')),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://static.vecteezy.com/system/resources/previews/013/901/773/non_2x/facebook-icon-ios-facebook-social-media-logo-on-white-background-free-free-vector.jpg')),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
