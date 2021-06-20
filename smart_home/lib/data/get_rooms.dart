import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:smart_home/models/room_model.dart';

Future<List<room>> getallrooms() async {
  http.Response future_rooms = await http.get(
      'https://www.vartola.net/server/home_phone/task/getroomslist.php?fx_id=1&sk=sk_5fe73fe704b8e');
  if (future_rooms.statusCode == 200) {
    var parsed =
        await json.decode(future_rooms.body).cast<Map<String, dynamic>>();
    var alllist = parsed.map<room>((roo) => room.fromjson(roo)).toList();
    return alllist;
  } else {
    // throw new Exception('you dont have internet connection');

  }
}
