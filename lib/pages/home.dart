import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app_extended/widgets/movie_list_widget.dart';
import 'package:movie_app_extended/widgets/movie_tag_widget.dart';
import 'package:movie_app_extended/widgets/title_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const TitleWidget()),
      body: const Column(
        children: [MovieTags(), Expanded(child: MovieList())],
      ),
    );
  }
}
