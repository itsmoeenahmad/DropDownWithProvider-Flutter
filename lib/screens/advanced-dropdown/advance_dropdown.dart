import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class advance_dropdown extends StatefulWidget {
  const advance_dropdown({super.key});

  @override
  State<advance_dropdown> createState() => _advance_dropdownState();
}

class _advance_dropdownState extends State<advance_dropdown> {

  List _itemlist = [];
  String _value = '';


  Future<void> get_list() async {
    var response = await http.get(Uri.parse('https://api.restful-api.dev/objects'));
    var res = jsonDecode(response.body.toString());
    print(res);
    print('The API response is within a list format so we will transfer it to a list.');
    setState(() {
      _itemlist = res;
      if (_itemlist.isNotEmpty) {
        _value = _itemlist[0]['id'].toString();
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get_list();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Advance DropDown Screen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 380,
              color: Colors.transparent,
              child: DropdownButton<String>(
                value: _value.isNotEmpty ? _value : null,
                onChanged: (newval) {
                  setState(() {
                    _value = newval!;
                  });
                },
                items: _itemlist.map<DropdownMenuItem<String>>((e) {
                  return DropdownMenuItem<String>(
                    child: Text('${e['name'].toString()}'),
                    value: e['id'].toString(),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
