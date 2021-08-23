import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_services/screens/home/jobs_page.dart';
import 'package:my_services/screens/sigin_page.dart';

class Authenticate extends StatefulWidget {
  // Authenticate({required this.auth});

  // final AuthBase auth;
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool isAuth = false;

  final _firebaseAuth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    // auth.signOut();
    // auth.signInAnon();
    // auth.currentUser();
    FirebaseAuth.instance.currentUser;
  }

  // late final AuthBase auth;

  Future<void> signinAnon() async {
    try {
      final authResult = await _firebaseAuth.signInAnonymously();

      // final authResult = await auth.signInAnon();
      print(authResult.user!.uid);
      setState(() {
        isAuth = true;
      });
    } catch (e) {
      setState(() {
        isAuth = false;
      });
      print(e.toString());
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      // await auth.signOut();
      setState(() {
        isAuth = false;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return isAuth
        ? JobsPage(
            signOut: signOut,
            // auth: Auth(),
          )
        : SignInPage(
            signInAnon: signinAnon,
            // auth: widget.auth,
          );
  }
}
