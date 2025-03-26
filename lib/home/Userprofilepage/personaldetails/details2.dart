import 'package:flutter/material.dart';
import 'package:flutterproject/home/Userprofilepage/businessprofile.dart';
import 'package:flutterproject/home/Userprofilepage/personaldetails/personaldetails.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:io';



void main() {
  runApp(MaterialApp(home: businessDetailScreen()));
}

class businessDetailScreen extends StatefulWidget {
  @override
  _PersonalDetailScreenState createState() => _PersonalDetailScreenState();
}

class _PersonalDetailScreenState extends State<businessDetailScreen> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Detail",style: TextStyle(color: Colors.purple),),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalDetailScreen()));
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.purple,)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tab Section
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                      ),
                      child: Text("Personal Detail", style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(bottom: BorderSide(color: Colors.black,width: 2))
                      ),
                      child: Text("Business Detail"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Image Upload Section
              GestureDetector(
                onTap: _pickImage,
                child: Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: _image == null
                        ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image, size: 40, color: Colors.grey),
                        SizedBox(height: 8),
                        Text("Drag and Drop your image here"),
                        Text("Maximum 5 MB file size"),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: _pickImage,
                          child: Text("Upload Image"),
                        ),
                      ],
                    )
                        : Image.file(_image!, fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Input Fields
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter First Name",border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple,width: 30),
                    borderRadius: BorderRadius.circular(20))

                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Your Business Name",border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple,width: 30),
                    borderRadius: BorderRadius.circular(20))

                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Block/building Name",border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple,width: 30),
                    borderRadius: BorderRadius.circular(20))

                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Street Area",border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple,width: 30),
                    borderRadius: BorderRadius.circular(20))

                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Landmark",border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple,width: 30),
                    borderRadius: BorderRadius.circular(20))

                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Pincode",border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple,width: 30),
                    borderRadius: BorderRadius.circular(20))

                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(height: 70,width: 150,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "City",border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple,width: 30),
                          borderRadius: BorderRadius.circular(20))

                      ),
                    ),
                  ), SizedBox(width: 80,),
                  SizedBox(height: 70,width: 150,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "State",border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple,width: 30),
                          borderRadius: BorderRadius.circular(20))

                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),


              // Save Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(20,60),
                    backgroundColor: Colors.purple,
                    padding: EdgeInsets.symmetric(vertical: 1),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessProfilePage()));
                  },

                  child: Text("Saved Detail", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}