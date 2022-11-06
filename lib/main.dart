import 'package:flutter/material.dart';
import 'package:smartfarm/Page/home.dart';
import 'package:smartfarm/Page/plants.dart';
//http method
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );

  }
}

class MainPage extends StatefulWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  int _currentIndex = 0 ;
  final tabs = [HomePage(),PlantsPage()];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SmartFarm_Project"),),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.park),label: 'Plants')
        ], 
        onTap: (index) {
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },

        ),
      
    );
  }
}

