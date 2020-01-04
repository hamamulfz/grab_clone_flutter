import 'package:flutter/material.dart';
import 'package:grab_clone/constant.dart';
import 'package:grab_clone/screens/bottom_navigation/main_screen.dart';

class VerificationScreen extends StatefulWidget {
  static const String id = 'verification_screen';

  @override
  VerificationScreenState createState() => VerificationScreenState();
}

class VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Spacer(),
              Text(
                "Enter 6 digit code sent to",
                style: kGrabBlackRegularMedium,
              ),
              SizedBox(height: 10),
              Text(
                "+6285658201275",
                style: kGrabBlackBoldMedium,
              ),
              SizedBox(height: 30),
              TextField(
                keyboardType: TextInputType.number,
                autofocus: true,
                onChanged: (value) {
                  if (value.length >= 5) {
                    Navigator.of(context).pushNamed(MainScreen.id);
                  }
                },
                style: kGrabBlackBoldLarge,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Your Code",
                    hintStyle:
                        kGrabBlackBoldMedium.copyWith(color: Colors.grey)),
              ),
              Spacer(flex: 4),
              Text(
                "Didn't receive it?",
                style: kGrabBlackRegularMedium,
              ),
              SizedBox(height: 10),
              Text(
                "Request a new code in 00:30",
                style: kGrabBlackRegularMedium.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
