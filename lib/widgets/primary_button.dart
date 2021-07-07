import 'package:delivr/constants.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.onPressed,
      required this.child,
      required this.size})
      : super(key: key);

  final VoidCallback onPressed;
  final Widget child;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: child,
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            elevation: MaterialStateProperty.all(5.0),
            padding: MaterialStateProperty.all(EdgeInsets.all(kDefaultPadding)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            minimumSize:
                MaterialStateProperty.all(Size(size.width * 0.8, 50))));
  }
}
