import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: ContactPage(),
    );
  }
}

class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  final List<Map<String, String>> contacts = [
    {"name": "Jawad", "phone": "01877-777777"},
    {"name": "Ferdous", "phone": "01673-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Name Field
            TextFormField(
              decoration: InputDecoration(
                hintText: "Najim",
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Phon Field
            TextFormField(
              decoration: InputDecoration(
                hintText: "01745-777777",
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Add Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: const Text('Add',style: TextStyle(fontSize:16, color: Colors.white),),
              )

            )



          ],
        ),
      ),
    );
  }
}
