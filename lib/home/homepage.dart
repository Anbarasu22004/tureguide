import 'package:flutter/material.dart';
import 'package:flutterproject/home/Userprofilepage/personaldetails/verification1.dart';
import 'package:flutterproject/home/Userprofilepage/profile.dart';
import 'package:flutterproject/home/category/architecture/architecture.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.purple),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {"title": "Architect", "icon": Icons.architecture},
    {"title": "Land Promoters", "icon": Icons.location_city},
    {"title": "Engineers", "icon": Icons.engineering},
    {"title": "Real Estate Consultant", "icon": Icons.real_estate_agent},
    {"title": "Builders", "icon": Icons.construction},
    {"title": "Contractors", "icon": Icons.handyman},
    {"title": "Registration Services", "icon": Icons.receipt_long},
    {"title": "Bank Loans", "icon": Icons.account_balance},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.black,Colors.green],)

      ),child: Scaffold(

      appBar: AppBar(
        title: Text("Smart Global", style: TextStyle(color: Colors.purple)),
        actions: [
          Icon(Icons.location_on, color: Colors.purple),
          Icon(Icons.notifications, color: Colors.purple),
          SizedBox(width: 8),
        ],
      ),
      drawer: UserProfile(),
      body:  Container( decoration:
      BoxDecoration(
          gradient:LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white,
                Colors.red.shade300]
          )
      ) ,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search here", prefixIcon: Icon(Icons.search,color: Colors.purple,),
                              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple,width: 30),
                                  borderRadius: BorderRadius.circular(30))
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 16),

                // Categories Grid
                Text("Top Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1.3
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        switch (categories[index]['title']){
                          case "Architect":
                            Navigator.push(context, MaterialPageRoute(builder: (context) => architecture()));
                            break;
                          default:
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Comming soon"))
                            );
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(categories[index]["icon"], size: 30, color: Colors.purple),
                            SizedBox(height: 5),
                            Text(categories[index]["title"], textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    );

                  },
                ),
                SizedBox(height: 20),

                // Special Features Section
                Text("Special Features", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(child: _buildFeatureCard("Business Listing", Icons.list, Colors.red)),
                    SizedBox(width: 8),
                    Expanded(child: _buildFeatureCard("Social Media Promotions", Icons.share, Colors.orange)),
                  ],
                ),
                SizedBox(height: 16),

                // Register Business
                Container(
                  height: 112,
                  width: 400,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.red[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Text(
                          "Register Your Business Today",
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>kyc()));
                          },
                          child: Text("Register Now",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Advertisement Section
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Increase Leads And Expand Your Reach Effortlessly!",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8),
                      Icon(Icons.trending_up, color: Colors.white, size: 40),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Explore Services
                Text("Explore Services", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Are you an Architect? Showcase Your Expertise on True Guide!",
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: () {},
                        child: Text("Join as an Architect Now"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // Bottom Navigation Bar

    ),
    );
  }

  Widget _buildFeatureCard(String title, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 30),
          SizedBox(height: 5),
          Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}