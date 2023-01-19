import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getLocation() async{
    LocationPermission permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('Button pushed');
            getLocation();
          },
          child: Text(
            'Get my location',
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
        ),
      ),
    );
  }
}
