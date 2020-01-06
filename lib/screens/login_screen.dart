import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:grab_clone/constant.dart';
import 'package:grab_clone/screens/splash_screen.dart';
import 'package:grab_clone/screens/verification_screen.dart';

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
            Padding(
              padding: EdgeInsets.only(
                left: fivePercentWidth(context),
              ),
              child: Opacity(
                child: GrabLogo(),
                opacity: isKeyboardShowing ? 0.0 : 1.0,
              ),
            ),
            Spacer(),
            FivePercentPadding(
              parent: context,
              child: Text(
                "Welcome!",
                style: kGrabWhiteBoldMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: fivePercentWidth(context),
              ),
              child: Text(
                "Enter your mobile number to continue",
                style: kGrabWhiteRegularSmall,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(
                left: fivePercentWidth(context),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[100],
                    ),
                    // margin: EdgeInsets.all(10),
                    child: CountryCodePicker(
                      // onChanged: print,

                      initialSelection: 'ID',

                      showCountryOnly: true,
                      alignLeft: false,
                    ),
                  ),
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
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                bottom: isKeyboardShowing
                    ? 0
                    : MediaQuery.of(context).viewPadding.bottom,
              ),
              color: isKeyboardShowing
                  ? Theme.of(context).primaryColor
                  : Colors.white,
              child: isKeyboardShowing
                  ? FlatButton(
                      child: Center(
                          child: Text(
                        "Continue",
                        style: kGrabWhiteRegularSmall,
                      )),
                      onPressed: () {
                        Navigator.of(context).pushNamed(VerificationScreen.id);
                      },
                    )
                  : Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
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
                                color: Color(0xFF3C5A98),
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
                                    color: Colors.white,
                                    width: 30,
                                    image: AssetImage(
                                        "assets/images/facebook.png"),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Facebook",
                                  style: kGrabWhiteRegularSmall.copyWith(
                                      fontSize: 18),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
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
                                color: Colors.white,
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
                                    // color: Colors.white,
                                    width: 30,
                                    image:
                                        AssetImage("assets/images/google.png"),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Google",
                                  style: kGrabWhiteRegularSmall.copyWith(
                                      fontSize: 18, color: Colors.grey[700]),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class FivePercentPadding extends StatelessWidget {
  const FivePercentPadding(
      {Key key, @required this.parent, @required this.child})
      : super(key: key);
  final BuildContext parent;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          left: fivePercentWidth(parent),
        ),
        child: child);
  }
}
