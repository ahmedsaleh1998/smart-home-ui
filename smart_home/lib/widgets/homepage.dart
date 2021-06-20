import 'package:flutter/material.dart';
import 'package:smart_home/data/get_rooms.dart';
import 'package:smart_home/models/room_model.dart';
import 'package:smart_home/room_details.dart';
import 'package:smart_home/widgets/gridview_child.dart';
import 'package:smart_home/widgets/room_container.dart';
import 'package:smart_home/widgets/width_and_height.dart';

class gridview extends StatefulWidget {
  @override
  _gridviewState createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  var x;
  @override
  void initState() {
    super.initState();
    x = getallrooms();
  }

  // list of grid icons
  List<IconData> grid_icons = [
    Icons.home,
    Icons.apartment_rounded,
    Icons.people_outline_outlined
  ];

  /// list of grid titles
  List<String> grid_title = [' Back Home', ' Home Away', 'Guest Mode'];
  List<bool> grid_active = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromRGBO(50, 73, 83, 1.0),
          body: Container(
            width: getwidth(context),
            height: getheight(context),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: getheight(context) / 25,
                      bottom: getheight(context) / 40),
                  child: Text(
                    'Rooms',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),

                Container(
                  width: getwidth(context),
                  height: getheight(context) / 6.3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: grid_title.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: gridview_child(
                            name: grid_title[index],
                            icon: grid_icons[index],
                            active: grid_active[index]),
                      );
                    },
                  ),
                ),
                ////////////////////////////////////////////////////////////////
                Container(
                  width: getwidth(context),
                  height: getheight(context) / 1.5,
                  child: FutureBuilder(
                    initialData: [],
                    future: getallrooms(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.data.length == 0) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                                child:
                                    roomcontainer(myroom: snapshot.data[index]),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Room_details(
                                              myroom: snapshot.data[index])));
                                });
                          },
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          //////////////////////// ///////
          ///bottom navigation bar
          ////////////////////////////
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromRGBO(50, 73, 83, 0.4),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(.60),
            selectedFontSize: 14,
            unselectedFontSize: 14,
            onTap: (value) {
              // Respond to item press.
            },
            items: [
              BottomNavigationBarItem(
                title: Text('Rooms'),
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                title: Text('Schedule'),
                icon: Icon(Icons.schedule),
              ),
              BottomNavigationBarItem(
                title: Text('power'),
                icon: Icon(Icons.power),
              ),
              BottomNavigationBarItem(
                title: Text('more'),
                icon: Icon(Icons.menu_open_rounded),
              ),
            ],
          )),
    );
  }
}
