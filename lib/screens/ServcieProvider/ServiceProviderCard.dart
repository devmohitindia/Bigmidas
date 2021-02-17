import 'package:flutter/material.dart';

class ServiceProviderCard extends StatefulWidget {
  @override
  _ServiceProviderCardState createState() => _ServiceProviderCardState();
}

class _ServiceProviderCardState extends State<ServiceProviderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () => {Navigator.pushNamed(context, '/serviceProfile')},
        child: Container(
          // margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Container(
              height: 130.0,
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset("./assests/services/circular_image1.png",
                      fit: BoxFit.fill, width: 110, height: 110),
                  SizedBox(
                    width: 20,
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
                          height: 3,
                        ),
                        Text(
                          "Address: Address of store",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.grey),
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
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                            child: Image.asset(
                              "./assests/services/call-now.png",
                              width: 120,
                              height: 40,
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
