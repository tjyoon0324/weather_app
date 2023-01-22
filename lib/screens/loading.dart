import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      print(position);
    } catch (e) {
      print("Error in internet connection");
    }
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: ElevatedButton(
        onPressed: null,
        // () {
        // print('Button pushed');
        // getLocation();
        // },

        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
        child: Text(
          'Get my location',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}}
