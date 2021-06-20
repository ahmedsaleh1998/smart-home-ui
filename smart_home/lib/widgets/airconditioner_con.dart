import 'package:flutter/material.dart';
import 'package:smart_home/widgets/width_and_height.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class Airconditionar extends StatelessWidget {
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
                          Icons.ac_unit,
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
                Text(
                  '+',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                slide(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    '-',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
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
          max: 40,
          min: 16,
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
