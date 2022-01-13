import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Colors.black26,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);



class CustomTitle extends StatelessWidget {
  final String title;
  CustomTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.only(left: 15.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}