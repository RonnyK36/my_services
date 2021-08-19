import 'package:firebase_auth/firebase_auth.dart';

class MyUser {
  final String uid;
  MyUser({required this.uid});
}

abstract class AuthBase {
  Future<MyUser> currentUser();
  Future<MyUser> signInAnon();
  Future<void> signOut();
}

class Auth implements AuthBase {
  final _firebaseAuth = FirebaseAuth.instance;

  MyUser _userFromFirebase(User user) {
    return MyUser(uid: user.uid);
  }

  @override
  Future<MyUser> signInAnon() async {
    final authResult = await _firebaseAuth.signInAnonymously();
    return _userFromFirebase(authResult.user!);
  }

  @override
  Future<MyUser> currentUser() async {
    final user = _firebaseAuth.currentUser!;
    return _userFromFirebase(user);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
