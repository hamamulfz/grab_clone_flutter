import 'package:flutter/material.dart';
import 'package:grab_clone/constant.dart';

class GrabMoreIconMenu extends StatelessWidget {
  const GrabMoreIconMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: <Widget>[
          SizedBox(height: 5),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30)),
            child: Icon(
              Icons.more_horiz,
              size: 40,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(height: 8),
          Text("More", style: kGrabBlackRegularSmall.copyWith(fontSize: 15)),
          // Spacer(),
        ],
      ),
    );
  }
}
