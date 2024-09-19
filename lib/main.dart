import 'package:eliteclean_supervisor/views/confirmbooking.dart';
import 'package:eliteclean_supervisor/views/home.dart';
import 'package:eliteclean_supervisor/views/loginpage.dart';
import 'package:eliteclean_supervisor/views/otp.dart';
import 'package:eliteclean_supervisor/views/pendingbookings.dart';
import 'package:eliteclean_supervisor/views/servicedetai.dart';
import 'package:eliteclean_supervisor/views/view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EliteClean',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Define the initial route and the routes in the app
      initialRoute: '/',
      routes: {
        '/': (context) => Login(), // Splashscreen as the initial screen
        '/login': (context) => Login(),
        '/verify': (context) => Verify(), // otp route
        '/home': (context) => Home(), // otp route
        '/servicedetail': (context) => ServiceDetails(), // otp route
        '/confirmbooking': (context) => ConfirmBookingScreen(), // otp route
        '/pendingbooking': (context) => PendingBookingScreen(),
        '/viewbooking': (context) => ViewBooking(),
      },
    );
  }
}
