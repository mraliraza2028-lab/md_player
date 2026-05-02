import 'package:flutter/material.dart';

void main() {
  runApp(const MDPlayer());
}

class MDPlayer extends StatelessWidget {
  const MDPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MD Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: const LockScreen(),
    );
  }
}

class LockScreen extends StatefulWidget {
  const LockScreen({super.key});

  @override
  State<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  final TextEditingController _pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.lock_person, size: 100, color: Colors.blueAccent),
              const SizedBox(height: 20),
              const Text(
                "MD Player Private Safe",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: _pinController,
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'اپنا 4 ہندسوں کا پن لکھیں',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // فی الحال یہ بٹن اگلے پیج پر لے جائے گا
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("خوش آمدید!")),
                  );
                },
                style: ElevatedButton.styleFrom(minimumSize: const Size(200, 50)),
                child: const Text("لاگ ان کریں"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
