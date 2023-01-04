import 'package:jasonplash/globals/global.dart';

class PlashHolder {
  late int userid;
  late int id;
  late int postId;
  late int albumId;
  late String title;
  late String body;
  late String name;
  late String username;
  late String email;
  late bool completed;

  PlashHolder.post({
    required this.userid,
    required this.id,
    required this.title,
    required this.body,
  });

  PlashHolder.comments({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  PlashHolder.album({
    required this.userid,
    required this.id,
    required this.title,
  });

  PlashHolder.photo({
    required this.albumId,
    required this.id,
    required this.title,
  });

  PlashHolder.todo({
    required this.userid,
    required this.id,
    required this.title,
    required this.completed,
  });

  PlashHolder.user({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
  });

  factory PlashHolder.fromMap({required Map data}) {
    if (Global.endpoint == "/posts") {
      return PlashHolder.post(
        userid: data['userId'],
        id: data['id'],
        title: data['title'],
        body: data['body'],
      );
    } else if (Global.endpoint == "/comments") {
      return PlashHolder.comments(
        postId: data['postId'],
        id: data['id'],
        name: data['name'],
        email: data['email'],
        body: data['body'],
      );
    } else if (Global.endpoint == "/albums") {
      return PlashHolder.album(
        userid: data['userId'],
        id: data['id'],
        title: data['title'],
      );
    } else if (Global.endpoint == "/photos") {
      return PlashHolder.photo(
        albumId: data['albumId'],
        id: data['id'],
        title: data['title'],
      );
    } else if (Global.endpoint == "/todos") {
      return PlashHolder.todo(
        userid: data['userId'],
        id: data['id'],
        title: data['title'],
        completed: data['completed'],
      );
    }
    return PlashHolder.user(
        id: data['id'],
        name: data['name'],
        username: data['username'],
        email: data['email']);
  }
}
