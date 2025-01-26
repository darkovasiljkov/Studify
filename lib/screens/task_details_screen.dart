import 'package:flutter/material.dart';

class TaskDetailsScreen extends StatefulWidget {
  @override
  _TaskDetailsScreenState createState() => _TaskDetailsScreenState();
}

class _TaskDetailsScreenState extends State<TaskDetailsScreen> {
  bool isComplete = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Details', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.blue,  // primary color directly
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Task Title', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
            SizedBox(height: 10),
            Text('Project Submission', style: TextStyle(fontSize: 16, color: Colors.black)),
            SizedBox(height: 20),
            Text('Description', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
            SizedBox(height: 10),
            Text('Submit the final project documentation and code by 3:00 PM.', style: TextStyle(fontSize: 16, color: Colors.black)),
            SizedBox(height: 20),
            Text('Due Date', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
            SizedBox(height: 10),
            Text('January 25, 2025 - 3:00 PM', style: TextStyle(fontSize: 16, color: Colors.black)),
            SizedBox(height: 20),
            Text('Priority', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
            SizedBox(height: 10),
            Chip(label: Text('High', style: TextStyle(color: Colors.white)), backgroundColor: Colors.red),
            Spacer(),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  isComplete = !isComplete;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(isComplete ? 'Task marked as complete!' : 'Task marked as incomplete!')),
                );
              },
              icon: Icon(isComplete ? Icons.undo : Icons.check),
              label: Text(isComplete ? 'Undo Complete' : 'Mark as Complete'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,  // primary color directly
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Add the "View All Tasks" button here
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/task-list');  // Navigate to TaskListScreen
              },
              child: Text('View All Tasks'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,  // accent color directly
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
