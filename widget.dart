import 'package:flutter/material.dart';

class test4 extends StatefulWidget {
  const test4({super.key});

  @override
  State<test4> createState() => _test4State();
}

class _test4State extends State<test4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: double.infinity,
          height: 300,
          color: Colors.blue,
        ),
      ),
    );
  }
}
class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip (Size size){
    return Path()
        ..lineTo(0, size.height)
        ..quadraticBezierTo(size.width/4, size.height-40,size.width/2, size.height-20)
        ..quadraticBezierTo(3/4*size.width,size.height ,size.width, size.height-30)
        ..lineTo(size.width,0);
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper){
    return false;
  }
}
