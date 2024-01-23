import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/option.dart';

class firestore_list extends StatefulWidget {
  const firestore_list({super.key});

  @override
  State<firestore_list> createState() => _firestore_listState();
}

class _firestore_listState extends State<firestore_list> {
  final auth = FirebaseAuth.instance;
  final editController = TextEditingController();
  final fireStore = FirebaseFirestore.instance.collection('users').snapshots();
//  @override
//   void initState();
//   // TODO: implement initState
//   super.initState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 47, 80),
        title: const Text(
          'Feed-n-joy',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          StreamBuilder<QuerySnapshot>(
              stream: fireStore,
              builder: (BuildContext_context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting)
                  return CircularProgressIndicator();
                if (snapshot.hasError) return Text('Some Error');
                return Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(
                            snapshot.data!.docs[index]['title'].toString()),
                      );
                    },
                  ),
                );
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => option()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
