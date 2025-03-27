import 'package:flutter/material.dart';
import 'package:flutterproject/home/Userprofilepage/businessprofile.dart';
import 'package:flutterproject/home/Userprofilepage/category/Dashboard.dart';
import 'package:flutterproject/home/Userprofilepage/category/Help&support.dart';
import 'package:flutterproject/home/Userprofilepage/category/Logoutpage.dart';
import 'package:flutterproject/home/Userprofilepage/category/Messages.dart';
import 'package:flutterproject/home/Userprofilepage/category/MydigitalCard.dart';
import 'package:flutterproject/home/Userprofilepage/category/Selectlanguage.dart';
import 'package:flutterproject/home/Userprofilepage/personaldetails/personaldetails.dart';
import 'package:flutterproject/home/Userprofilepage/wishlist.dart';
import 'package:flutterproject/home/category/architecture/architecture.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {


  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: Text(
            "Logout",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: Text(
            "Are you sure you want to log out?",
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                "Cancel",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Screen()))
                ;

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Logged out successfully")),
                );
              },
              child: Text(
                "Logout",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        );
      },
    );
  }


  List<String> titles =[
    'Account Setting',
    'My Digital Card',
    'Special Day Poster',
    "Wishlist",
    'My Message',
    'Dashboard',
    'Language',
    'Subscription Management',
    'Feedback & Support',
    'Logout'
  ];

  final List<Map<String,dynamic>> icons =[
    {'icon': Icons.person},
    {'icon': Icons.wallet},
    {'icon': Icons.post_add},
    {'icon': Icons.ads_click},

    {'icon': Icons.message},
    {'icon': Icons.dashboard},
    {'icon': Icons.language},
    {'icon': Icons.subscriptions},
    {'icon': Icons.feed},
    {'icon': Icons.logout},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.red.shade100,
            ],
          ),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                // Main background
                Container(
                  height: 310,

                ),

                // Profile header with rounded bottom
                Container(
                  height: 250, // Increased height for better spacing
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.red.shade300,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 150),
                        child: IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(Icons.close))
                      ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: CircleAvatar(
                        child: Text('S'),
                        radius: 25,
                        backgroundColor: Colors.white,

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 45,right: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Smart Global Solution",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(Icons.edit),
                          )
                          ],
                        ),
                        Row(
                          children: [
                            Text("1122333444566"),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  minimumSize: Size(6, 10),

                                ),
                                onPressed: (){}, child: Text("Active",))
                          ],
                        ),
                        TextButton(onPressed: (){}, child: Text("View Full profile",style: TextStyle(fontSize: 10,color: Colors.blue),))

                      ],),
                    ),
                  ],),
                ),

                // Floating Box (Hello, Welcome!)
                Positioned(
                  top: 150, // Positioned below the header
                  child: Container(
                    width: 350,
                    height: 150,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(

                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Colors.red.shade300,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessProfilePage()));
                          },
                          child: Container(
                            height: 80,
                            width: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              Icon(Icons.business_center_sharp),
                            Container(
                              height: 10,
                                color: Colors.white,
                                child: Center(child: Text("My Business",style: TextStyle(fontSize: 10),)))
                            ],),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.orange.shade200,
                                    Colors.white,
                                  ],
                                ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalDetailScreen()));
                            },
                            child: Container(
                              height: 80,
                              width: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.business),
                                  Container(
                                      height: 10,
                                      color: Colors.white,
                                      child: Center(child: Text("Add Business",style: TextStyle(fontSize: 10),)))
                                ],),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.orange.shade200,
                                      Colors.white,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.gif_box),
                                Container(
                                    height: 10,
                                    color: Colors.white,
                                    child: Center(child: Text("Add Product",style: TextStyle(fontSize: 10),)))
                              ],),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.orange.shade200,
                                    Colors.white,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),

                      ],)
                    ),
                  ),
                ),
              ],
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: titles.length,
                  itemBuilder: (context,index){
                    return  Container(
                      decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.black12, width: 1),
                            bottom: BorderSide(color: Colors.black12,width: 1)
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2,right: 2),
                        child: ListTile(
                          dense: true,
                          style: ListTileStyle.list,
                          leading:Icon(icons[index]['icon']),
                          title:
                          Text(titles[index],style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),
                          trailing: Icon(Icons.arrow_forward_ios,size: 16,),
                          onTap: (){
                            switch (titles[index]) {
                              case 'Logout':
                                _showLogoutDialog(context) ;

                                break;
                              case 'Language':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LanguageSection()));
                                break;
                              case 'Wishlist':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => wishlist()));
                                break;
                              case 'Account Setting':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Accountpage()));
                                break;
                              case 'My Message':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MessagesPage()));
                                break;
                              case 'Dashboard':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Dashboard()));
                                break;
                              case 'Feedback & Support':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HelpPage()));
                                break;
                              case 'My Digital Card':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DigitalCardPage()));
                                break;


                              default:
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Coming Soon...')));
                            }

                          },
                        ),
                      ),
                    );
                  }),
            ),


          ],
        ),
      ),
    );
  }
}
