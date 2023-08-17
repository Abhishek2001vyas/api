// import 'dart:convert';
//
// import 'package:api/home.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' ;
//
// import 'login.dart';
//
// class Post extends StatefulWidget {
//   const Post({super.key});
//
//   @override
//   State<Post> createState() => _PostState();
// }
//
// class _PostState extends State<Post> {
//   TextEditingController fame =TextEditingController();
//   TextEditingController pass =TextEditingController();
//   TextEditingController lname =TextEditingController();
//   TextEditingController cpass =TextEditingController();
//   TextEditingController email =TextEditingController();
//   TextEditingController mobile =TextEditingController();
//
//
//   login(String fname,lname,email,password,cpass,mobile) async{
//     try{
// Response response = await post(Uri.parse('https://developmentalphawizz.com/kolaz_book/api/user_register'),
//
// body: {
//   'firstname':fname,
//   'lastname':lname,
//   'confirm_password':cpass,
//   'email':email,
//   'mobile':mobile,
//   'password':password
//      }
//
// );
// if(response.statusCode==200){
//   var data = jsonDecode(response.body.toString());
//
//
//
// print("done");
//   }else{
// print("flase");
// }
//
//     }catch(e){}
//
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(children: [
//             Container(child: TextFormField(decoration: InputDecoration(hintText: 'fame'),controller: fame),),Container(child: TextFormField(decoration: InputDecoration(hintText: 'lname'),controller: lname),),
//             Container(child: TextFormField(decoration: InputDecoration(hintText: 'email'),controller: email),),Container(child: TextFormField(decoration: InputDecoration(hintText: 'pass'),controller: pass),),Container(child: TextFormField(decoration: InputDecoration(hintText: 'cpass'),controller: cpass),)
//             ,Container(child: TextFormField(decoration: InputDecoration(hintText: 'mobile'),controller: mobile),)
//           ,
//
//             Container(child: ElevatedButton(child: Text("signin"),onPressed: ()async {
//
//             await login(fame.text.toString(),lname.text.toString(),email.text.toString(),pass.text.toString(),cpass.text.toString(),mobile.text.toString(),);
//             Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
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
//                         builder: (context) => Login(),
//                       ));
//                 },
//                 child: Text("Already have amount? Login"))
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
