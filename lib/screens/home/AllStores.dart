import 'package:big_medas_app/screens/home/HomePage.dart';
import 'package:big_medas_app/screens/home/RoundedPic.dart';
import 'package:big_medas_app/screens/home/SearchService.dart';
import 'package:big_medas_app/screens/home/ShowProfile.dart';
import 'package:big_medas_app/screens/home/paymentPage.dart';
import 'package:big_medas_app/screens/home/servicesPage.dart';
import 'package:big_medas_app/screens/stores/StoreView.dart';
import 'package:flutter/material.dart';

import 'AddAddress.dart';

class AllStores extends StatefulWidget {
  @override
  _AllStoresState createState() => _AllStoresState();
}

class _AllStoresState extends State<AllStores> {
  int _selectedIndex = 0;
  int showIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      showIndex = index;
    });
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ServicesPage(),
    SearchService(),
    AllStores(),
    PaymentPage(),
    ShowProfile(),
    StoreView(),
    AddAddress(),
    // DriverProfiel(),
    // DriveScreen(),
    // ServiceProviderList(),
    // ScafflodServiceProfile(),
    // OrderHistory(),
    // WishList(),
    // VendorHiring(),
    // CarBooking(),
    // CartPage(),
    // AddAddress(),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
    child:SingleChildScrollView(
      child: Container(
      color: Color.fromRGBO(243, 243, 243, 1),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedPic(
                        contentName: "Person...",
                        imgUrl: "./assests/images/dp1.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Singles",
                        imgUrl: "./assests/images/dp2.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Albums",
                        imgUrl: "./assests/images/dp3.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Bakery",
                        imgUrl: "./assests/images/dp4.jpeg",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedPic(
                        contentName: "Toys an..",
                        imgUrl: "./assests/images/dp5.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Hoodies",
                        imgUrl: "./assests/images/dp6.jpeg",
                      ),
                      RoundedPic(
                        contentName: "T-shirts",
                        imgUrl: "./assests/images/dp6.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Person...",
                        imgUrl: "./assests/images/dp1.jpeg",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedPic(
                        contentName: "Person...",
                        imgUrl: "./assests/images/dp1.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Singles",
                        imgUrl: "./assests/images/dp2.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Albums",
                        imgUrl: "./assests/images/dp3.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Bakery",
                        imgUrl: "./assests/images/dp4.jpeg",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedPic(
                        contentName: "Toys an..",
                        imgUrl: "./assests/images/dp5.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Hoodies",
                        imgUrl: "./assests/images/dp6.jpeg",
                      ),
                      RoundedPic(
                        contentName: "T-shirts",
                        imgUrl: "./assests/images/dp6.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Person...",
                        imgUrl: "./assests/images/dp1.jpeg",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedPic(
                        contentName: "Person...",
                        imgUrl: "./assests/images/dp1.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Singles",
                        imgUrl: "./assests/images/dp2.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Albums",
                        imgUrl: "./assests/images/dp3.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Bakery",
                        imgUrl: "./assests/images/dp4.jpeg",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedPic(
                        contentName: "Toys an..",
                        imgUrl: "./assests/images/dp5.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Hoodies",
                        imgUrl: "./assests/images/dp6.jpeg",
                      ),
                      RoundedPic(
                        contentName: "T-shirts",
                        imgUrl: "./assests/images/dp6.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Person...",
                        imgUrl: "./assests/images/dp1.jpeg",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedPic(
                        contentName: "Person...",
                        imgUrl: "./assests/images/dp1.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Singles",
                        imgUrl: "./assests/images/dp2.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Albums",
                        imgUrl: "./assests/images/dp3.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Bakery",
                        imgUrl: "./assests/images/dp4.jpeg",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedPic(
                        contentName: "Toys an..",
                        imgUrl: "./assests/images/dp5.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Hoodies",
                        imgUrl: "./assests/images/dp6.jpeg",
                      ),
                      RoundedPic(
                        contentName: "T-shirts",
                        imgUrl: "./assests/images/dp6.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Person...",
                        imgUrl: "./assests/images/dp1.jpeg",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  
                  // SizedBox(height: 20),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     RoundedPic(),
                  //     RoundedPic(),
                  //     RoundedPic(),
                  //     RoundedPic(),
                  //   ],
                  // ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
    )
    )
    );
  }
}
