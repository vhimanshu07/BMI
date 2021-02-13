import 'package:flutter/material.dart';


class cardi extends StatelessWidget {
  final Color colour;
  final Widget cardchild;
  final Function onpress;
//cardchild has been made of widget type because we wanted to add different ites in the blocks(container) we
//  we made so we have to just pass it as the child of the container and our work is done.
  cardi({@required this.colour, this.cardchild, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
