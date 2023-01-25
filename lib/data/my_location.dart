import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';

class MyLocation {
  double? latitude2;
  double? longitude2;

  Future<void> getMyCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    print(permission);
    if (permission == LocationPermission.denied){
        Map<Permission, PermissionStatus> status = await[Permission.location,].request();
        try {
          Position position = await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.high);
          latitude2 = position.latitude;
          longitude2 = position.longitude;
          print(latitude2);
          print(longitude2);
        } catch (e) {
          print("Error in internet connection");
        }
    }else{
      try {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        latitude2 = position.latitude;
        longitude2 = position.longitude;
        print(latitude2);
        print(longitude2);
      } catch (e) {
        print("Error in internet connection");
      }
    }
  }
}
