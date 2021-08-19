import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final VoidCallback signOut;
  HomePage({required this.signOut});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Services'),
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
