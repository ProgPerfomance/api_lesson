import 'dart:io';

import 'package:api_lesson/data/repository/posts_repository.dart';
import 'package:flutter/material.dart';

class PostsViewmodel extends ChangeNotifier {


  List<Post> get posts => postsRepository.posts;

  void getPosts () async {
    await postsRepository.getPosts();
    notifyListeners();
  }
}

