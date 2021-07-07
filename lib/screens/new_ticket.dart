import 'package:delivr/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewTicketScreen extends StatelessWidget {
  static String routeName = 'new_ticket';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(kDefaultPadding * 1.5),
        child: Column(children: <Widget>[
          Center(
            child: Container(
                width: size.width * 0.7,
                child: Text("Preencha os dados do boleto",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 25.0))),
          ),
          SizedBox(height: 30.0),
          TicketCreateField(
            iconSrc: "assets/icons/file-text-line.svg",
            labelText: "Nombre de boleto",
          ),
          TicketCreateField(
            iconSrc: "assets/icons/Frame (1).svg",
            labelText: "Vencimento",
          ),
          TicketCreateField(
            iconSrc: "assets/icons/wallet-line.svg",
            labelText: "Valor",
          ),
          TicketCreateField(
            iconSrc: "assets/icons/Frame (2).svg",
            labelText: "Codigo",
          ),
        ]),
      ),
      bottomNavigationBar: Row(
        children: [
          AddOrCancelButton(
              text: "Cancelar",
              isPrimary: false,
              pressed: () => Navigator.pop(context)),
          AddOrCancelButton(text: "Candastrar", isPrimary: true, pressed: () {})
        ],
      ),
    );
  }
}

class AddOrCancelButton extends StatelessWidget {
  const AddOrCancelButton({
    Key? key,
    required this.text,
    required this.pressed,
    this.isPrimary = false,
  }) : super(key: key);

  final String text;
  final bool isPrimary;
  final VoidCallback pressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
            side: MaterialStateProperty.all(
                BorderSide(color: Colors.grey.shade200)),
            padding: MaterialStateProperty.all(EdgeInsets.all(25.0))),
        child: Text(text,
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w300,
                color: isPrimary ? kPrimaryColor : Colors.black54)),
        onPressed: pressed,
      ),
    );
  }
}

class TicketCreateField extends StatelessWidget {
  const TicketCreateField({
    Key? key,
    required this.iconSrc,
    required this.labelText,
  }) : super(key: key);

  final String iconSrc, labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: TextField(
            decoration: InputDecoration(
                labelText: labelText, icon: SvgPicture.asset(iconSrc))));
  }
}
