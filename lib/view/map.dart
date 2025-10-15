import 'dart:async';

import 'package:e_shop/view/determineposition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {

  MapSample({super.key,});
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

    late CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(0, 0),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );
  Set<Marker> _markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deliver Location",),

        leading: IconButton(onPressed: ()
            {
              Get.back();
            }
            , icon: Icon(Icons.arrow_back)),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: _markers,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('Your Current Position!'),
        icon: const Icon(Icons.directions_rounded),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    Position position = await determinePosition();
    await controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
          bearing: 192.8334901395799,
          target: LatLng(position.latitude, position.longitude),
          tilt: 59.440717697143555,
          zoom: 19,
        )));
    const makerId =MarkerId("current_position");
    setState(() {
    _markers.clear();
    _markers.add(
    Marker(markerId: makerId,
      position: LatLng(position.latitude, position.longitude),
    ));
    });
    controller.showMarkerInfoWindow(makerId);
  }

}