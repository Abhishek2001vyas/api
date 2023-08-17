import 'package:api/map.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class Sh extends StatefulWidget {
  const Sh({super.key});

  @override
  State<Sh> createState() => _ShState();
}

class _ShState extends State<Sh> {


  TextEditingController pass =TextEditingController();
  TextEditingController name =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                child: TextFormField(
                  controller:  name,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
              ),
              Container(
                width: 200,
                child: TextFormField(
                  controller: pass,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
              ),
              ElevatedButton(onPressed: ()async{
                final SharedPreferences qwe = await SharedPreferences.getInstance();
                qwe.setString('name', name.text);
                // qwe.setString('pass', pass.text.toString());
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mapp(),));

              }, child: Text("login"))

            ],
          ),
        ),
      ),
    );
  }
}

