import 'package:flutter/material.dart';
import 'package:flutterproject/home/Userprofilepage/personaldetails/verification1.dart';
import 'package:flutterproject/home/Userprofilepage/personaldetails/verification3.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: kyc2(),
  ));
}

class kyc2 extends StatefulWidget {
  @override
  _KYCVerificationScreenState createState() => _KYCVerificationScreenState();
}

class _KYCVerificationScreenState extends State<kyc2> {
  final TextEditingController ownerController = TextEditingController();
  final TextEditingController businessController = TextEditingController();
  String selectedBusinessType = "Individual/Proprietor";

  final List<String> businessTypes = [
    "Individual/Proprietor",
    "Partnership",
    "Private Limited",
    "Public Limited"
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
                labelText: "Owner Name / Partner Name",
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
                labelText: "Select Business Proof Document",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: businessController,
              decoration: InputDecoration(
                labelText: "Legal Name of Business",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Note",style: TextStyle(fontSize: 13),),
            Text("* Personal identification You will need to upoload a valid government",style: TextStyle(fontSize:11),),
            SizedBox(height: 5),
            Text("issued ID {eg.passport,driver's natinal ID card to verify your identity ",style: TextStyle(fontSize:11),),
            SizedBox(height: 5),
            Text("* Proof of Address: Please provide a recent untility bill,bank statement, ",style: TextStyle(fontSize:11),),SizedBox(height: 5),
            Text("or gorvenment document showing your full name and address ",style: TextStyle(fontSize:11),),SizedBox(height: 5),
            Text("Why KYC Matters: ",style: TextStyle(fontSize:11),),SizedBox(height: 5),
            Text("* Security : KYC helps protect your account from unauthorised acess",style: TextStyle(fontSize:11),),SizedBox(height: 5),
            Text("and ensures only you can manage your information ",style: TextStyle(fontSize:11),),SizedBox(height: 5),
            Text("* Compliance: We follow strict regulaion to prevent illegal activities ",style: TextStyle(fontSize:11),),SizedBox(height: 5),
            Text("such as fraud or money laundering, ensuring the integrity of your ",style: TextStyle(fontSize:11),),SizedBox(height: 5),
            Text("platform ",style: TextStyle(fontSize:11),),SizedBox(height: 5),
            Text("Privacy: Your personal information will always be handled with the ",style: TextStyle(fontSize:11),),SizedBox(height: 5),
            Text("highest level of privacy and security in compliance with data  ",style: TextStyle(fontSize:11),),
            Text("Protection regulation {such as GDPR or CCPA}  ",style: TextStyle(fontSize:11),),
            SizedBox(height: 100),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>kyc3()));
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