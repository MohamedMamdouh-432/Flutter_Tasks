import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget 
{
  ExplorePage({Key? key,}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> 
{
  String content='There is no friend as \nloyal as abook.', imgPath='images/readBokk.jpg' ;
  final int notPressedColor = 0xffdad8d4 , pressedColor = 0xff5cd0b5  ;
  int? fc,sc,tc,rc ;
  int i=0 ;
  bool isFourPage = false ;
  @override
  Widget build(BuildContext context) 
  {
    if(i==0) 
    {
      fc = pressedColor ;
      sc = tc = rc = notPressedColor ;
    }
    i++ ;
    return Scaffold(
      body: isFourPage==false?
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(content,style: TextStyle(fontSize: 30, color: Color(pressedColor)))
            ) ,
            Image.asset(imgPath,height:400, width: double.infinity,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      content = 'There is no friend as \nloyal as abook.' ;
                      imgPath = 'images/readBokk.jpg';
                      fc = pressedColor ;
                      sc = tc = rc = notPressedColor ;
                      isFourPage = false ;
                    });
                  },
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(fc!),
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () 
                  {
                    setState(()
                    {
                      content = 'Today reader tomorrow a \nreader.' ;
                      imgPath = 'images/libraryImg.jpg'; 
                      sc = pressedColor ;
                      fc = tc = rc = notPressedColor ;
                      isFourPage = false ;
                    });},
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(sc!),
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      content = 'It\'s better to know one \nlbook inimately than a \nhundred superficially' ;
                      imgPath = 'images/readBox.jpg';
                      tc = pressedColor ;
                      fc = sc = rc = notPressedColor ;
                      isFourPage = false ;
                    });
                  },
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(tc!),
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    setState(() 
                    {
                      rc = pressedColor ; 
                      fc = sc = tc = notPressedColor ; 
                      isFourPage = true ;
                    });
                  },
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(rc!),
                  ),
                ),
              ],
            )
          ],
        ):
        Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/booksjpg.jpg'),
                fit: BoxFit.contain,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Books For',style: TextStyle(fontSize: 30, color: Color(0xff5cd0b5))),
              Column(
                children: [
                  Container(
                padding: const EdgeInsets.all(16.0) ,
                height: 60, width: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xff5cd0b5),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Text('Sign In', style: TextStyle(fontSize: 23, color: Colors.white),),
                ),
                const SizedBox(height: 20,),
                Container(
                padding: const EdgeInsets.all(16.0) ,
                height: 60, width: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xff5cd0b5),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Text('Sign Up', style: TextStyle(fontSize: 23, color: Colors.white),),
                ),
                ],
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      content = 'There is no friend as \nloyal as abook.' ;
                      imgPath = 'images/readBokk.jpg';
                      fc = pressedColor ;
                      sc = tc = rc = notPressedColor ;
                      isFourPage = false ;
                    });
                  },
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(fc!),
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () 
                  {
                    setState(()
                    {
                      content = 'Today reader tomorrow a \nreader.' ;
                      imgPath = 'images/libraryImg.jpg'; 
                      sc = pressedColor ;
                      fc = tc = rc = notPressedColor ;
                      isFourPage = false ;
                    });},
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(sc!),
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      content = 'It\'s better to know one \nlbook inimately than a \nhundred superficially' ;
                      imgPath = 'images/readBox.jpg';
                      tc = pressedColor ;
                      fc = sc = rc = notPressedColor ;
                      isFourPage = false ;
                    });
                  },
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(tc!),
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    setState(() 
                    {
                      rc = pressedColor ; 
                      fc = sc = tc = notPressedColor ; 
                      isFourPage = true ;
                    });
                  },
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(rc!),
                  ),
                ),
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}