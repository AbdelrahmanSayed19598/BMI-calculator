import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.iconTheme, this.onPressed});
  final IconData iconTheme;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      onPressed: onPressed,
      child: Icon(
        iconTheme,
        color: Colors.white,
      ),
      shape: CircleBorder(),
      backgroundColor: Color(0xff4c4f5e),
    );
  }
}