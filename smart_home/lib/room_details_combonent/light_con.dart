import 'package:flutter/material.dart';
import 'package:smart_home/widgets/width_and_height.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class Light_container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: getheight(context) / 6,
        width: getwidth(context) / 1.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(50, 73, 83, 1.0)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.emoji_objects,
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
                      ' Lightings ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    swiitch(),
                  ],
                )
              ],
            ),
//////////////////part 2 in music player

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.circle, color: Colors.white, size: 10),
                slide(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.wb_sunny_rounded,
                      color: Colors.white, size: 15),
                ),
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
          values: [21],
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

//////////////////////////////
class swiitch extends StatefulWidget {
  @override
  _swiitchState createState() => _swiitchState();
}

class _swiitchState extends State<swiitch> {
  @override
  bool isSwitched = true;
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
      activeTrackColor: Colors.red,
      activeColor: Colors.orange,
    );
  }
}
