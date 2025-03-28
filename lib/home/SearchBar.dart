import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> categories = [
    'Architecture',
    'Land Promoters',
    'Engineers',
    'Real Estate Consultant',
    'Builder',
    'Contractors',
    'Registration Services',
    'Bank Loans (NBFC/PVT)'
  ];

  List<String> filteredItems = [];
  bool isTyping = false;

  void filterSearch(String query) {
    if (query.isEmpty) {
      setState(() {
        isTyping = false;
        filteredItems = [];
      });
      return;
    }

    List<String> tempList = categories
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();

    setState(() {
      isTyping = true;
      filteredItems = tempList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.purple,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 50,
                  width: 240,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.purple
                    ),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),

                  ),
                  child: TextFormField(
                    onChanged: (value) => filterSearch(value),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search here',

                        prefixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  child: Center(child: Text('Search',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                      )
                  ),

                )
              ],
            ),
            
            SizedBox(height: 10),
            isTyping
                ? Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredItems[index]),
                  );
                },
              ),
            )
                : Container(), 
            Text("Recent Search",style: TextStyle(fontSize: 20),),

            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return
                    ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.deepOrange.shade100,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(categories[index]),
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
