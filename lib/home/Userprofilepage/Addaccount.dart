import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';



void main() {
  runApp(MaterialApp(
    home: AddProductScreen(),
  ));
}

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  File? _image;
  final picker = ImagePicker();
  String? selectedCategory;

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
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
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.purple,)),
        title: Text('Add New Product',style: TextStyle(color: Colors.purple),),
      ),
      body:
      Padding(
        padding: EdgeInsets.all(16.0),
        child:
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40,left: 15),
                    child: Image(image: AssetImage("assets/sale.png")),

                  ),
                  SizedBox(width: 8,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start ,
                      children: [
                        Text("First sale, first step. Grateful for every moment",style: TextStyle(fontSize: 12),),
                        Text("of this new beginning, and excited for the future",style: TextStyle(fontSize: 12),),
                        Text("ahead!",style: TextStyle(fontSize: 12),),
                      ],
                    ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20,),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(380,30),
                        backgroundColor: Colors.purple.shade100,
                        padding: EdgeInsets.symmetric(vertical: 1),
                      ),
                      onPressed: () {},

                      child: Row(
                        children: [
                          Text("To get ", style: TextStyle(color: Colors.black,fontSize: 15)),
                          Icon(Icons.verified,color: Colors.blue,),
                          Text("Verified seller, kindly click here ", style: TextStyle(color: Colors.black,fontSize: 15)),

                          Icon(Icons.double_arrow_rounded,color: Colors.purple,)
                        ],
                      ),                    ),
                  ],
                ),
              ),// Image Upload Box
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: _image == null
                      ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.image, size: 50, color: Colors.purple),
                      Text("Drag and Drop your image here"),
                      Text("Maximum 5 MB file size"),
                      ElevatedButton(
                        onPressed: _pickImage,
                        child: Text("Upload Image"),
                      ),
                    ],
                  )
                      : Image.file(_image!, fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 20),

              // Category Dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Select Category",
                ),
                value: selectedCategory,
                items: ["Electronics", "Fashion", "Home", "Beauty"]
                    .map((category) => DropdownMenuItem(
                  child: Text(category),
                  value: category,
                ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
              ),
              SizedBox(height: 10),

              // Product Name
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Your Product Name",
                ),
              ),
              SizedBox(height: 10),

              // Description
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Description of Product",
                ),
                maxLines: 3,
              ),
              SizedBox(height: 10),

              // Specification
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Specification of Product",
                ),
              ),
              SizedBox(height: 10),

              // Price and Inventory
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Set Price",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Inventory Management",
                      ),
                      items: ["In Stock", "Out of Stock"]
                          .map((inventory) => DropdownMenuItem(
                        child: Text(inventory),
                        value: inventory,
                      ))
                          .toList(),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Shipping Details
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Shipping Detail and Contact Details",
                ),
                maxLines: 2,
              ),
              SizedBox(height: 10),

              // Discounts
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Discounts for Products",
                ),
              ),
              SizedBox(height: 20),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Save Details",style: TextStyle(color: Colors.black),),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Preview Details",style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Upload Product Button
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.upload,color: Colors.purple,),
                  label: Text("Upload Product",style: TextStyle(color: Colors.purple),),
                  style: ElevatedButton.styleFrom(

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}