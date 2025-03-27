import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.purple, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Dashboard",
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.purple),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
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
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text("My Business Insights",
                  style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold)),
            ),

          
            Expanded(
              flex: 2, 
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  _buildDashboardCard("Enquiries Received 100", "assets/dash1.png"),
                  _buildDashboardCard("Lead Generated 055", "assets/dash2.png"),
                  _buildDashboardCard("Number of View 100", "assets/dash3.png"),
                  _buildDashboardCard("Mini Website 100", "assets/dash4.png"),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text("Costomer Rating & Reviews",
                  style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold)),
            ),

            Expanded(
              child: Container(
                height: 150, 
                decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.purple.shade200),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Left Side Container
                    Container(
                      width: 100,
                      height: double.infinity, 
                      child: Image(image: AssetImage('assets/architecture2.png')),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10), 

                    
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min, 
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center, 
                        children: [
                          Text("John Doe",
                              style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 5), 
                          Text("Great service! Highly recommend.",
                              style: GoogleFonts.lato(fontSize: 14, color: Colors.black87)),
                        ],
                      ),
                    ),

                    
                    Padding(
                      padding: const EdgeInsets.only(right: 10), 
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  // Grid Dashboard Card with Image
  Widget _buildDashboardCard(String title, String imagePath) {
    return GestureDetector(
      onTap: () {
        // Add navigation or function here
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ClipRRect(

              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(imagePath, fit: BoxFit.cover, width: 100, height: 100),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
