import 'package:flutter/cupertino.dart';

class provider_code extends ChangeNotifier
{


  String selected_value = 'blue';

  List<String> list_colors = ['red','white','black','purple','yellow','orange','blue'];


  void change_value(new_value)
  {
    selected_value=new_value!;
    notifyListeners();
  }

}