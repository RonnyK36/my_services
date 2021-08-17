import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_services/widgets/signin_buttons.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('My Services'),
        centerTitle: true,
        elevation: 0,
      ),
      body: _buildSignInContent(context),
    );
  }

  Container _buildSignInContent(context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create an Account',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            signInButton(
              true,
              'images/google-logo.png',
              () {},
              'Sign in with google',
              Colors.black,
              Colors.white,
            ),
            SizedBox(height: 20),
            signInButton(
              true,
              'images/facebook-logo.png',
              () {},
              'Sign in with facebook',
              Colors.white,
              Colors.indigo,
            ),
            SizedBox(height: 20),
            signInButton(
              false,
              '',
              () {},
              'Sign in with email',
              Colors.white,
              Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'or',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            Divider(
                thickness: 1,
                height: 20,
                indent: 20,
                endIndent: 20,
                color: Colors.indigo),
            SizedBox(height: 20),
            signInButton(
              false,
              '',
              () {},
              'Anonymous signin',
              Colors.white,
              Colors.blueGrey,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
