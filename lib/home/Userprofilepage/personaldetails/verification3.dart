import 'package:flutter/material.dart';
import 'package:flutterproject/home/Userprofilepage/personaldetails/verification1.dart';
import 'package:flutterproject/home/Userprofilepage/personaldetails/verification4.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: kyc3(),
  ));
}

class kyc3 extends StatefulWidget {
  @override
  _KYCVerificationScreenState createState() => _KYCVerificationScreenState();
}

class _KYCVerificationScreenState extends State<kyc3> {
  final TextEditingController ownerController = TextEditingController();
  final TextEditingController businessController = TextEditingController();
  String selectedBusinessType = "Aadhaar card";

  final List<String> businessTypes = [
    "Aadhaar card",
    "Vote ID",
    "Pan card",
    "Driving license"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KYC Verification",style: TextStyle(color: Colors.purple),),
        leading:IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>kyc()));
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.purple,),),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      "S",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Smart Global",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(

              controller: ownerController,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.symmetric(vertical: 50),
                labelText: "Owner/Partner's Name:",
                border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField(
              value: selectedBusinessType,
              items: businessTypes.map((String type) {
                return DropdownMenuItem(
                  value: type,
                  child: Text(type),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedBusinessType = newValue!;
                });
              },
              decoration: InputDecoration(
                labelText: "Owner's ID",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: businessController,
              decoration: InputDecoration(
                labelText: "Aadhaar card",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),

            SizedBox(height: 150),
            SizedBox(
              height: 60,
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>kyc4()));
                },
                child: Text(
                  "Saved & Next",
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}