import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:flutter_application_1/naviagtion1.dart";
import "package:flutter_application_1/navigation.dart";
import "package:flutter_application_1/signin.dart";

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String _displayName = '';

  @override
  void initState() {
    super.initState();
    loadUserProfile();
  }

  Future<void> loadUserProfile() async {
    User? user = _auth.currentUser;
    DocumentSnapshot userDoc =
        await _firestore.collection('foods').doc(user!.uid).get();

    setState(() {
      _displayName = userDoc['displayName'];
    });
  }

  Future<void> updateProfile(String newDisplayName) async {
    User? user = _auth.currentUser;
    await _firestore.collection('foods').doc(user!.uid).update({
      'displayName': newDisplayName,
    });

    loadUserProfile(); // Refresh the UI after updating the profile
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 66, 172),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => naviagation1()));
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text('Profile',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signin()));
              },
              icon: const Icon(Icons.logout_outlined))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white),
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/512/6915/6915987.png'))),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color: Colors.white,
                              ),
                              color: Colors.blue),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              buildTextField("Full Name", "admin", false),
              buildTextField("Email", "admin@gmail.com", false),
              buildTextField("Password", "*******", true),
              buildTextField("Location", "NEW DELHI", false),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => naviagation1()));
                    },
                    child: const Text(
                      'CANCEL',
                      style: TextStyle(
                          color: Colors.black, fontSize: 15, letterSpacing: 2),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => naviagation1()));
                      },
                      child: const Text(
                        'SAVE',
                        style: TextStyle(
                          color: Color.fromARGB(255, 4, 91, 148),
                          fontSize: 15,
                          letterSpacing: 2,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      child: TextField(
        obscureText: isPasswordTextField ? true : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  icon: const Icon(Icons.remove_red_eye, color: Colors.grey),
                  onPressed: () {},
                )
              : null,
          contentPadding: const EdgeInsets.only(bottom: 5),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
