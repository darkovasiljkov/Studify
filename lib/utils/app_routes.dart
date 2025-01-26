import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/home_screen.dart';
import '../screens/calendar_screen.dart';
import '../screens/task_details_screen.dart';
import '../screens/add_event_screen.dart';
import '../screens/location_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/task_list_screen.dart';

class AppRoutes {
  static final routes = {
    '/': (context) => LoginScreen(),
    '/home': (context) => HomeScreen(),
    '/calendar': (context) => CalendarScreen(),
    '/task-details': (context) => TaskDetailsScreen(),
    '/task-list': (context) => TaskListScreen(),
    '/add-event': (context) => AddEventScreen(),
    '/location': (context) => LocationScreen(),
    '/profile': (context) => ProfileScreen(),
    '/settings': (context) => SettingsScreen(),

  };
}
