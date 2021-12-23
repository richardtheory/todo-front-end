import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/todo_home_view.dart';

main(){
  runApp(
    MaterialApp(
      home: TodoHomeView(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Color(0xff5F6D95),fontSize: 34)
      ),
    ),
    darkTheme: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Color(0xff5F6D95),fontSize: 34)
      ),
      
    ),

    ),
  );
}

