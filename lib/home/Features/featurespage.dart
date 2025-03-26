import 'package:flutter/material.dart';



class featurespage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FeaturesScreen(),
    );
  }
}

class FeaturesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {"title": "BUSINESS LISTING", "icon": Icons.business, "color": Colors.red.shade300},
    {"title": "MINI WEBSITE", "icon": Icons.web, "color": Colors.red.shade300},
    {"title": "SOCIAL MEDIA PROMOTIONS", "icon": Icons.campaign, "color": Colors.red.shade300},
    {"title": "BUSINESS SEO", "icon": Icons.search, "color": Colors.red.shade300},
    {"title": "SPECIAL DAY POSTERS", "icon": Icons.insert_invitation, "color": Colors.red.shade300},
    {"title": "DIGITAL BUSINESS CARD", "icon": Icons.credit_card, "color": Colors.red.shade300},
    {"title": "LEAD & ENQUIRY GENERATION", "icon": Icons.leaderboard, "color": Colors.red.shade300},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Colors.purple,),
        title: Text("Features"),
        actions: [
          Icon(Icons.search,color: Colors.purple,),
          SizedBox(width: 10,),
          Icon(Icons.headset_mic_outlined,color: Colors.purple,),
          SizedBox(width: 10,)
        ],

      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white,Colors.red.shade300]
            )
        ),
        child: Column(
          children: [
            SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.only(right:250),
              child: Text("List of Features", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: features.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Card(
                      color: features[index]['color'],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: Icon(features[index]['icon'], color: Colors.white),
                        title: Text(
                          features[index]['title'],
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(width: 5,),
            Padding(
              padding: const EdgeInsets.only(right:280,bottom: 120),
              child: Text("Testimonal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),

            // Testimonial Section
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Text("Hari", style: TextStyle(fontWeight: FontWeight.bold)),
                      Spacer(),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star_border, color: Colors.yellow),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '"I had a great experience with srivishakhahields. They completed my home renovation on time and exceeded my expectations. Highly professional and transparent in their pricing."',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Date: December 18, 2024",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),

            // Bottom Navigation Bar

          ],
        ),
      ),
    );
  }
}