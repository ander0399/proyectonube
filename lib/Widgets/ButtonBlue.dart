import 'package:flutter/material.dart';

class ButtonBlue extends StatefulWidget {

  final String text;
  double width = 0.0;
  double height = 0.0;
  final VoidCallback onPressed;

  ButtonBlue({Key ke, @required this.text, @required this.onPressed, this.height, this.width});

  @override
  State createState() {
    return _ButtonBlue();
  }
}

class _ButtonBlue extends State<ButtonBlue>{

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed ,
      child: Container(
        margin: EdgeInsets.only(
        top: 30.0,
        left: 20.0,
        right: 20.0
    ),
      width: widget.width,
        height: widget.height,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      gradient: LinearGradient(
      colors: [
      Color(0xFFFFB300),
      Color(0xFFFFA000)
      ],
      begin: FractionalOffset(0.2, 0.0),
      end: FractionalOffset(1.0, 0.6),
      stops: [0.0, 0.6],
      tileMode: TileMode.clamp

      )
     ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: "Lato",
                color: Colors.white
            ),

          ),
        ),
      ),
    );
  }

}
