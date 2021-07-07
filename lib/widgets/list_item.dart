import 'package:delivr/constants.dart';
import 'package:flutter/material.dart';
import 'package:delivr/models/Tickets.dart';

class TicketItem extends StatelessWidget {
  const TicketItem({Key? key, required this.ticket}) : super(key: key);

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.grey.shade600,
        padding: EdgeInsets.all(kDefaultPadding / 2),
        action: SnackBarAction(
          label: "OK",
          onPressed: () {},
        ),
        content: Text(ticket.name),
      )),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RichText(
                text: TextSpan(
                    text: "${ticket.name}\n",
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              "Entered on ${ticket.dateCreated.day}/${ticket.dateCreated.month}/${ticket.dateCreated.year}",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.black54)),
                    ],
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 18.0, height: 1.5))),
            RichText(
                text: TextSpan(
                    text: "N",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                      text: ticket.price.toString(),
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0)),
                ])),
          ]),
    );
  }
}
