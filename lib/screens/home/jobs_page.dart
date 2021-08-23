import 'package:flutter/material.dart';
import 'package:my_services/services/auth.dart';

class HomePage extends StatefulWidget {
  final VoidCallback signOut;
  final AuthBase auth;
  HomePage({required this.signOut, required this.auth});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jobs'),
        centerTitle: true,
        actions: [
          ElevatedButton.icon(
              onPressed: widget.signOut,
              icon: Icon(Icons.logout),
              label: Text('Logout')),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nothing to show',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Add new services first',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                    fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
