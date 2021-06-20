import 'package:flutter/material.dart';
import 'package:smart_home/models/room_model.dart';
import 'package:smart_home/room_details_combonent/light_con.dart';
import 'package:smart_home/room_details_combonent/music_con.dart';
import 'package:smart_home/room_details_combonent/video_con.dart';
import 'package:smart_home/widgets/airconditioner_con.dart';

import 'package:smart_home/widgets/width_and_height.dart';

class Room_details extends StatefulWidget {
  room myroom;
  Room_details({this.myroom});
  @override
  _Room_detailsState createState() => _Room_detailsState();
}

class _Room_detailsState extends State<Room_details> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(50, 50, 50, 1.0),
        body: Container(
          child: ListView(
            children: [
              Container(
                child: Stack(children: [
                  Container(
                    width: getwidth(context),
                    height: getheight(context) / 3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.myroom.img),
                            fit: BoxFit.fill)),
                  ),
////////////////////////////////

                  Container(
                      width: getwidth(context),
                      height: getheight(context) / 3,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(50, 73, 83, 0.4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
///////////////row1////////////
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(Icons.arrow_back_ios_rounded,
                                      color: Colors.white, size: 20),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  }),
                            ],
                          ),

///////////////row2////////////
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.myroom.name,
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
///////////////row3////////////
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tempreture',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  Text(
                                    (widget.myroom.room_type + 20).toString() +
                                        ' °C',
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),

///////////////
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Humidity',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  Text(
                                    (widget.myroom.room_type + 22).toString() +
                                        ' °C',
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),

///////////////
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Power Consumption',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  Text(
                                    (widget.myroom.room_type + 15).toString() +
                                        ' kWh',
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      )),
                ]),
              ),
/////////////////////part to to make video container
              Video_con(),

///////////////lighting/////
              Light_container(),
              ///////////////////////// air condetionar
              Airconditionar(),
              ///////////////////////////music player container////////////////////////
              Music_con(),
            ],
          ),
        ),
      ),
    );
  }
}
