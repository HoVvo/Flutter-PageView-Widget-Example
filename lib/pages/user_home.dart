import 'package:flutter/material.dart';
import 'package:tiktok_fl/data/test_post.dart';
import 'package:tiktok_fl/model/post.dart';
import 'package:tiktok_fl/util/post_template.dart';

class UserHome extends StatefulWidget {
  UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final _controller = PageController(initialPage: 0);

  late List<Post> tmpPosts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: getList(),
      ),
    );
  }

  List<Widget> getList() {
    List<Widget> childs = [];
    for (var tmp in testPosts) {
      childs.add(PostTemplate(
          username: tmp.username,
          videoDescription: tmp.videoDescription,
          numberOfLikes: tmp.numberOfLikes,
          numberOfComments: tmp.numberOfComments,
          numberOfShares: tmp.numberOfShares,
          userPost: tmp.userPost));
    }
    return childs;
  }
}
