import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;
import 'dart:convert';
import 'Models/Qwe.dart';

class Tour extends StatefulWidget {
  const Tour({super.key});

  @override
  State<Tour> createState() => _TourState();
}

class _TourState extends State<Tour> {


  List<Qwe> postList =[];

  Future<Qwe>getPostApi()async{
    final resposne =await http.get(Uri.parse('https://tour.alphawizzserver.com/api/home-page'));
    var data = jsonDecode(resposne.body.toString());
    // print(data.toString());
    // var rew= data['title'] as List;
    // print(rew);
    if(resposne.statusCode==200){
      return Qwe.fromJson(data);

    }else{return Qwe.fromJson(data);}

    // if(resposne.statusCode==200){
    //   // print(postList.length);
    //   for(Map<String,dynamic> i in data){
    //     postList.add(Qwe.fromJson(i));
    //     // print(postList.length);
    //     }
    //
    //
    //   return postList;
    // }else{
    //
    //   return postList;
    // }


  }
  // Future<List<Qwe>>getPostApi()async{
  //   final request =await http.get(Uri.parse('https://tour.alphawizzserver.com/api/home-page'));
  //   var data = jsonDecode(request.body.toString());
  //   print(data.toString());
  //   http.StreamedResponse response = await request.send();
  //   if(request.statusCode==200){
  //     print(await response.stream.bytesToString());
  //     print(postList.length);
  //     postList.add(Qwe.fromJson(Map.identity()));
  //
  //     // for(Map i in data){
  //     //   postList.add(Qwe.fromJson(Map.identity()));
  //     //
  //     //   // print('postList.length');
  //     // }
  //     print('postList.length');
  //     return postList;
  //
  //   }else{
  //     return postList;
  //   }
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // ElevatedButton(onPressed: (){
          Expanded(
            child: FutureBuilder<Qwe>(future: getPostApi(),builder: (context, snapshot) {
              if(!snapshot.hasData){
                return Text("Loading");
              }
              else{
                return ListView.builder(itemCount:

                snapshot.data!.data.elementAt(1).model.data!.length
                  ,itemBuilder: (context, index) {

                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Card(child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,children: [
                          Container(child: Column(children: [


                           // CircleAvatar(backgroundImage: NetworkImage(scale: 5,snapshot.data!.data.elementAt(1).model.data!.elementAt(0).image.toString())),
                            Text(snapshot.data!.data.elementAt(1).model.data!.elementAt(1).title.toString()),
                            Text(snapshot.data!.data.elementAt(1).model.data!.elementAt(0).content.toString()),
                            Text(snapshot.data!.data.elementAt(1).model.data!.elementAt(0).price.toString()),
                            Text(snapshot.data!.data.elementAt(1).model.data!.elementAt(0).salePrice.toString()),
                            Text(snapshot.data!.data.elementAt(1).model.data!.elementAt(0).discountPercent.toString()),
                            Text(snapshot.data!.data.elementAt(1).model.data!.elementAt(0).image.toString()),

                          ]),),


                      //     Text(snapshot.data!.data.elementAt(1).model.data!.elementAt(0).title.toString()),
                      // Text(snapshot.data!.data.elementAt(1).model.data!.elementAt(1).title.toString()),
                      // Text(snapshot.data!.data.elementAt(1).model.data!.elementAt(2).title.toString()),
                      // Text(snapshot.data!.data.elementAt(1).model.data!.elementAt(3).title.toString()),
                      // Text(snapshot.data!.data.elementAt(1).model.data!.elementAt(2).title.toString())
                          // Text(postList[index].data.)
                     // Text(postList[index].)

                      // Text('Title: '+postList[index].data
                      //     !.toString()),

                    ]),),
                  );

                  // return Text(index.toString());
                },);
              }
            },),
          )
          // }, child: Text("http")),

          // Expanded(
          //   child: FutureBuilder(future: getapi(),builder: (context, snapshot) {
          //     if(!snapshot.hasData){
          //       return Text("Loading");
          //     }
          //     else{
          //       return ListView.builder(itemCount: jsonlist.length,itemBuilder: (context, index) {
          //         return Padding(
          //           padding: const EdgeInsets.all(15.0),
          //           child: Card(child: Column(
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               crossAxisAlignment: CrossAxisAlignment.start,children: [
          //             Text(jsonlist[index]['name'])
          //           ]),),
          //         );
          //
          //         // return Text(index.toString());
          //       },);
          //     }
          //   },),
          // )



        ],
      ),
      // Column(children: [
      //   Row(children: [Container(child: Card(child: Image.asset(""),
      //
      //
      //   ),)],)
      //
      // ]),

    );
  }
}
