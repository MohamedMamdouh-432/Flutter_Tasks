import 'package:flutter/material.dart' ;

void main() 
{
  runApp(const Dorm()) ;  
}

class Dorm extends StatelessWidget {
  const Dorm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color(0xFF2196F3)),
                currentAccountPicture: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Color(0xFF1976D2),
                ),
                  accountName: Text('Ammar Mohamed'),
                  accountEmail: Text('ammarfathy516@gmail.com'),
              ),
        ]),
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.green,
            title: const Text('WhatsApp Chat', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            actions: const[
              Icon(Icons.search),
              SizedBox(width: 10),
              Icon(Icons.message),
              SizedBox(width: 20),
            ]),
        ),
        body: ListView(
          children: [
            drawChatBar(Colors.deepOrange, 'Mohamed Hosny', Row(children: const [Icon(Icons.keyboard_voice, color: Colors.grey), Text('0:07', style: TextStyle(color: Colors.grey))]), Column(children: const [Text('1:30 PM', style: TextStyle(color: Colors.green)), CircleAvatar(radius: 15, backgroundColor: Colors.green, child: Text('3'))])),
            const Divider(thickness:2, indent: 90, endIndent: 20),
            drawChatBar(Colors.grey, 'Mohamed Mosa', Row(children: const [Icon(Icons.check, color: Colors.grey), Icon(Icons.camera_alt, color: Colors.grey), Text('Photo', style: TextStyle(color: Colors.grey))]), const Text('Friday', style: TextStyle(color: Colors.grey))),
            const Divider(thickness:2, indent: 90, endIndent: 20),
            drawChatBar(Colors.yellow, 'Mohamed Samir', Row(children: const [Icon(Icons.check, color: Colors.grey), Text('إزيك يا هندساه اخبارك اي ؟', style: TextStyle(color: Colors.black,  fontWeight: FontWeight.bold))]), const Text('11:45 AM', style: TextStyle(color: Colors.grey))),
            const Divider(thickness:2, indent: 90, endIndent: 20),
            drawChatBar(Colors.lightGreenAccent, 'Ahmed Lotfy', Row(children: const [Icon(Icons.done_all, color: Colors.blue), Text('متنساش الفلاشه وانت جاى الكلية', style: TextStyle(color: Colors.grey))]), const Text('1:12 AM', style: TextStyle(color: Colors.grey))),
            const Divider(thickness:2, indent: 90, endIndent: 20),
            drawChatBar(Colors.black, 'Emad Gamal', const Text('You are a great man', style: TextStyle(color: Colors.black)), Column(children: const [Text('11:45 AM', style: TextStyle(color: Colors.green)), CircleAvatar(radius: 15, backgroundColor: Colors.green, child: Text('1'))])),
            const Divider(thickness:2, indent: 90, endIndent: 20),
            drawChatBar(Colors.cyanAccent, 'Farah', Row(children: const [Icon(Icons.tag_faces, color: Colors.grey), Text('Sticker', style: TextStyle(color: Colors.black))]), Column(children: const [Text('11:45 AM', style: TextStyle(color: Colors.green)), CircleAvatar(radius: 15, backgroundColor: Colors.green, child: Text('2'))])),
            const Divider(thickness:2, indent: 90, endIndent: 20),
            drawChatBar(Colors.blueAccent, 'Shrouk', const Text(' '), const Text('5:33 AM')),
            const Divider(thickness:2, indent: 90, endIndent: 20),
            drawChatBar(Colors.deepPurple, 'Michael Mettry', Row(children: const [Icon(Icons.tag_faces, color: Colors.blue), Icon(Icons.tag_faces, color: Colors.blue), Text('عاوزين نفرح بيك ؟', style: TextStyle(color: Colors.black))]), Column(children: const [Text('6:54 PM', style: TextStyle(color: Colors.green)), CircleAvatar(radius: 15, backgroundColor: Colors.green, child: Text('5'))])),
            const Divider(thickness:2, indent: 90, endIndent: 20),
            drawChatBar(Colors.pink, 'Shahenda Mohamed', Row(children: const [Icon(Icons.thumb_up_alt, color: Colors.grey), Text('Thanks alot', style: TextStyle(color: Colors.grey))]), const Text('Yesterday', style: TextStyle(color: Colors.grey))),
            const Divider(thickness:2, indent: 90, endIndent: 20),
            drawChatBar(Colors.teal, 'Jack Malek', const Text('Hi, Jack How Things!', style: TextStyle(color: Colors.black,  fontWeight: FontWeight.bold)), null),
            const Divider(thickness:2, indent: 90, endIndent: 20),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
            child: const Icon(Icons.camera_alt),
          onPressed: (){},
        ),
      ),
    );
  }

  ListTile drawChatBar(Color circleColor, String name, Widget? bottom, Widget? last)
  {
    return ListTile(
        leading: CircleAvatar(
          radius: 23,
          backgroundColor: circleColor,
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: bottom,
        trailing: last
    ) ;
  }
}