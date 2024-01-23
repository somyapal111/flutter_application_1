import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference _collection = FirebaseFirestore.instance.collection('items');

  Future<void> addItem(String name) async {
    await _collection.add({'name': name});
  }

  Future<List<String>> getItems() async {
    var snapshot = await _collection.get();
    return snapshot.docs.map((doc) => doc['name'].toString()).toList();
  }
}
