import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product1 extends StatefulWidget {
  const Product1({super.key});

  @override
  State<Product1> createState() => _Product1State();
}

class _Product1State extends State<Product1> {

  void _showEnquiryDialog(BuildContext context) {
    bool isPhoneSelected = false;
    bool isWhatsAppSelected = false;
    bool isEmailSelected = false;

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text("Enquiry Form"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: "Name"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Country Code"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Business Name"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Requirement"),
                    maxLines: 3,
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 5, // Reduce spacing for compact UI
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Transform.scale(
                            scale: 0.8, 
                            child: Checkbox(
                              value: isPhoneSelected,
                              onChanged: (value) {
                                setState(() {
                                  isPhoneSelected = value!;
                                });
                              },
                            ),
                          ),
                          Text(
                            "Phone",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Transform.scale(
                            scale: 0.8,
                            child: Checkbox(
                              value: isWhatsAppSelected,
                              onChanged: (value) {
                                setState(() {
                                  isWhatsAppSelected = value!;
                                });
                              },
                            ),
                          ),
                          Text(
                            "WhatsApp",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Transform.scale(
                            scale: 0.8,
                            child: Checkbox(
                              value: isEmailSelected,
                              onChanged: (value) {
                                setState(() {
                                  isEmailSelected = value!;
                                });
                              },
                            ),
                          ),
                          Text(
                            "Email",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  )


                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),
                ElevatedButton(

                  onPressed: () {

                    Navigator.pop(context);
                  },
                  child: Text("Submit"),
                ),
              ],
            );
          },
        );
      },
    );
  }







  bool isFavorite = false;


  final List<Map<String, String>> products = [
    {"image": "assets/product1.png", "name": "Product A", "price": "₹15,000"},
    {"image": "assets/product2.png", "name": "Product B", "price": "₹18,500"},
    {"image": "assets/product3.png", "name": "Product C", "price": "₹20,000"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Interior Lighting",
          style: GoogleFonts.lato(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: Colors.purple,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {

              },
              child: Text(
                "Back to home",
                style: TextStyle(
                  color: Colors.purple,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.purple,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 180,
                width: 180,
                child: Image.asset('assets/product3.png', fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Interior Lighting | EGLO",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              "Manufacturer: SRI VISHAKA FIELDS",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.purple, size: 18),
                SizedBox(width: 5),
                Text("Coimbatore", style: TextStyle(fontSize: 12, color: Colors.grey)),
                SizedBox(width: 10),
                Icon(Icons.verified, color: Colors.blue, size: 18),
                SizedBox(width: 5),
                Text("Verified", style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1),
            SizedBox(height: 10),
            Text(
              "20000 INR (Approx.)",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Minimum Order Quantity: 01 Nos",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(height: 10),
            Divider(thickness: 1),
            SizedBox(height: 10),
            Text(
              "Minimum Order Quantity 1 Nos",
              style: TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Unit of Measure ",
              style: TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Nos",
              style: TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Product Specification & Payment Details)",
              style: TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            Divider(
              endIndent: 5,
              indent: 5,
            ),
            Text(
              "Suppliers Details)",
              style: TextStyle(fontSize: 22),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Manufacturer: SRI VISHAKA FEILDS",
              style: TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Address: Coimbatore",
              style: TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            Divider(
              endIndent: 5,
              indent: 5,
            ),
            Text(
              "More Products from this Supplier",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),


            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,

                itemCount: products.length,
                itemBuilder: (context, index) {
                  return
                    Container(
                      width: 160,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 2),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              products[index]["image"]!,
                              width: 100,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            products[index]["name"]!,
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5),
                          Text(
                            products[index]["price"]!,
                            style: TextStyle(fontSize: 14, color: Colors.purple),
                          ),
                          SizedBox(height: 5),
                          ElevatedButton(
                            onPressed: () {
                              _showEnquiryDialog(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Enquiry Sent for ${products[index]["name"]}")),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              textStyle: TextStyle(fontSize: 12),
                            ),
                            child: Text("Enquire"),
                          ),
                        ],
                      ),
                    );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
