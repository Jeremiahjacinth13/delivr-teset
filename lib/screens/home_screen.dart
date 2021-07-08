import 'package:delivr/widgets/bottom_navigation_bar.dart';
import 'package:delivr/widgets/list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivr/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:delivr/widgets/title.dart';
import 'package:delivr/models/Tickets.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home_screen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(),
        body: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.33,
              child: Stack(
                children: [
                  Container(
                      width: size.width,
                      height: size.height * 0.27,
                      decoration: BoxDecoration(
                          gradient: RadialGradient(colors: <Color>[
                        Colors.orange.withOpacity(0.7),
                        kPrimaryColor,
                      ], center: Alignment.bottomCenter, radius: 1.6))),
                  Positioned(
                    top: 80.0,
                    left: size.width * 0.05,
                    width: size.width * 0.9,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RichText(
                              text: TextSpan(
                                  text: 'Hello ',
                                  style: TextStyle(
                                      fontSize: kDefaultPadding * 1.2,
                                      height: 1.5),
                                  children: [
                                TextSpan(
                                    text: 'Jeremiah\n',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: "No tickets saved today already!",
                                    style: TextStyle(fontSize: 15.0)),
                              ])),
                          Image.asset("assets/images/Foto.png")
                        ]),
                  ),
                  Positioned(
                      left: size.width * 0.1,
                      top: 170.0,
                      child: Container(
                        width: size.width * 0.8,
                        padding: EdgeInsets.all(kDefaultPadding * 1),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SvgPicture.asset("assets/icons/Símbolo (1).svg"),
                              Container(
                                width: 1,
                                height: 40,
                                color: Colors.grey,
                              ),
                              Container(
                                  child: RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 14.0, height: 1.4),
                                          text: 'You have ',
                                          children: <TextSpan>[
                                    TextSpan(
                                      text: "14 tickets due\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: "for renewing at store",
                                    ),
                                  ])))
                            ]),
                      ))
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 0.55 * size.height,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.5),
              child: Column(children: <Widget>[
                MenuTitle(
                    title: "Your Tickets",
                    subtitle: "tickets available",
                    number: 10),
                Container(
                  height: 300.0,
                  child: ListView.separated(
                      itemBuilder: (BuildContext context, int index) =>
                          TicketItem(ticket: tickets[index]),
                      separatorBuilder: (BuildContext context, int index) =>
                          Divider(),
                      itemCount: tickets.length),
                )
              ]),
            )
          ],
        ));
  }
}
