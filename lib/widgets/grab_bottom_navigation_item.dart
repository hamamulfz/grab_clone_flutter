import 'package:flutter/material.dart';
import 'package:grab_clone/constant.dart';

class GrabBottomNavigationItem extends StatelessWidget {
  const GrabBottomNavigationItem({
    @required this.icon,
    this.iconActive,
    @required this.title,
    this.isActive = false,
    this.onTap,
    Key key,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final IconData iconActive;
  final Function onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        child: Container(
          margin: EdgeInsets.all(7),
          child: Column(
            children: <Widget>[
              isActive
                  ? iconActive != null
                      ? Icon(
                          iconActive,
                          color: isActive
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                        )
                      : Icon(
                          icon,
                          color: isActive
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                        )
                  : Icon(
                      icon,
                      color: isActive
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                    ),
              Spacer(),
              Text(title,
                  style: kGrabBlackBoldSmall.copyWith(
                    color:
                        isActive ? Theme.of(context).primaryColor : Colors.grey,
                  )),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
