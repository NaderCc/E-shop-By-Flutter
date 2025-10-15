import 'package:geolocator/geolocator.dart';

Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if(!serviceEnabled)
  {
    return Future.error("Location service isn't enabled");
  }
  permission = await Geolocator.checkPermission();
  if(permission == LocationPermission.denied)
  {
    permission = await Geolocator.requestPermission();
    if(permission == LocationPermission.denied)
    {
      return Future.error("Permission is denied!");
    }
  }
  if(permission == LocationPermission.deniedForever)
  {
    return Future.error("Permission is denied forever!");
  }
  return await Geolocator.getCurrentPosition();
}