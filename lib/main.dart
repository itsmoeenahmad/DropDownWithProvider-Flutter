import 'package:dropdownwithprovider/screens/simple-dropdown/provider_code.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/main_screen.dart';
import 'screens/simple-dropdown/simple_dropdown.dart';

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
        home: main_screen(),
      ),
    );
  }
}
