import 'package:flutter/material.dart';

class CarBooking extends StatefulWidget {
  @override
  _CarBookingState createState() => _CarBookingState();
}

class _CarBookingState extends State<CarBooking> {
  DateTime pickedDate;
  TimeOfDay time;

  @override
  void initState(){
    super.initState();
    pickedDate = DateTime.now();
    time = TimeOfDay.now();

  }


  String dropdownValue = '9:00';
  String dropdownValue1 = 'Today';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Text(
              "Book Now",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 21,
                  color: Colors.red[600]),
            )),
            SizedBox(
              height: 20,
            ),
             Container(   
              decoration: BoxDecoration( border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(3) ),
              child: ListTile(
              title: Text("Date: ${pickedDate.day}, ${pickedDate.month}, ${pickedDate.year}", style: TextStyle(color: Colors.blue[900]),),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: _pickDate,

            ),
             ),
            SizedBox(
              height: 20,
            ),
            Container(   
              decoration: BoxDecoration( border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(3)),          
              child: ListTile(
              title: Text("Time: ${time.hour}:${time.minute}", style: TextStyle(color: Colors.blue[900]),),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: _pickTime,
            ),
            ),
            SizedBox(height: 20,),
        //     DropdownButtonFormField(
        //       decoration: InputDecoration(
        //         labelText: "Pickup Date",
        //         labelStyle: TextStyle(color: Colors.blue[900]),
        //         border: OutlineInputBorder(),
        //         prefix: Icon(Icons.date_range),
                
        //       ),
        //       hint: Text("Select Date to Pickup"),
        //       onChanged: (String newValue) {
        //           setState(() {
        //           dropdownValue1 = newValue;
        //         });
        //       },
        //       value: dropdownValue1,
        //       items: <String>['Today','Tomorrow']
        //       .map<DropdownMenuItem<String>>((String value){
        //         return DropdownMenuItem<String>(
        //           child: Text(value, style: TextStyle(color: Colors.blue[900])),
        //           value:value,
        //           );
        //       }).toList()
        // ),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     DropdownButtonFormField(
        //       decoration: InputDecoration(
        //         labelText: "Pickup Time",
        //         labelStyle: TextStyle(color: Colors.blue[900]),
        //         prefix: Icon(Icons.watch_later_outlined),
        //         border: OutlineInputBorder()
        //       ),
        //       hint: Text("Select Time to Pickup"),
        //       onChanged: (String newValue) {
        //           setState(() {
        //           dropdownValue = newValue;
        //         });
        //       },
        //       value: dropdownValue,
        //       items: <String>['9:00','9:30','10:00','10:30','11:00','11:30','12:00','12:30']
        //       .map<DropdownMenuItem<String>>((String value){
        //         return DropdownMenuItem<String>(
        //           child: Text(value, style: TextStyle(color: Colors.blue[900])),
        //           value:value,
        //           );
        //       }).toList()
        // ),
            // TextFormField(
            //   decoration: new InputDecoration(
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.black, width: 1.0),
            //       ),
            //       enabledBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.black, width: 1.0),
            //       ),
            //       hintText: 'Select Time',
            //       hintStyle: TextStyle(
            //           color: Colors.blue[900], fontWeight: FontWeight.w800)),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            TextFormField(
              decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  hintText: 'Pickup From',
                  hintStyle: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.w800)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              // minLines: 3,
              // maxLines: 4,
              decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  hintText: 'Drop Location',
                  hintStyle: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.w800)),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
                            child: Image.asset(
                              "./assests/images/book_now.png",
                              width: 120,
                              height: 70,
                            ),
                          ),
            // FlatButton(
            //     shape: RoundedRectangleBorder(
            //         // borderRadius: BorderRadius.circular(9.0),
            //         side: BorderSide(color: Colors.red, width: 3.0)),
            //     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            //     onPressed: null,
            //     child: Text("Book Now",
            //         style: TextStyle(
            //             fontWeight: FontWeight.w800,
            //             fontSize: 21,
            //             color: Colors.red[600]))),
            SizedBox(
              height: 20,
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                Text("Total Distance",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                Expanded(
                  child: Text("XXXX",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                Text("Total Cost",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                Expanded(
                  child: Text("XXXX",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
                            child: Image.asset(
                              "./assests/images/confirm_booking.png",
                              width: 180,
                              
                            ),
                          ),
          ],
        ),
      ),
    );
  }

  _pickDate() async{
      DateTime date = await showDatePicker(
      context: context,  
      firstDate: DateTime(DateTime.now().year), 
      lastDate: DateTime(DateTime.now().year+1),
      initialDate: pickedDate,
      );

      if(date != null){
        setState(() {
                  pickedDate = date;
                });

      }
  }

  _pickTime() async{
    TimeOfDay t = await showTimePicker(
      context: context,
      initialTime: time
      );

      if(t != null){
        setState(() {
                  time = t;
                });
      }
  }
}
