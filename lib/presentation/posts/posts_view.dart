import 'package:api_lesson/data/repository/posts_repository.dart';
import 'package:api_lesson/presentation/posts/posts_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewmodel = Provider.of<PostsViewmodel>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        viewmodel.getPosts();
      }),
      body: SafeArea(child: ListView.separated(itemBuilder: (context,index) {
        return Text(viewmodel.posts[index].title);
      }, separatorBuilder:  (context,index) {
        return SizedBox(height: 8,);
      }, itemCount: viewmodel.posts.length)),
    );
  }
}
