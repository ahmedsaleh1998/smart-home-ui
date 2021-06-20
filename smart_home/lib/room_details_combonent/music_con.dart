import 'package:flutter/material.dart';
import 'package:smart_home/widgets/width_and_height.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class Music_con extends StatelessWidget {
  @override
  var x = 20.0;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: getheight(context) / 4,
        width: getwidth(context) / 1.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(50, 73, 83, 1.0)),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Icon(
                      Icons.music_note_rounded,
                      color: Color.fromRGBO(50, 73, 83, 1.0),
                      size: 30,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.pink, Colors.red, Colors.orange],
                        )),
                  ),
                ),
                Text(
                  ' Music Player ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
//////////////////part 2 in music player
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: SizedBox(
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage('img/rooms/meeting-room.jpg'),
                                fit: BoxFit.fill))),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Uptown funk',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text('fl brown mars')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.skip_previous, color: Colors.white, size: 30),
                    Icon(Icons.play_circle_filled_sharp,
                        color: Colors.white, size: 50),
                    Icon(Icons.skip_next_sharp, color: Colors.white, size: 30)
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.volume_off_sharp, color: Colors.white, size: 20),
                slide(),
                Icon(Icons.volume_up, color: Colors.white, size: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class slide extends StatefulWidget {
  @override
  _slideState createState() => _slideState();
}

class _slideState extends State<slide> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: getwidth(context) / 1.4,
        height: getheight(context) / 20,
        child: FlutterSlider(
          values: [40],
          max: 100,
          min: 0,
          trackBar: FlutterSliderTrackBar(
            activeTrackBar: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.pink, Colors.red, Colors.orange],
                ),
                borderRadius: BorderRadius.circular(5)),
            activeTrackBarHeight: 8,
          ),
          onDragging: (handlerIndex, lowerValue, upperValue) {},
        ));
  }
}
