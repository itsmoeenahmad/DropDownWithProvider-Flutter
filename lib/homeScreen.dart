import 'package:dropdownwithprovider/provider_code.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        automaticallyImplyLeading: false,
        title: const Text(
          'DropDownWithProvider',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            'Simple DropDown',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          )),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            height: height*0.065,
            width: width*0.29,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.black
              )
            ),
            child: Consumer<provider_code>(
              builder: (index,provider_value,child){
                return Center(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        value: provider_value.selected_value,
                        items: provider_value.list_colors.map((item){
                          return DropdownMenuItem(child: Text(item,style: TextStyle(color: Colors.black),),value: item,);
                        }).toList(),
                        onChanged: (new_value){
                          provider_value.change_value(new_value);
                        }),
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
