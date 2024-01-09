import 'package:flutter/material.dart';
import 'package:flutter_application_1/naviagtion1.dart';
import 'package:flutter_application_1/navigation.dart';

class option extends StatefulWidget {
  const option({super.key});

  @override
  State<option> createState() => _optionState();
}

class _optionState extends State<option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 131, 161, 243),
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
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => navigation()),
                );
              },
              child: const Text(
                "Post",
                style: TextStyle(
                    color: Color.fromARGB(255, 247, 247, 247),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 10),
          Text(
            'Add an Item',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Card(
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: TextField(
                maxLines: 6, //or null
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
          TextField(
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
          TextField(
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
              child: TextField(
                maxLines: 5, //or null
                decoration:
                    InputDecoration.collapsed(hintText: "Enter your text here"),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
