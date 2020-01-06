import 'package:flutter/material.dart';


class GrabLogo extends StatelessWidget {
  const GrabLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      width: 150,
      color: Colors.white,
      image: AssetImage(
        "assets/images/grab.png",
      ),
    );
  }
}
