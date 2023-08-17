// import 'dart:convert';
// import 'package:dio/dio.dart';
//
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// import 'Models/Api.dart';
//
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
// List<Api> postList =[];
//   Future<List<Api>>getPostApi()async{
//     final resposne =await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//     var data = jsonDecode(resposne.body.toString());
//     if(resposne.statusCode==200){
//       for(Map i in data){
//         postList.add(Api.fromJson(i));
//       }
//       return postList;
//     }else{
//       return postList;
//     }
//
//
// }
// // void initState() {
// //   // TODO: implement initState
// //   super.initState();
// //   getapi();
// // }
//
// // var jsonlist;
// // Future<void> getapi()async{
// //     try{
// //       var response = await Dio().get('https://jsonplaceholder.typicode.com/users');
// //       if(response.statusCode==200){
// //         setState(() {
// //           jsonlist= response.data['user'] as List;
// //         });
// //
// //       }
// //     }catch(e){}
// // }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.brown),
//
//     body: Column(
//       children: [
//         // ElevatedButton(onPressed: (){
//           Expanded(
//           child: FutureBuilder(future: getPostApi(),builder: (context, snapshot) {
//             if(!snapshot.hasData){
//               return Text("Loading");
//             }
//             else{
//               return ListView.builder(itemCount: postList.length,itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Card(child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,children: [
//                     Text('Title: '+postList[index].title.toString()),
//                     Text('DEscription\n'+postList[index].body.toString()),
//                   ]),),
//                 );
//
//                 // return Text(index.toString());
//               },);
//             }
//           },),
//         )
//         // }, child: Text("http")),
//
//           // Expanded(
//           //   child: FutureBuilder(future: getapi(),builder: (context, snapshot) {
//           //     if(!snapshot.hasData){
//           //       return Text("Loading");
//           //     }
//           //     else{
//           //       return ListView.builder(itemCount: jsonlist.length,itemBuilder: (context, index) {
//           //         return Padding(
//           //           padding: const EdgeInsets.all(15.0),
//           //           child: Card(child: Column(
//           //               mainAxisAlignment: MainAxisAlignment.start,
//           //               crossAxisAlignment: CrossAxisAlignment.start,children: [
//           //             Text(jsonlist[index]['name'])
//           //           ]),),
//           //         );
//           //
//           //         // return Text(index.toString());
//           //       },);
//           //     }
//           //   },),
//           // )
//
//
//
//       ],
//     ),
//     );
//
//
//   }
//
// }
