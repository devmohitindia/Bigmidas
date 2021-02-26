import 'package:big_medas_app/screens/home/HomePage.dart';
import 'package:big_medas_app/screens/home/SearchService.dart';
import 'package:big_medas_app/screens/home/ShowProfile.dart';
import 'package:big_medas_app/screens/home/paymentPage.dart';
import 'package:big_medas_app/screens/home/servicesPage.dart';
import 'package:big_medas_app/screens/stores/StoreView.dart';
import 'package:flutter/material.dart';

import 'AddAddress.dart';

class DrawerListView extends StatefulWidget {
  @override
  _DrawerListViewState createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
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
    DrawerListView(),
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
    return Container(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage("./assests/services/background.png"),
              fit:BoxFit.cover,
            ),
            ),
            child: 
            Row(
              children:[
                InkWell(
                            child: Image.asset(
                              "./assests/services/circular_image1.png",
                              width: 90,
                              height: 90,
                            ),
                          ),
                          SizedBox(width:20),
                Text("Prime Designer", style: TextStyle(color: Colors.white, fontSize: 30)),
              ]
            ),
            
          ),
          SizedBox(height: 25,),
          InkWell(
            onTap: () => {Navigator.pushNamed(context, '/Profile')},
            //  orderPage

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:[
                  Icon(Icons.person_outline), 
                  Text(
                " Profile Setting",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              )
                ]
              ),
            ),
          ),
          InkWell(
            onTap: () => {Navigator.pushNamed(context, '/ManageAddress')},
            //  orderPage

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:[
                  Icon(Icons.person_pin_circle_outlined), 
                  Text(
                " Manage Address",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              )
                ]
              ),
            ),
          ),
          InkWell(
            onTap: () => {Navigator.pushNamed(context, '/wishList')},
            //  AddAddress
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.favorite_border),
                  Text(
                " Wishlist",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              )

                ],
              ), 
            ),
          ),
          InkWell(
            onTap: () => {Navigator.pushNamed(context, '/orderPage')},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                Icon(Icons.card_giftcard_sharp),
                Text(
                " My Orders/Bookings",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children:[
                Icon(Icons.share),
                Text(
              " Share APP",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            )
              ]
              ),
          ),
          InkWell(
            onTap: () => {Navigator.pushNamed(context, '/TC')},
            //  orderPage

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:[
                  Icon(Icons.assignment_outlined), 
                  Text(
                " T/C",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              )
                ]
              ),
            ),
          ),
         InkWell(
            onTap: () => {Navigator.pushNamed(context, '/Privacy')},
            //  orderPage

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:[
                  Icon(Icons.policy_outlined), 
                  Text(
                " Privacy Policy",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              )
                ]
              ),
            ),
          ),
          InkWell(
            onTap: () => {Navigator.pushNamed(context, '/Refund')},
            //  orderPage

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:[
                  Icon(Icons.privacy_tip_outlined), 
                  Text(
                " Refund Policy",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              )
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
