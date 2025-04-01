import 'package:dio/dio.dart';

Dio dio = Dio();

class PostsRepository {
  List<Post> posts = [];

  Future<void> getPosts() async {
    final response = await dio.get(
      'https://jsonplaceholder.typicode.com/posts',
    );

    if (response.data is List) {
      for (var item in response.data) {
        posts.add(Post.fromJson(item));
      }
    }
  }
}

PostsRepository postsRepository = PostsRepository();

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map map) {
    return Post(
      userId: map['userId'],
      id: map['id'],
      title: map['title'],
      body: map['body'],
    );
  }
}

// List <Map<String,dynamic>>
