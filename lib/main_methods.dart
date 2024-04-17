import 'package:flutter/material.dart';
import 'package:test_docu/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 14, 14),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 41, 41, 41),
        title: const Center(child: Text('Profile', style: TextStyle(color: Colors.white),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildAvatarSection, //calling variable
              sampleclass()._buildDetailsSection(), //calling class.method
            ],
          ),
        ),
      ),
    );
  }



  //using variables: simplicity and performance wise
  final _buildAvatarSection  = const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/gabijan.jpg'),
        ),
        SizedBox(height: 20),
        Divider(indent: 10, endIndent: 10),
        SizedBox(height: 20),
      ],
    );
  
  

  Widget _buildSocialRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(width: 10.0),
        Text(text, style: const TextStyle(color: Colors.white),),
      ],
    );
  }
}





//using class and methods to connect 
class sampleclass{
Widget _buildDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('NAME', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white)),
        const Text('FRANZ ANTHONY D. GABIJAN', style: TextStyle(color: Colors.amber),),
        const Text('YEAR LEVEL', style: TextStyle(color: Colors.white),),
        const Text('3', style: TextStyle(color: Colors.amber),),
        const SizedBox(height: 20),
        const Text('SOCIALS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
        MyHomePage()._buildSocialRow(Icons.mail, 'franzgabijan55@gmail.com'),
        MyHomePage()._buildSocialRow(Icons.facebook, 'Franz Anthony D. Gabijan'),
      ],
    );
  }
}
