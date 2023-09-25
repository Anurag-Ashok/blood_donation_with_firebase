import 'package:blood_donation_app/addDonor.dart';
import 'package:blood_donation_app/home.dart';
import 'package:blood_donation_app/updaeDonor.dart';
import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => home(),
      '/add': (context) => addUser(),
      '/update': (context) => updateDonor()
    },
    initialRoute: '/',
  ));
}
