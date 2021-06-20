import 'package:flutter/material.dart';
import 'package:smart_home/models/room_model.dart';
import 'package:smart_home/widgets/width_and_height.dart';

class Image_container extends StatefulWidget {
  room myroom;
  Image_container(room myroom, {room room});
  @override
  _Image_containerState createState() => _Image_containerState();
}

class _Image_containerState extends State<Image_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Container(
          width: getwidth(context),
          height: getheight(context) / 4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(widget.myroom.img), fit: BoxFit.fill)),
        ),
////////////////////////////////
        ///
      ]),
    );
  }
}
