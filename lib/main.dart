import 'package:delivr/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:delivr/screens/splash_screen.dart';
import 'package:delivr/screens/login_screen.dart';
import 'package:delivr/constants.dart';
import 'package:delivr/screens/new_ticket.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(Ticketly());
}

class Ticketly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ticketly",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        'splash_screen': (BuildContext context) => SplashScreen(),
        'login': (BuildContext context) => LoginScreen(),
        'home_screen': (BuildContext context) => HomeScreen(),
        'new_ticket': (BuildContext context) => NewTicketScreen(),
      },
      home: SplashScreen(),
    );
  }
}
