import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Add.dart';
import 'package:flutter_application_1/firestore/database.dart';
import 'package:flutter_application_1/naviagtion1.dart';
import 'package:flutter_application_1/navigation.dart';
import 'package:flutter_application_1/firestore_list.dart';
import 'package:flutter_application_1/utils/utilities.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';

class option extends StatefulWidget {
  const option({super.key});

  @override
  State<option> createState() => _optionState();
}

class _optionState extends State<option> {
  final postController = TextEditingController();
  final personController = TextEditingController();
  final timeController = TextEditingController();
  final addressController = TextEditingController();
  bool loading = false;
  final fireStore = FirebaseFirestore.instance.collection('foods');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 63, 182),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
            icon: const Icon(Icons.cancel_outlined)),
        title: const Text('Create new posts',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 26,
                color: Color.fromARGB(255, 255, 255, 255))),
        // actions: [
        //   OutlinedButton(
        //     onPressed: () {
        //       Navigator.pushReplacement(
        //         context,
        //         MaterialPageRoute(builder: (context) => navigation()),
        //       );
        //     },
        //     child: const Text(
        //       "Post",
        //       style: TextStyle(
        //           color: Color.fromARGB(255, 247, 247, 247),
        //           fontWeight: FontWeight.bold,
        //           fontSize: 16),
        //     ),
        //   ),
        // ]
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 30),
          Text(
            'Add an item',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Card(
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.all(3.0),
              child: TextFormField(
                controller: postController,
                maxLines: 5, //or null
                decoration:
                    InputDecoration.collapsed(hintText: "Enter your text here"),
              ),
            ),
          ),
          SizedBox(height: 20),
          const Center(
              child: Text(
            'No. of persons',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          )),
          TextFormField(
            controller: personController,
            decoration: InputDecoration(
              filled: true,
              hintText: 'Persons',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Time',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextFormField(
            controller: timeController,
            decoration: InputDecoration(
              filled: true,
              hintText: 'time',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Address',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Card(
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.all(3.0),
              child: TextFormField(
                controller: addressController,
                maxLines: 5, //or null
                decoration:
                    InputDecoration.collapsed(hintText: "Enter your text here"),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 55,
            width: 267,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 48, 87),
                    padding: const EdgeInsets.all(12.0),
                    shape: const StadiumBorder()),
                child: const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  String Id = randomAlphaNumeric(10);
                  Map<String, dynamic> foodInfoMap = {
                    "food": postController.text,
                    "id": Id,
                    "persons": personController.text,
                    "Cooking time": timeController.text,
                    "Address": addressController.text,
                  };
                  await DatabaseMethods()
                      .addFoodDetails(foodInfoMap, Id)
                      .then((value) {
                    Fluttertoast.showToast(
                        msg: "post added",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Color.fromARGB(255, 58, 57, 66),
                        textColor: Colors.white,
                        fontSize: 16.0);
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => navigation()));
                  setState(() {
                    loading = true;
                  });
                  // String id = DateTime.now().microsecondsSinceEpoch.toString();
                  // fireStore.doc(id).set({
                  //   'title': postController.text.toString(),
                  //   'id': id,
                  // }).then((value) {
                  //   setState(() {
                  //     loading = false;
                  //   });
                  //   utilities().toastMessage('post added');
                  // }).onError((error, stackTrace) {
                  //   setState(() {
                  //     loading = false;
                  //   });
                  //   utilities().toastMessage(error.toString());
                  // });
                }),
          ),
        ]),
      ),
    );
  }
}
