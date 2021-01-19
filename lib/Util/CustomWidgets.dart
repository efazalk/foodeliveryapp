import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color color;

  CustomButtonWidget({
    this.text,
    this.onPressed,
    this.textColor,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: RaisedButton(
          color: color != null ? color : Theme.of(context).primaryColor,
          padding: EdgeInsets.all(15),
          onPressed: onPressed,
          child: Text(
            text,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: color != null ? color : Theme.of(context).accentColor,
            ),
          ),
        ),
      ),
    );
  }
}
