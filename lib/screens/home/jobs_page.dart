import 'package:flutter/material.dart';

class JobsPage extends StatefulWidget {
  final VoidCallback signOut;
  // final AuthBase auth;
  JobsPage({required this.signOut});

  @override
  _JobsPageState createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
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
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
    );
  }
}
