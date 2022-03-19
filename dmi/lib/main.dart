import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const DmiApp());

class DmiApp extends StatefulWidget {
  const DmiApp({Key? key}) : super(key: key);
  @override
  State<DmiApp> createState() => _DmiAppState();
}

class _DmiAppState extends State<DmiApp> {
  double val = 1.0;
  int weight=20, age=15;
  double height=0.0 ;
  int mColor = 0xff323244 , fColor = 0xff323244 ; // 0xff24263b 0xff212db5
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff1d2136),
        appBar: AppBar(
          backgroundColor: const Color(0xff1d2136),
          title: const Text('BMI CALCULATOR'),
          centerTitle: true
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        mColor = 0xff0d124f ;
                        fColor = 0xff323244 ;
                      });
                    },
                    child: Container(
                      height: 190, width: 170,
                      decoration: BoxDecoration(
                        color: Color(mColor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Icon(Icons.male, size: 80,color: Colors.white),
                          Text('MALE', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                        ])),
                  ),
                  const SizedBox(width: 2),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        fColor = 0xff0d124f ;
                        mColor = 0xff323244 ;
                      });
                    },
                    child: Container(
                      height: 190, width: 170,
                      decoration: BoxDecoration(
                        color: Color(fColor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Icon(Icons.female, size: 80,color: Colors.white),
                          Text('FEMALE', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                        ])),
                  )])),
            Container(
              height: 185,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: const Color(0xff323244),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('HEIGHT', style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$height',style: const TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold)),
                      const Text('cm', style: TextStyle(color: Colors.white))
                    ]),
                  Slider(
                    value: height,
                    min: 0, max: 3000,
                    divisions: 500,
                    label: 'Your Height',
                    activeColor: const Color(0xffda4268),
                    inactiveColor: const Color(0xff575766),
                    onChanged: (val){
                      setState((){
                        height = val ;
                        height = double.parse((height).toStringAsFixed(2)) ;
                      });
                    })])),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 200, width: 170,
                    decoration: BoxDecoration(
                      color: const Color(0xff323244),
                      borderRadius: BorderRadius.circular(24), 
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('WEIGHT', style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('$weight', style: const TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: const CircleAvatar(
                                radius: 23,
                                backgroundColor: Color(0xff5d5f6e),
                                child: Icon(Icons.remove,size:35, color: Colors.white)
                              )
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: const CircleAvatar(
                                radius: 23,
                                backgroundColor: Color(0xff5d5f6e),
                                child: Icon(Icons.add, size:35, color: Colors.white),
                              )
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 2),
                  Container(
                    height: 200, width: 170,
                    decoration: BoxDecoration(
                      color: const Color(0xff323244),
                      borderRadius: BorderRadius.circular(24), 
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('AGE', style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('$age', style: const TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: const CircleAvatar(
                                radius: 23,
                                backgroundColor: Color(0xff5d5f6e),
                                child: Icon(Icons.remove, size:35, color: Colors.white),
                              )
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: const CircleAvatar(
                                radius: 23,
                                backgroundColor: Color(0xff5d5f6e),
                                child: Icon(Icons.add, size:35, color: Colors.white),
                              )
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap:(){
                /* kg = 2.20462 Ib && cm = 0.393701 in && bmi = (w/h^2)*703 */
                double h=height*0.393701 ;
                double w = weight*2.20462 ;
                double bmi = double.parse(((w/pow(h, 2))*703).toStringAsFixed(0)) ;
                // ignore: avoid_print
                print('BMI Value : $bmi') ;
              },
              child:  Container(
                height: 50, width: double.infinity, 
                padding: const EdgeInsets.all(16),
                alignment: Alignment.topCenter,
                color: const Color(0xffe83d66),
                child: const Text('CALCULATE', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white),),
              ))
          ],
        ),
      ),
    );
  }
}