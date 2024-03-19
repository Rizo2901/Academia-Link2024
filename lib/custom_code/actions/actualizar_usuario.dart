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

Future actualizarUsuario(
    String uid,
    String newEmailAddress,
    String newName,
    String newRol,
    String newApellido1,
    String newApellido2,
    String newCedula,
    String randomApp) async {
  await Firebase.initializeApp(
      name: randomApp, options: Firebase.app().options);

  CollectionReference<Map<String, dynamic>> coleccion =
      FirebaseFirestore.instance.collection('users');

  await coleccion.doc(uid).update({
    'email': newEmailAddress,
    'display_name': newName,
    'rol': newRol,
    'apellido1': newApellido1,
    'apellido2': newApellido2,
    'cedula': newCedula,
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
