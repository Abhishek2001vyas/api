import 'dart:async';
import 'package:api/map.dart';
import 'package:api/sh.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

var finalname;

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {


  @override
  void initState() {
    // TODO: implement initState
    getvali().whenComplete(()async{
      Timer(Duration(seconds: 3),()=> Navigator.push(context, MaterialPageRoute(builder: (context) {
      return  finalname == null ? Sh(): Mapp();
      },))
        // ( finalname ==null ? Sh(): Mapp()));
      );});
    super.initState();

  }
  Future getvali() async{
    final SharedPreferences qwe = await SharedPreferences.getInstance();
    var obtain = qwe.getString('name');
    setState(() {
      finalname = obtain;
    });
    print(finalname);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xff707070),
        Color(0xff686767),
        Color(0xff303030)
      ],begin: Alignment.topCenter,end: Alignment.bottomCenter,stops: [0.2,0.5,0.8]
      )),

      ),
      backgroundColor: Colors.black,
    );
  }
}
