import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController name = TextEditingController() ;
  TextEditingController password = TextEditingController() ;

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello', style: TextStyle(color: Colors.white, fontSize: 90)),
              const Text('Sign into your Account', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 60),
              Container(
                height: 50, width: 500,
                padding: const EdgeInsets.symmetric(horizontal:25),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                child: TextField(
                  controller: name,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.black, size: 30,),
                    hintText: 'Sohail', 
                    hintStyle: TextStyle(color: Colors.black),
                  )
                ),
              ),
              const SizedBox(height: 40),
              Container(
                height: 50, width: 500,
                padding: const EdgeInsets.symmetric(horizontal:25),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.black),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                )
              )),
              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.topRight,
                child: Text('Forgot your Password ?', style: TextStyle(color: Colors.white, fontSize: 18))
              ),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const[
                    Text('Sign in', style: TextStyle(color: Colors.white, fontSize: 25)),
                    Icon(Icons.arrow_forward, size: 50, color: Colors.white),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Text.rich(
                TextSpan(
                  text: 'Don\'t have an account ?', 
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  children: [
                    TextSpan(text: 'Create ', style: TextStyle(decoration: TextDecoration.underline))
                  ]
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}