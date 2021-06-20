import 'package:flutter/material.dart';
import 'package:smart_home/widgets/width_and_height.dart';

class Video_con extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: getheight(context) / 9,
        width: getwidth(context) / 1.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(50, 73, 83, 1.0)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
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
            Text(
              'Live Camera View ',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
