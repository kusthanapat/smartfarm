import 'package:flutter/material.dart';
//http method
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';


class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text('HomePage'),
        )
      ],
      
    );
  }
}