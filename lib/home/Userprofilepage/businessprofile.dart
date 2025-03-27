import 'package:flutter/material.dart';
import 'package:flutterproject/home/Userprofilepage/profile.dart';

void main() {
  runApp(Accountpage());
}

class Accountpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.purple),
      home: BusinessProfilePage(),
    );
  }
}

class BusinessProfilePage extends StatelessWidget {
  final List<Map<String, dynamic>> profileItems = [
    {
      "title": "Business Name and Address",
      "subtitle": "Smart Global",
      "icon": Icons.business,
    },
    {
      "title": "Business Contact Detail and Timing",
      "subtitle": "+91 1122334455",
      "icon": Icons.phone,
    },
    {
      "title": "Business Website and social media links",
      "subtitle": "www.smartglobal.com",
      "icon": Icons.language,
    },
    {
      "title": "Business Categories",
      "subtitle": "Architect",
      "icon": Icons.category,
    },
    {
      "title": "Add Offers",
      "subtitle": "",
      "icon": Icons.local_offer,
    },
    {
      "title": "Photos and Videos",
      "subtitle": "",
      "icon": Icons.photo,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Business Profile", style: TextStyle(color: Colors.purple)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile())),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: profileItems.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(profileItems[index]["icon"], color: Colors.purple),
            title: Text(profileItems[index]["title"]),
            subtitle: profileItems[index]["subtitle"].isNotEmpty
                ? Text(profileItems[index]["subtitle"], style: TextStyle(color: Colors.grey[600]))
                : null,
            trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () {},
          );
        },
      ),

      // Bottom Navigation Bar

    );
  }
}