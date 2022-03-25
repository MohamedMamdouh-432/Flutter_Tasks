import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() => runApp(FormApp());

class FormApp extends StatefulWidget 
{
  @override
  State<FormApp> createState() => _FormAppState();
}

class _FormAppState extends State<FormApp> 
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}