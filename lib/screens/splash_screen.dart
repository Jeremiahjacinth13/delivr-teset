import 'package:delivr/constants.dart';
import 'package:delivr/widgets/primary_button.dart';
import 'package:delivr/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'splash_screen';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(children: <Widget>[
        Center(child: SvgPicture.asset('assets/icons/Logotipo.svg')),
        Center(child: SvgPicture.asset('assets/icons/Union.svg')),
        Positioned(
          bottom: 30.0,
          left: size.width * 0.1,
          child: PrimaryButton(
            size: size,
            child: Text('Continue'.toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 20.0)),
            onPressed: () =>
                Navigator.pushNamed(context, LoginScreen.routeName),
          ),
        )
      ]),
    ));
  }
}
