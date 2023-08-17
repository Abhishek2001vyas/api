// import 'package:api/post.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';
//
// import 'home.dart';
//
// class Login extends StatefulWidget {
//   const Login({super.key});
//
//   @override
//   State<Login> createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   TextEditingController mobile =TextEditingController();
//   TextEditingController pass =TextEditingController();
//
//   login(String mobile,password)async{
//     try{
//       Response response = await post(Uri.parse('https://developmentalphawizz.com/kolaz_book/api/login'),
//           body: {
//             'mobile':mobile,
//             'password':password
//           }
//
//       );
//       if(response.statusCode==200){
//         var data = jsonDecode(response.body.toString());
//         var q=  data['error'];
//
//
//         if(q ==false){
//           Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
//         }
//
//         print(data['message']);
//         print("done");
//       }else{
//         print("flase");
//       }
//
//     }catch(e){}
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(children: [
//           Container(child: TextFormField(decoration: InputDecoration(hintText: 'mobile'),controller: mobile),),
//            Container(child: TextFormField(decoration: InputDecoration(hintText: 'pass'),controller: pass),),
//
//             Container(child: ElevatedButton(child: Text("signin"),onPressed: ()async {
//
//               await login(mobile.text.toString(),pass.text.toString());
//
//
//
//
//             }),
//
//
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => Post(),
//                       ));
//                 },
//                 child: Text("Donot have amount? signup"))
//
//
//           ]),
//         ),
//       ),
//
//
//     );
//   }
// }
