import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProfileState();
    throw UnimplementedError();
  }

}

class _ProfileState extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(10),
    child: Material(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Image.asset(
                  "./assests/services/circular_image1.png",
                  fit: BoxFit.fill,
                  height: 120,
                  width: 120,
                )
                ),
                SizedBox(
                  height: 1,
                ),
                Center(
                  child: Text("Stan Lee", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(onPressed: (){}, color: Colors.red, child: Text("EDIT PROFILE",  style: TextStyle(color: Colors.white),),),
                SizedBox(
                  height: 25,
                ),
                Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Container(
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: Colors.black),
                    // border: Border(bottom: BorderSide(color: Colors.black)),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  ),
                child: ListTile(
                  title: Text("Name", style: TextStyle(fontSize: 20),),
                  trailing: Text("Stan Lee", style: TextStyle(fontSize: 20)),
                  tileColor: Colors.transparent,
                ),
                ),
                ),
                 Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child:  Container(
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(top: BorderSide(color: Colors.black))
                  ),
                child: ListTile(
                  title: Text("Email Id", style: TextStyle(fontSize: 20),),
                  trailing: Text(" ", style: TextStyle(fontSize: 20)),
                  tileColor: Colors.transparent,
                ),
                ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child:  Container(
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(bottom: BorderSide(color: Colors.black), top: BorderSide(color: Colors.black))
                  ),
                child: ListTile(
                  title: Text("Phone No.", style: TextStyle(fontSize: 20),),
                  trailing: Text(" ", style: TextStyle(fontSize: 20)),
                  tileColor: Colors.transparent,
                ),
                ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child:  Container(
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border(bottom: BorderSide(color: Colors.black), top: BorderSide(color: Colors.black))
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                    )
                  ),
                child: ListTile(
                  title: Text("Password", style: TextStyle(fontSize: 20),),
                  trailing: Text(" ", style: TextStyle(fontSize: 20)),
                  tileColor: Colors.transparent,
                ),
                ),
                ),
        ],
      ),
    )
    )
    );
    throw UnimplementedError();
  }

}