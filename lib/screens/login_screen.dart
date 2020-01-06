import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:grab_clone/constant.dart';
import 'package:grab_clone/screens/splash_screen.dart';
import 'package:grab_clone/screens/verification_screen.dart';
import 'package:grab_clone/widgets/five_percent_padding.dart';
import 'package:grab_clone/widgets/grab_button_login_social_media.dart';
import 'package:grab_clone/widgets/grab_continue_button.dart';
import 'package:grab_clone/widgets/grab_logo.dart';
import 'package:grab_clone/widgets/grab_select_country.dart';
import 'package:grab_clone/widgets/grab_social_media_and_continue.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login_screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool isKeyboardShowing = MediaQuery.of(context).viewInsets.bottom > 0;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).viewPadding.top,
                left: fivePercentWidth(context),
              ),
              child: Opacity(
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: isKeyboardShowing
                      ? () {
                          FocusScope.of(context).requestFocus(FocusNode());
                        }
                      : null,
                ),
                opacity: isKeyboardShowing ? 1.0 : 0.0,
              ),
            ),
            FivePercentPadding(
              child: Opacity(
                child: GrabLogo(),
                opacity: isKeyboardShowing ? 0.0 : 1.0,
              ),
              parent: context,
            ),
            Spacer(),
            FivePercentPadding(
              parent: context,
              child: Text(
                "Welcome!",
                style: kGrabWhiteBoldMedium,
              ),
            ),
            FivePercentPadding(
              child: Text(
                "Enter your mobile number to continue",
                style: kGrabWhiteRegularSmall,
              ),
              parent: context,
            ),
            SizedBox(height: 40),
            FivePercentPadding(
              child: Row(
                children: <Widget>[
                  GrabSelectCountry(),
                  SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: TextField(
                      cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number",
                        hintStyle: kGrabWhiteRegularSmall.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      style: kGrabBlackBoldMedium,
                      keyboardType: TextInputType.number,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              parent: context,
            ),
            Spacer(flex: 2),
            Opacity(
              child: Center(
                child: Text(
                  "or continue with social account",
                  style: kGrabWhiteRegularSmall,
                ),
              ),
              opacity: isKeyboardShowing ? 0.0 : 1.0,
            ),
            SizedBox(height: 10),
            SocialMediaAndContinue(isKeyboardShowing: isKeyboardShowing),
          ],
        ),
      ),
    );
  }
}
