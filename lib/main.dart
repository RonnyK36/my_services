import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_services/screens/authenticate.dart';
import 'package:my_services/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Services',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Authenticate(
        auth: Auth(),
      ),
    );
  }
}
