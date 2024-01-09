import 'package:flutter/material.dart';
import 'package:flutter_application_1/Add.dart';
import 'package:flutter_application_1/naviagtion1.dart';

class open extends StatefulWidget {
  const open({super.key});

  @override
  State<open> createState() => _openState();
}

class _openState extends State<open> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 62, 102, 212),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const add()));
            },
            icon: const Icon(Icons.cancel_outlined)),
        title: const Text('Food Details',
            style: TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 255, 255, 255))),
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text(
                'Paneer Masala',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 50),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                ),
                child: Container(
                  width: 120,
                  height: 70,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/6915/6915987.png')),
                  ),
                ),
              ),
              Text(
                'Admin Portal-Ansh Pal',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            child: Column(
              children: [
                Text('Cooking time',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                Text(
                  '3:45 PM',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('No. of Persons',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                Text(
                  '23 Persons',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Address',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                Text(
                  'ITI Chauraha,Delhi',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 55,
            width: 267,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 1, 48, 87),
                  padding: const EdgeInsets.all(12.0),
                  shape: const StadiumBorder()),
              child: const Text(
                'Accept',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const naviagation1()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
