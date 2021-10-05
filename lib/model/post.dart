import 'package:flutter/widgets.dart';

class Post {
  final String username;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final Widget userPost;

  const Post({
    required this.username,
    required this.videoDescription,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.numberOfShares,
    required this.userPost,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        username: json['username'],
        videoDescription: json['videoDescription'],
        numberOfLikes: json['numberOfLikes'],
        numberOfComments: json['numberOfComments'],
        numberOfShares: json['numberOfShares'],
        userPost: json['userPost'],
      );

  Map<String, dynamic> toJson() => {
        'username': username,
        'videoDescription': videoDescription,
        'numberOfLikes': numberOfLikes,
        'numberOfComments': numberOfComments,
        'numberOfShares': numberOfShares,
        'userPost': userPost,
      };
}
