import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ManageAddress extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ManageAddressState();
    throw UnimplementedError();
  }

}

class _ManageAddressState extends State<ManageAddress>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Padding(
      padding: EdgeInsets.all(10),
      child:Material(
      child: Column(
      children: [
        Row(
          children: [
            Text(" My Address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(width: 90,),
            RaisedButton(onPressed: (){ Navigator.pushNamed(context, "/AddAddress"); }, color: Colors.red, child: Text("Add New Address", style: TextStyle(color: Colors.white)), )
          ],
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: Text("Home", style: TextStyle(fontSize: 22,  height: 1.5)),
                subtitle: Text("Stan | 987649920 \nlockwood street \nTexas", style: TextStyle(fontSize: 15,)),
                trailing: Icon(Icons.more_vert)
              )
            ],
          ),
          
        )
        

      ],
    )
    )
    );
    throw UnimplementedError();
  }

}