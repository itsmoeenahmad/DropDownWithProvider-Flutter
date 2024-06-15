import 'package:dropdownwithprovider/screens/advanced-dropdown/advance_dropdown.dart';
import 'package:dropdownwithprovider/screens/simple-dropdown/simple_dropdown.dart';
import 'package:flutter/material.dart';

class main_screen extends StatefulWidget {
  const main_screen({super.key});

  @override
  State<main_screen> createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Main Screen',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>simple_dropdown()));
              },
              child: Container(
                height: 40,
                width: 250,
                color: Colors.black,
                child: Center(child: Text('Simple-DropDown',style: TextStyle(color: Colors.white),),),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>advance_dropdown()));
              },
              child: Container(
                height: 40,
                width: 250,
                color: Colors.black,
                child: Center(child: Text('Advanced-DropDown',style: TextStyle(color: Colors.white),),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
