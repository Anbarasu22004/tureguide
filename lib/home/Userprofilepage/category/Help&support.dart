import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  final List<Map<String, dynamic>> helpItems = [
    {'icon': Icons.support_agent, 'title': "Customer Support", 'subtitle': "Get help with your issues"},
    {'icon': Icons.find_in_page, 'title': "FAQ", 'subtitle': "Frequently Asked Questions"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.purple, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Help",
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.purple),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Help & Support",
              style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: helpItems.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        helpItems[index]['icon'],
                        color: Colors.purple,
                        size: 28,
                      ),
                      title: Text(
                        helpItems[index]['title'],
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(helpItems[index]['subtitle']),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                      onTap: () {

                      },
                    ),
                    Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
