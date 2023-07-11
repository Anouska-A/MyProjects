import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/login.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Logout'),
          onPressed: (){
            FirebaseAuth.instance.signOut().then((value) {
              debugPrint("Signed Out");
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyLogin()));
            });
          },

        )
      )
    );
  }
}
