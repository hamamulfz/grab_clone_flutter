import 'package:flutter/material.dart';
import 'package:grab_clone/widgets/grab_icon_menu.dart';
import 'package:grab_clone/widgets/grab_more_icon_menu.dart';

import '../../constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 130 + MediaQuery.of(context).viewPadding.top,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF138880),
                        Color(0xFF1C9E82),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                        15.0 + MediaQuery.of(context).viewPadding.top),
                    child: Center(
                      child: Text(
                        "Good Afternoon",
                        style: kGrabWhiteRegularSmall,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "OVO Balance",
                                style:
                                    kGrabBlackBoldMedium.copyWith(fontSize: 20),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text("RP",
                                    style: kGrabBlackRegularSmall.copyWith(
                                        color: Colors.grey)),
                              ),
                              Text(
                                "0",
                                style: kGrabBlackBoldMedium.copyWith(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(width: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  color: Colors.grey[300],
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              GrabIconMenu(
                                image: "assets/images/pay/pay.png",
                                title: "Pay",
                              ),
                              GrabIconMenu(
                                image: "assets/images/pay/topu.png",
                                title: "Top Up",
                              ),
                              GrabIconMenu(
                                image: "assets/images/pay/reward.png",
                                title: "Reward",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GrabIconMenu(
                    image: "assets/images/feature/car.png",
                    title: "Car",
                  ),
                  GrabIconMenu(
                    image: "assets/images/feature/bike.png",
                    title: "Bike",
                  ),
                  GrabIconMenu(
                    image: "assets/images/feature/food.png",
                    title: "Food",
                  ),
                  GrabIconMenu(
                    image: "assets/images/feature/delivery.png",
                    title: "Delivery",
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GrabIconMenu(
                    image: "assets/images/feature/rent.png",
                    title: "Rent",
                  ),
                  GrabIconMenu(
                    image: "assets/images/feature/giftcard.png",
                    title: "Gift Cards",
                  ),
                  GrabIconMenu(
                    image: "assets/images/feature/subscription.png",
                    title: "Subscription",
                  ),
                  GrabMoreIconMenu(),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 8,
          color: Colors.grey[300],
        ),
        GridView.count(
          padding: EdgeInsets.all(5),
          childAspectRatio: .75,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          children: List.generate(
            10,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.network(
                            "https://image.freepik.com/free-vector/square-food-banner-with-photo_23-2148118766.jpg",
                            fit: BoxFit.cover,
                            // height: 150,
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text("Article Title Here",
                                style: kGrabBlackRegularSmall.copyWith(
                                    fontSize: 15)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.calendar_today, size: 15,),
                              SizedBox(width: 5),
                              Text("1 min read",
                                  style: kGrabBlackRegularSmall.copyWith(
                                      fontSize: 15)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
