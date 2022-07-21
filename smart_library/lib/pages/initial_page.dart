import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('images/reading.jpg',height:400, width: double.infinity,) ,
          const Text('Smart\nLibrary', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromARGB(170, 38, 34, 34))),
          const SizedBox(height: 15,),
          const Text('make it easier to read', style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic, fontSize: 16)),
          const SizedBox(height: 50,),
          Container(
            padding: const EdgeInsets.all(16.0) ,
            height: 60, width: 230,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xff5cd0b5),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'Explore Page'), 
              child: const Text('Get Started', style: TextStyle(fontSize: 26, color: Colors.white),)
            ),
            ),
        ],
      ),
    );
  }
}