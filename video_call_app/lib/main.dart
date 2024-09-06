import 'package:flutter/material.dart';
import 'package:video_call_app/videocall.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'oo',
      theme: ThemeData(),
      home: RegisterPage(),
    );
  }
}

final TextEditingController namecontroller = TextEditingController();
final TextEditingController usernamecontroller = TextEditingController();
final TextEditingController idcontroller = TextEditingController();

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Video aramasina katil!",
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent),
              ),
              SizedBox(
                height: 30,
              ),
              _buildTextFile(
                controller: namecontroller,
                labelText: "İsim",
                icon: Icons.person,
              ),
              SizedBox(
                height: 10,
              ),
              _buildTextFile(
                controller: usernamecontroller,
                labelText: "Kullanici Adi",
                icon: Icons.spoke,
              ),
              SizedBox(
                height: 10,
              ),
              _buildTextFile(
                controller: idcontroller,
                labelText: "Oda Numarasi",
                icon: Icons.video_call,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.blue,
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CallPage()));
                },
                child: Text(
                  "Katil",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFile({
    required TextEditingController controller,
    required String labelText,
    required IconData icon,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.blueAccent,
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.black54,
        ),
        filled: true,
        fillColor: Colors.blue[50],
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.blueAccent),
        ),
      ),
    );
  }
}
