import 'package:big_medas_app/screens/home/AddressDropDown.dart';
import 'package:big_medas_app/screens/home/paymentPage.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  var value="home";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: ListView(
        children: [
          Row(
            children: [
              Text(
                "Address",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: 'Enter your Name',
              hintStyle: TextStyle(fontSize: 18, color: Colors.black ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: 'Enter Phone Number',
              hintStyle: TextStyle(fontSize: 18, color: Colors.black),
            ),
            
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: 'House No / Street / Area',
              hintStyle: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: 'Landmark',
              hintStyle: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text("Address", style: TextStyle(fontSize: 18),),
              SizedBox(width: 150,),
              RaisedButton(onPressed: (){},color: Colors.red, child: Text("Map", style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder( borderSide: BorderSide(color: Colors.black)), hintText: "Enter Address", hintStyle: TextStyle(fontSize: 18, color: Colors.black)),
            maxLines: 5,
            keyboardType:TextInputType.multiline,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
                Radio(value: "home", groupValue: value, onChanged: (String evnt) { setState(() {
                                  value=evnt;
                                }); }),
                Text("Home"),
                SizedBox(
                  width: 15,
                ),
                Radio(value: "work", groupValue: value, onChanged: (String evnt) { setState(() {
                                  value=evnt;
                                }); }),
                Text("Work"),
                SizedBox(
                  width: 15,
                ),
                Radio(value: "others", groupValue: value, onChanged: (String evnt) { setState(() {
                                  value=evnt;
                                }); }),
                Text("others"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Text(
                "Add Address",
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(185, 58, 69, 1),
                    fontWeight: FontWeight.w800),
              ),
            ),
          )
        ],
      ),
    );
  }
}
