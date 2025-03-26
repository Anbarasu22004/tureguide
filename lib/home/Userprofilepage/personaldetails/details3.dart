import 'package:flutter/material.dart';
import 'package:flutterproject/home/Userprofilepage/personaldetails/details2.dart';
import 'package:flutterproject/home/Userprofilepage/personaldetails/details4.dart';


void main() {
  runApp(MaterialApp(home: BusinessDetailScreen1()));
}

class BusinessDetailScreen1 extends StatefulWidget {
  @override
  _BusinessDetailScreenState createState() => _BusinessDetailScreenState();
}

class _BusinessDetailScreenState extends State<BusinessDetailScreen1> {
  String _selectedTitle = "Mr.";
  String _selectedCountryCode = "+91";
  String _whatsappCountryCode = "+91";
  String _openTime = "08:30 AM";
  String _closeTime = "08:30 PM";
  bool _sameAsMobile = false;

  List<String> mobileNumbers = [""];
  List<String> emailAddresses = [""];

  void _pickTime(BuildContext context, bool isOpeningTime) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        String formattedTime = picked.format(context);
        if (isOpeningTime) {
          _openTime = formattedTime;
        } else {
          _closeTime = formattedTime;
        }
      });
    }
  }

  void _addMobileNumber() {
    setState(() {
      mobileNumbers.add("");
    });
  }

  void _addEmailAddress() {
    setState(() {
      emailAddresses.add("");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Business Detail"),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>businessDetailScreen()));
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.purple,)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tab Bar
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                      ),
                      child: Text("Personal Detail"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(bottom: BorderSide(color: Colors.black, width: 2)),
                      ),
                      child: Text("Business Detail", style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(height:12,child: LinearProgressIndicator(value: 0.6, color: Colors.purple)),

              SizedBox(height: 20),
              Text("Add Contact Detail", style: TextStyle(fontWeight: FontWeight.bold)),

              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: DropdownButtonFormField<String>(
                      value: _selectedTitle,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      items: ["Mr.", "Mrs.", "Ms."].map((String title) {
                        return DropdownMenuItem(value: title, child: Text(title));
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedTitle = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Enter Your Name", border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Mobile Number Fields
              for (int i = 0; i < mobileNumbers.length; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      DropdownButton<String>(
                        value: _selectedCountryCode,
                        items: ["+91", "+1", "+44"].map((String code) {
                          return DropdownMenuItem(value: code, child: Text(code));
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedCountryCode = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(labelText: "Enter Mobile Number", border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                ),

              TextButton(onPressed: _addMobileNumber, child: Text("+ Add Another Mobile Number")),
              SizedBox(height: 10),

              // WhatsApp Number
              Row(
                children: [
                  DropdownButton<String>(
                    value: _whatsappCountryCode,
                    items: ["+91", "+1", "+44"].map((String code) {
                      return DropdownMenuItem(value: code, child: Text(code));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _whatsappCountryCode = value!;
                      });
                    },
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "WhatsApp Number", border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red
                      ))),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              CheckboxListTile(
                title: Text("Same as Mobile Number"),
                value: _sameAsMobile,
                onChanged: (bool? value) {
                  setState(() {
                    _sameAsMobile = value!;
                  });
                },
              ),
              SizedBox(height: 10),

              // Email Fields
              for (int i = 0; i < emailAddresses.length; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Enter Email Address", border: OutlineInputBorder()),
                  ),
                ),

              TextButton(onPressed: _addEmailAddress, child: Text("+ Add Another Email Address")),
              SizedBox(height: 20),

              Text("Add Business Timing Detail", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),

              // Days of the Week
              Wrap(
                spacing: 9.0,
                children: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
                    .map((day) => Chip(label: Text(day)))
                    .toList(),
              ),

              CheckboxListTile(
                title: Text("Select all Days"),
                value: false,
                onChanged: (bool? value) {},
              ),
              SizedBox(height: 10),

              // Business Timing
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _pickTime(context, true),
                      child: InputDecorator(
                        decoration: InputDecoration(labelText: "Open at", border: OutlineInputBorder()),
                        child: Text(_openTime),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _pickTime(context, false),
                      child: InputDecorator(
                        decoration: InputDecoration(labelText: "Close at", border: OutlineInputBorder()),
                        child: Text(_closeTime),
                      ),
                    ),
                  ),
                ],
              ),

              TextButton(onPressed: () {}, child: Text("+ Add Another Timeslot")),
              SizedBox(height: 20),

              // Save Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple, padding: EdgeInsets.symmetric(vertical: 16)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>business2()));
                  },
                  child: Text("Saved and Next", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}