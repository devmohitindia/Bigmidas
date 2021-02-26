import 'package:big_medas_app/screens/StoreProfile.dart/ReviewList.dart';
import 'package:flutter/material.dart';

class ScafflodServiceProfile extends StatefulWidget {
  @override
  _ScafflodServiceProfileState createState() => _ScafflodServiceProfileState();
}

class _ScafflodServiceProfileState extends State<ScafflodServiceProfile> {
  bool showDetails = true;
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Container(
            height: 160.0,
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Image.asset("./assests/services/circular_image4.png",
                    fit: BoxFit.fill, width: 120, height: 120),
                    ),
                SizedBox(
                  width: 10,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Service Provider Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 18),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "This is service Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Distance 1Km",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image.asset(
                            "./assests/services/shareIt.jpeg",
                            width: 30,
                            height: 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Image.asset(
                              "./assests/services/call-now.png",
                              width: 100,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            child: InkWell(
                              onTap: () => {
                                      Navigator.pushNamed(
                                          context, '/VendorHairing')
                                      // CarBooking
                                    },
                            child: Image.asset(
                              "./assests/images/book_now.png",
                              width: 80,
                              height: 40,
                            ),
                          ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
      Container(
        margin: EdgeInsets.all(12),
        height: 40,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
                child: Container(
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                      side: BorderSide(
                          color: this.showDetails ? Colors.red : Colors.white)),
                  color: this.showDetails
                      ? Color.fromRGBO(181, 44, 94, 1)
                      : Colors.white,
                  onPressed: () => {
                        this.setState(() {
                          this.showDetails = true;
                        })
                      },
                  child: Text(
                    "Details",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: this.showDetails ? Colors.white : Colors.black),
                  )),
            )),
            Expanded(
                child: FlatButton(
                    color: !this.showDetails
                        ? Color.fromRGBO(181, 44, 94, 1)
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        side: BorderSide(
                            color:
                                !this.showDetails ? Colors.red : Colors.white)),
                    onPressed: () => {
                          this.setState(() {
                            this.showDetails = false;
                          })
                        },
                    child: Text(
                      "Reviews",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: !showDetails ? Colors.white : Colors.black),
                    )))
          ],
        ),
      ),
      this.showDetails
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  child: Text(
                    "Baisc Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      "Service Provider Name : XXXX",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                    ),
                Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      "Available : XXXX",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                    ),
                Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      "KM Serving : XXXX",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                Container(
                  margin: EdgeInsets.all(8),
                  child: Text(
                    "Photos of Services",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/s1.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/s2.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/s3.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/s4.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/s5.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/s6.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/s7.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/s8.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ))
              ],
            )
          : ReviewListView()
    ]);
  }
}
