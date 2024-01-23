import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addFoodDetails(Map<String, dynamic> foodInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("foods")
        .doc(id)
        .set(foodInfoMap);
  }

  Future<Stream<QuerySnapshot>> getFoodDetails() async {
    return await FirebaseFirestore.instance.collection("foods").snapshots();
  }
}
