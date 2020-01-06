import 'package:flutter/material.dart';
import 'package:grab_clone/screens/verification_screen.dart';

import '../constant.dart';

class GrabContinueButton extends StatelessWidget {
  const GrabContinueButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Center(
          child: Text(
        "Continue",
        style: kGrabWhiteRegularSmall,
      )),
      onPressed: () {
        Navigator.of(context).pushNamed(VerificationScreen.id);
      },
    );
  }
}
