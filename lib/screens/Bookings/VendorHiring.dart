import 'package:flutter/material.dart';

class VendorHiring extends StatefulWidget {
  @override
  _VendorHiringState createState() => _VendorHiringState();
}

class _VendorHiringState extends State<VendorHiring> {
DateTime pickedDate;
  TimeOfDay time;

  @override
  void initState(){
    super.initState();
    pickedDate = DateTime.now();
    time = TimeOfDay.now();

  }



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
            TextFormField(
              decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  hintText: 'Title',
                  hintStyle: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.w800)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(   
              decoration: BoxDecoration( border: Border.all(color: Colors.black, width: 3.0), borderRadius: BorderRadius.circular(3) ),
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
              decoration: BoxDecoration( border: Border.all(color: Colors.black, width: 3.0), borderRadius: BorderRadius.circular(3)),          
              child: ListTile(
              title: Text("Time: ${time.hour}:${time.minute}", style: TextStyle(color: Colors.blue[900]),),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: _pickTime,
            ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              minLines: 3,
              maxLines: 4,
              decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  hintText: 'Job Description',
                  hintStyle: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.w800)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  hintText: 'Job Location',
                  hintStyle: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.w800)),
            ),
            // Text("Google Maps"),
            SizedBox(
              height: 20,
            ),
              InkWell(
                            child: Image.asset(
                              "./assests/images/book_now.png",
                              width: 150,
                              height: 70,
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
