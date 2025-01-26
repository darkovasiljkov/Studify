import 'package:flutter/material.dart';

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.blue,  // primary color directly
      ),
      body: Center(
        child: Text('Here will be the list of tasks.', style: TextStyle(fontSize: 16, color: Colors.black)),
      ),
    );
  }
}
