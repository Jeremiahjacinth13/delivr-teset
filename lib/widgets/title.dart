import 'package:flutter/material.dart';

class MenuTitle extends StatelessWidget {
  const MenuTitle(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.number})
      : super(key: key);

  final String title, subtitle;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black87),
                      children: <TextSpan>[
                    TextSpan(
                        text: "$number ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "$subtitle")
                  ]))
            ],
          ),
          SizedBox(height: 5.0),
          Divider(),
        ],
      ),
    );
  }
}
