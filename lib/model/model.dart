import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Model {
  Widget getWeatherIcon(int condition) {
    if (condition < 300) {
      return SvgPicture.asset('svg/Cloud-Lightning.svg', color: Colors.black87);
    } else if (condition < 600) {
      return SvgPicture.asset(
        'svg/Cloud-Snow-Alt.svg',
        color: Colors.black87,
      );
    } else if (condition == 800) {
      return SvgPicture.asset(
        'svg/Sun.svg',
        color: Colors.black87,
      );
    } else if (condition <= 804) {
      return SvgPicture.asset(
        'svg/Cloud-Sun.svg',
        color: Colors.black87,
      );
    } else{
      return SvgPicture.asset(
        'svg/icon.svg'
      );
    }
  }
}
