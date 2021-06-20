import 'package:flutter/material.dart';
import 'package:smart_home/models/room_model.dart';
import 'package:smart_home/widgets/width_and_height.dart';

class roomcontainer extends StatefulWidget {
  @override
  room myroom;
  roomcontainer({this.myroom});
  _roomcontainerState createState() => _roomcontainerState();
}

class _roomcontainerState extends State<roomcontainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          width: getwidth(context),
          height: getheight(context) / 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(widget.myroom.img), fit: BoxFit.fill)),
        ),
////////////////////////////////
        Container(
          width: getwidth(context),
          height: getheight(context) / 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(50, 73, 83, 0.4),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///// child 1 which contain name
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.myroom.name,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
              ///////child 2  which contain icons and temp
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text((widget.myroom.room_type + 20).toString() + '°C',
                          style: TextStyle(fontSize: 24, color: Colors.white))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //// video
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.videocam,
                            color: Colors.white,
                            size: 30,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.white)),
                        ),
                      ),
                      // snow container
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.ac_unit,
                            color: Colors.white,
                            size: 30,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.white),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.pink,
                                  Colors.red,
                                  Colors.orange
                                ],
                              )),
                        ),
                      ),
                      /////music container
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.music_note_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.white)),
                        ),
                      ),
                      //////lamp container
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.emoji_objects,
                            color: Colors.white,
                            size: 30,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.white),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.pink,
                                  Colors.red,
                                  Colors.orange
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
