
import 'package:flutter/material.dart';


import 'views/splashscreen.dart';  // Import your LoginPage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        '/': (context) => Login(),  // Splashscreen as the initial screen
        '/login': (context) => Login(),
        '/verify': (context) => Verify(), // otp route
              '/home': (context) => Home(), // otp route
     '/servicedetail': (context) => ServiceDetails(), // otp route
     '/selectpackage': (context) => SelectPackage(),
      '/confirmbooking': (context) => ConfirmBookingScreen(), // otp route
'/pendingbooking': (context) => PendingBookingScreen(),
'/viewbooking': (context) => ViewBooking(),
      },
    );
  }
}
