import 'package:flutter/material.dart';
import 'package:smart_home/widgets/width_and_height.dart';

class gridview_child extends StatefulWidget {
  IconData icon;
  String name;
  bool active;
  gridview_child({this.name, this.icon, this.active});
  @override
  _gridview_childState createState() => _gridview_childState();
}

class _gridview_childState extends State<gridview_child> {
  @override
  Widget build(BuildContext context) {
    /////this is container width and height from functions in (width_and_height.dart)
    ///file and contain to child icon and name(the description on my container like backhome)
    return Container(
      width: getwidth(context) / 2.5,
      height: getheight(context) / 13,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: widget.active
              ? LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.pink, Colors.red, Colors.orange],
                )
              : LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(255, 255, 255, 0.6),
                    Color.fromRGBO(255, 255, 255, 0.6)
                  ],
                )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            color: Colors.white,
            size: 60,
          ),
          Text(
            widget.name,
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }
}

//////////////////////////////////////////////////////

