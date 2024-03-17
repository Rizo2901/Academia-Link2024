// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future crearUsuario(String emailAddress, String name, String password,
    String randomApp, String rol, String apellido1, String apellido2) async {
  DateTime hoy = DateTime.now();
  FirebaseApp app = await Firebase.initializeApp(
      name: randomApp, options: Firebase.app().options);

  UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
      .createUserWithEmailAndPassword(email: emailAddress, password: password);

  String? uid = userCredential.user?.uid;

  final CollectionReference<Map<String, dynamic>> coleccion =
      FirebaseFirestore.instance.collection('users');
  coleccion.doc(uid).set({
    'uid': uid,
    'email': emailAddress,
    'display_name': name,
    'created_time': hoy,
    'rol': rol,
    'apellido1': apellido1,
    'apellido2': apellido2,
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
