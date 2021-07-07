import 'package:delivr/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:delivr/screens/new_ticket.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
      alignment: Alignment.center,
      height: 70.0,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SvgPicture.asset("assets/icons/home-3-line-hover.svg"),
              SvgPicture.asset("assets/icons/file-list-2-line.svg"),
            ],
          ),
          Positioned(
            child: GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, NewTicketScreen.routeName),
              child: Container(
                child: SvgPicture.asset("assets/icons/add-box-line.svg"),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            left: size.width * 0.24,
            top: -40,
          ),
        ],
      ),
    );
  }
}
