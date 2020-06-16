import 'package:flutter/material.dart';

class DrawerStyleClass extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    
    Path _path = Path();
    
    _path.lineTo(0, size.height);
    _path.quadraticBezierTo(size.width/4, size.height, size.width/2, size.height-4);
    _path.quadraticBezierTo(size.width-50, size.height-80, size.width, size.height);
    _path.quadraticBezierTo(size.width-100, size.height/2, size.width, 0);
    _path.quadraticBezierTo(size.width/2, 30, 0, 0);

    return _path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}