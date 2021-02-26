import 'package:big_medas_app/screens/StoreProfile.dart/ReviewList.dart';
import 'package:flutter/material.dart';

class ScafFlodDriverProfle extends StatefulWidget {
  @override
  _ScafFlodDriverProfleState createState() => _ScafFlodDriverProfleState();
}

class _ScafFlodDriverProfleState extends State<ScafFlodDriverProfle> {
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
                child: Image.asset(
                  "./assests/services/circular_image3.png",
                  fit: BoxFit.fill,
                  height: 120,
                  width: 120,
                )
                ),
                SizedBox(
                  width: 10,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "This is Driver Name",
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
                                "This is vehicle Name",
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
                            child: Container(
                              child: InkWell(
                              onTap: () => {
                                      Navigator.pushNamed(
                                          context, '/CarBooking')
                                      // CarBooking
                                    },
                            child: Image.asset(
                              "./assests/images/book_now.png",
                              width: 80,
                              height: 40,
                            ),
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
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      "Driver Name : XXXX",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      "Vehicle Name : XXXX",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      "Booking Capacity : XXXX",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      "Vehicle Registration Number : XXXX",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      "Driver's Total Booking : XXXX",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      "Available : XXXX",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      "Long Trip Booking : XXXX",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                Container(
                    margin: EdgeInsets.all(12),
                    child: Text(
                      "Stated Where Can Freely Go : XXXX",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                Container(
                  margin: EdgeInsets.all(8),
                  child: Text(
                    "Vehicle Photos",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
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
                            "./assests/services/vehicle.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/vehicle.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/vehicle.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/vehicle.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/vehicle.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/vehicle.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/vehicle.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "./assests/services/vehicle.png",
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
