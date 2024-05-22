import 'package:dropdownwithprovider/provider_code.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> provider_code())
      ],
      child: const MaterialApp(
        title: 'DropDownWithProvider',
        debugShowCheckedModeBanner: false,
        home: homeScreen(),
      ),
    );
  }
}
