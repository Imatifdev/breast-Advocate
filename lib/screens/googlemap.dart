// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pinkgirl/screens/hospitalsmap.dart';

//const LatLng currentLoc=(30.3753,69.3451);
class MapClass extends StatefulWidget {
  const MapClass({super.key});

  @override
  State<MapClass> createState() => _MapClassState();
}

class _MapClassState extends State<MapClass> {
  late GoogleMapController _controller;
  Map<String, Marker> _markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(30.3753, 69.3451), zoom: 14),
        onMapCreated: (controller) {
          _controller:
          controller;
          addMarker('test', currentloc);
        },
        markers: _markers.values.toSet(),
      ),
    );
  }

  addMarker(String id, LatLng location) {
    var marker = Marker(markerId: MarkerId(id), position: location);
    _markers[id] = marker;
    setState(() {});
  }
}
