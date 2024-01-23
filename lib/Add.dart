import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:flutter_application_1/firestore/database.dart";
import "package:flutter_application_1/open.dart";

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  Stream? FoodStream;
  getontheload() async {
    FoodStream = await DatabaseMethods().getFoodDetails();
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Widget allFoodDetails() {
    return StreamBuilder(
        stream: FoodStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 6, top: 7),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => open()));
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(left: 6, right: 3),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://t4.ftcdn.net/jpg/00/49/38/95/360_F_49389597_6VboA8kRehV5naoKBLlvdeyf3Y8vclSZ.jpg'))),
                            ),
                            Column(
                              children: [
                                Text(
                                  "food:" + ds["food"],
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 19),
                                ),
                                Text(
                                  "persons:" + ds["persons"],
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Cooking time:" + ds["Cooking time"],
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                    //           ),

                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // );
                  })
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D47A1),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Feed_n_joy',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'Request Status',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    // child: Center(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    // child: Center(
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                            child: Text(
                          '2',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'New request',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Column(children: [
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Text(
                        '0',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Pending',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Column(children: [
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Text(
                        '10',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Completed',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                // margin: EdgeInsets.only(bottom: 2),
                color: Colors.white,
                child: Center(
                  child: Column(children: [
                    Expanded(child: allFoodDetails()),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
