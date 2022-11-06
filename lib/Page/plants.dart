import 'package:flutter/material.dart';
//http method
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

import 'package:smartfarm/Page/add.dart';


class PlantsPage extends StatefulWidget {
  // const PlantsPage({ Key? key }) : super(key: key);

  @override
  State<PlantsPage> createState() => _PlantsPageState();
}

class _PlantsPageState extends State<PlantsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SmartFarm_Project"),
        actions: [
        IconButton(icon: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddPage();
          }));
        },
        )
      ],
      
      ),

      
    );
  }
}