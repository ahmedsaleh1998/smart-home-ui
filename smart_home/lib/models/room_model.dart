class room {
  String report, img, name, descrip;
  int room_id, room_type;

  room(
      {this.report,
      this.img,
      this.name,
      this.descrip,
      this.room_id,
      this.room_type});
  factory room.fromjson(Map<String, dynamic> jsonbody) {
    return room(
      descrip: jsonbody['descrip'],
      img: jsonbody['img'],
      name: jsonbody['name'],
      report: jsonbody['report'],
      room_id: int.parse(jsonbody['room_id']),
      room_type: int.parse(jsonbody['room_type']),
    );
  }
}
