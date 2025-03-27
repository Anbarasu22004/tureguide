import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  final TextEditingController _searchController = TextEditingController();
  List<String> messages = [
    "You have a new lead from the Architect category. Name: Rajesh Sharma, Contact: +91 9876543210, Requirement: Residential Design Consultation.",
    "From: Priya Verma",
    "Hi, I am interested in the land promotion services. Could you provide details about your pricing?",
    "See you soon!",
    "Flutter is awesome!",
    "Let's catch up later.",
  ];
  List<String> text = [
    'S',
    'R',
    'T',
    'P',
    'A',
    'S',
  ];



  List<String> filteredMessages = [];
  String selectedFilter = "All";

  @override
  void initState() {
    super.initState();
    filteredMessages = messages;
  }

  void _filterMessages(String query) {
    setState(() {
      filteredMessages = messages
          .where((msg) => msg.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void _applyFilter(String filter) {
    setState(() {
      selectedFilter = filter;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.purple, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Messages",
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.purple),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Search Bar
            TextFormField(
              controller: _searchController,
              onChanged: _filterMessages,
              decoration: InputDecoration(
                hintText: "Search messages...",
                prefixIcon: const Icon(Icons.search, color: Colors.purple),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 10),

            // Horizontal Filter Bar
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildFilterChip("All Messages"),
                  _buildFilterChip("Leads Message"),
                  _buildFilterChip("Costomer Inquires"),
                  _buildFilterChip("Unread"),
                ],
              ),
            ),

            const SizedBox(height: 10),
            // Messages List
            Expanded(
              child: ListView.builder(
                itemCount: filteredMessages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.purple.shade200),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.purple,
                            radius:25,
                            child: Text(text[index],style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              filteredMessages[index],
                              style: GoogleFonts.lato(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
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

  Widget _buildFilterChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ChoiceChip(
        label: Text(label),
        selected: selectedFilter == label,
        selectedColor: Colors.purple,
        onSelected: (bool selected) {
          _applyFilter(label);
        },
      ),
    );
  }
}
