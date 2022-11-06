import 'package:flutter/material.dart';
//http method
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';


class AddPage extends StatefulWidget {
  const AddPage({ Key? key }) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController Name = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('เพิ่มรายการ')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            //ช่องกรอกข้อมูล
            TextField(
              controller: Name,
              decoration: InputDecoration(
                labelText: 'เพิ่มต้นไม้ของคุณ',
                border: OutlineInputBorder()
              ),
            
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('เพิ่ม'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 76, 173, 222)),
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 20, 50, 20)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))
                ),

              ),
            )
          ],
        ),
      ),
      
    );
  }

  // Future PostTodo() async {
  //   var url = Uri.https('', '')

  // }

}