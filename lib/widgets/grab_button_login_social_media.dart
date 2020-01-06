import 'package:flutter/material.dart';


class GrabBottonLoginSocialMedia extends StatelessWidget {
  const GrabBottonLoginSocialMedia({
    Key key,
    @required this.title,
    @required this.image,
    this.textStyle,
    this.imageColor,
    @required this.backgroundColor,
  }) : super(key: key);

  final String title;
  final String image;
  final TextStyle textStyle;
  final Color backgroundColor;
  final Color imageColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
                // blurRadius: 10,
                offset: Offset.fromDirection(1)),
          ]),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(
              color: imageColor,
              width: 30,
              image: AssetImage(
                image,
              ),
            ),
          ),
          Spacer(),
          Text(
            title,
            style: textStyle,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
