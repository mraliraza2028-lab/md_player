import 'package:flutter/material.dart';

class MDHomePage extends StatefulWidget {
  const MDHomePage({super.key});

  @override
  State<MDHomePage> createState() => _MDHomePageState();
}

class _MDHomePageState extends State<MDHomePage> {
  int _currentIndex = 0;

  // یہ وہ پیجز ہیں جو نیچے والے بٹنز دبانے پر بدلیں گے
  final List<Widget> _pages = [
    // پہلا پیج: لوکل ویڈیوز اور فولڈرز (یہ سب کے لیے کھلا ہوگا)
    const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.folder_open, size: 80, color: Colors.blueAccent),
          SizedBox(height: 10),
          Text("آپ کی تمام ویڈیوز یہاں نظر آئیں گی", style: TextStyle(fontSize: 18)),
        ],
      ),
    ),
    
    // دوسرا پیج: پرائیویٹ سیف (یہاں ہم بعد میں لاک لگائیں گے)
    const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.security, size: 80, color: Colors.redAccent),
          SizedBox(height: 10),
          Text("پرائیویٹ سیف - یہاں آپ کا ڈیٹا محفوظ ہوگا", style: TextStyle(fontSize: 18)),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MD Player"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: "Local"),
          BottomNavigationBarItem(icon: Icon(Icons.lock), label: "Private"),
        ],
      ),
    );
  }
}
