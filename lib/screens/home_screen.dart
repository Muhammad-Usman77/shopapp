import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //get i => null;

  @override
  Widget build(BuildContext context) {
    List<Color> Clrs = [
      Color.fromARGB(255, 246, 111, 58),
      Color.fromARGB(255, 36, 131, 233),
      Color.fromARGB(255, 63, 208, 143),
    ];
    var imageList = [
      "images/watch.png",
      "images/watch.png",
      "images/watch.png",
    ];
    var iconImageList = [
      "images/add.png",
      "images/home.png",
      "images/notification.png",
      "images/search.png",
      "images/user.png",
      "images/home.png",
      "images/add.png",
      "images/search.png",
      "images/user.png",
      "images/home.png",
      "images/add.png",
    ];
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0XFFD4ECF7),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Icon(
                    CupertinoIcons.cart,
                    size: 28,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0XFFD4ECF7),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Icon(
                    CupertinoIcons.search,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hello Dear",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Lets shop something",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(left: 10, bottom: 15),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 5.5,
                    decoration: BoxDecoration(
                      color: Clrs[i],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "30% off on Winter collection",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              Container(
                                width: 80,
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Shop Now',
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          imageList[i],
                          height: 180,
                          width: 110,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  for (int i = 0; i < iconImageList.length; i++)
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFFD4ECF7),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: Image.asset(iconImageList[i]),
                      ),
                    ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
