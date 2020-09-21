import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Help {
  Help(this.title);
  String title;
}

class HelpModel extends ChangeNotifier {
  List<Help> helps = [];

  Future fetchHelps() async {
    await Firebase.initializeApp();
    final docs = await FirebaseFirestore.instance.collection('helps').get();
    final helps = docs.docs.map((doc) => Help(doc.data()['title'])).toList();
    this.helps = helps;
    notifyListeners();
  }
}
