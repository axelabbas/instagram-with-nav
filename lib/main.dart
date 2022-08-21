import 'package:first_proejct/explore.dart';
import 'package:first_proejct/instagramhome.dart';
import 'package:first_proejct/profile.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentindex = 0;
  var pages = [
    instaui(),
    explore(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(label:'home',icon: Icon(Icons.home,color: Colors.black,)),
          BottomNavigationBarItem(label:'search',icon: Icon(Icons.search,color: Colors.black,)),
          BottomNavigationBarItem(label:'person',icon: Icon(Icons.person,color: Colors.black,)),
        ],
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}

