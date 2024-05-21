import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:suhu_udara/logic/model/firebase_data.dart';

class FirebaseDataProvider extends ChangeNotifier {
  FirebaseData? _firebaseData;
  bool _error = false;

  FirebaseData? get firebaseData => _firebaseData;
  bool get error => _error;

  FirebaseDataProvider() {
    _fetchDataFromFirebase();
  }

  void _fetchDataFromFirebase() {
    DatabaseReference ref = FirebaseDatabase.instance.ref('/');
    ref.onValue.listen((event) {
      try {
        final data = event.snapshot.value as Map<dynamic, dynamic>;
        _firebaseData = FirebaseData.fromJson(Map<String, dynamic>.from(data));
      } catch (e) {
        _error = true;
      }
      notifyListeners();
    });
  }

  void updateRoofMoverStatus(bool newStatus) {
    DatabaseReference ref = FirebaseDatabase.instance.ref('/roofMoverStatus');
    ref.set(newStatus);
  }
}
