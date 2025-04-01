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
        posts.add(Post(userId: item['userId'], id: item['id'], title: item['title'], body: item['body']));
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
}
// List <Map<String,dynamic>>