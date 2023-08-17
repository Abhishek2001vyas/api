import 'dart:async';
import 'package:api/sh.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:geolocator_android/geolocator_android.dart';
import 'package:geolocator_platform_interface/geolocator_platform_interface.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class Mapp extends StatefulWidget {
  const Mapp({super.key});

  @override
  State<Mapp> createState() => _MappState();
}

class _MappState extends State<Mapp> {
  late GoogleMapController googleMapController;
  Completer<GoogleMapController> cc = Completer();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(22.746514, 75.897886),
    zoom: 14.4746,
  );
  List<Marker> _marker = [];
  List<Marker> _list = const [
    // Marker(
    //     markerId: MarkerId('1'),
    //     position: LatLng(22.746514, 75.897886),
    //     infoWindow: InfoWindow(title: 'my position'))
  ];

  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("MAP")),actions: [IconButton(onPressed: ()async{
        final SharedPreferences qwe=await SharedPreferences.getInstance();
        qwe.remove('name');
        Navigator.push(context, MaterialPageRoute(builder: (context) => Sh(),));
      }, icon:Icon(Icons.logout_outlined))]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 150,
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "your location",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 3))),
                        )),
                    Container(
                        width: 150,
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "search location",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 3))),
                        )),
                    ElevatedButton(onPressed: () {}, child: Text("Search")),
                  ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: GoogleMap(
                initialCameraPosition: _kGooglePlex,
                mapType: MapType.hybrid,
                myLocationButtonEnabled: true,
                markers: Set<Marker>.of(_marker),
                myLocationEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  googleMapController = controller;
                  cc.complete(controller);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          Position position = await _determinePosition();
          googleMapController
              .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 20)));


          _marker.clear();

          _marker.add(Marker(markerId: const MarkerId('currentLocation'),position: LatLng(position.latitude, position.longitude)));

          setState(() {});

        },
        label: const Text("Current Location"),
        icon: const Icon(Icons.location_history),
      ),
    );

  }
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }

}
