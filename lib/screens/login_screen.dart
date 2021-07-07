// import 'dart:ui';
import 'package:delivr/constants.dart';
import 'package:delivr/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(children: [
      Container(
          height: size.height * 0.56,
          child: Stack(
            children: <Widget>[
              Container(
                  width: size.width,
                  height: size.height * 0.37,
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                    center: Alignment.bottomCenter,
                    colors: [Colors.orange.withOpacity(0.5), kPrimaryColor],
                    stops: [0.4, 1],
                    radius: 0.7,
                  ))),
              Positioned(
                  child: Image.asset("assets/images/Image.png"),
                  top: 50.0,
                  left: size.width / 4.2),
              Positioned(
                  child: Image.asset("assets/images/Group 5.png"),
                  top: 200,
                  right: 70),
              Positioned(
                  child: Image.asset("assets/images/Group 6.png"),
                  top: 265,
                  left: 60),
            ],
          )),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
        child: Column(children: <Widget>[
          Center(child: SvgPicture.asset('assets/icons/Símbolo.svg')),
          SizedBox(height: 30.0),
          Text(
            'Connect with new people all across the globe',
            style:
                Theme.of(context).textTheme.headline3!.copyWith(fontSize: 40.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50.0),
          TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.grey.shade200)))),
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomLeft: Radius.circular(5.0)),
                        color: Colors.grey.shade100,
                      ),
                      padding: EdgeInsets.all(15.0),
                      width: 100.0,
                      child:
                          SvgPicture.asset("assets/icons/google-icon 1.svg")),
                  Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Sign in with Google",
                        style: TextStyle(color: Colors.black87, fontSize: 20),
                        textAlign: TextAlign.center,
                      ))
                ],
              ))
        ]),
      )
    ]));
  }
}
