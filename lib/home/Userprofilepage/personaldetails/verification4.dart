import 'package:flutter/material.dart';
import 'package:flutterproject/home/Userprofilepage/personaldetails/verification3.dart';
import 'package:flutterproject/home/Userprofilepage/personaldetails/verification5.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: kyc4(),
  ));
}

class kyc4 extends StatefulWidget {
  @override
  _GSTKYCVerificationScreenState createState() => _GSTKYCVerificationScreenState();
}

class _GSTKYCVerificationScreenState extends State<kyc4> {
  final TextEditingController gstinController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController pinCodeController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController panController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>kyc3()));
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.purple,)),
        title: Text("KYC Verification",style: TextStyle(color: Colors.purple),),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Please enter the GST details of your business.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            TextField(
              controller: gstinController,
              decoration: InputDecoration(
                labelText: "GSTIN No / UIN. of Register Customer",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(height: 20),

            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name as registered with GSTIN",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(height: 20),

            Text("Registered Address under GSTIN", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: pinCodeController,
                    decoration: InputDecoration(
                      labelText: "Pin Code",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: stateController,
                    decoration: InputDecoration(
                      labelText: "State of registration of GSTIN",
                      border: OutlineInputBorder(   borderRadius: BorderRadius.circular(15)

                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            TextField(
              controller: panController,
              decoration: InputDecoration(
                labelText: "Pan Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(height: 300),
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

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>kyc5()));},
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