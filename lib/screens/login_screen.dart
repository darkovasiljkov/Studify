import 'package:flutter/material.dart';
import '../utils/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.appName, style: AppConstants.headingStyle.copyWith(color: Colors.white)),
        backgroundColor: AppConstants.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome to ${AppConstants.appName}',
              style: AppConstants.headingStyle.copyWith(fontSize: 28, color: AppConstants.primaryColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppConstants.homeRoute);
              },
              style: ElevatedButton.styleFrom(
                textStyle: AppConstants.buttonTextStyle,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: AppConstants.primaryColor,
              ),
              child: Text('Login'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Add navigation to signup screen if needed
              },
              child: Text(
                'Don\'t have an account? Sign Up',
                style: TextStyle(color: AppConstants.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
