import 'package:firebase_core/firebase_core.dart';
import 'package:first_app/home_screen.dart';
import 'package:first_app/register.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const MyLogin(),
      'register': (context)=> const MyRegister(),
      'home_screen': (context)=> const HomeScreen(),
    },
  ));
}


