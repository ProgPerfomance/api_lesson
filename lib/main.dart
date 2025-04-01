import 'package:api_lesson/presentation/posts/posts_view.dart';
import 'package:api_lesson/presentation/posts/posts_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> PostsViewmodel()),
      ],
      child: MaterialApp(
        home: PostsView(),
      ),
    );
  }
}

