import 'package:geolocator/geolocator.dart';

class Location{

  double lat;
  double long;

  void currentLocation () async {
    Position position = await Geolocator().getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    lat = position.latitude;
    long = position.longitude;
  }

}

