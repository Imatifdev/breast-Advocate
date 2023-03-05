// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//create global var for loc
const LatLng currentloc = LatLng(31.5204, 74.3587);

class HspMap extends StatelessWidget {
  const HspMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          GoogleMap(initialCameraPosition: CameraPosition(target: currentloc)),
    );
  }
}
