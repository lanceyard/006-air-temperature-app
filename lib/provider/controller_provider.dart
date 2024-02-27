import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';

class ControllerProvider extends ChangeNotifier {
  void getEverything() {
    DatabaseReference _ref;
    _ref = FirebaseDatabase.instance.ref();
    _ref.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value;
      print("Debug: $data");
    });
  }
}
