import 'package:flutter/material.dart';

class StoreCard extends StatefulWidget {
  @override
  _StoreCardState createState() => _StoreCardState();
}

class _StoreCardState extends State<StoreCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          {print("i am here"), Navigator.pushNamed(context, '/storeProfile')},
      child: Card(
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("./assests/shop1.png",
                          fit: BoxFit.cover)),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Model Medical Store ",
                        softWrap: true,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Address: Behind Ashoka Garden,\n Bhopal,MP",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 13),

                        // style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Distance: 12km away",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 13),
                        // style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          SizedBox(width: 30),
                          InkWell(
                            onTap: () => {
                              Navigator.pushNamed(context, '/storeProfile')
                            },
                            child: Image.asset(
                              "./assests/images/2.jpg",
                              width: 150,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ListTile(
//       leading: Icon(Icons.school, color: Colors.black26),
//       title: Text("Model Medical Store"),
//       subtitle: Text("Adress is this"),
//       isThreeLine: true,

//     );
