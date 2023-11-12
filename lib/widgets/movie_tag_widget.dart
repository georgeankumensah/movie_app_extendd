import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app_extended/models/movie.dart';
import 'package:movie_app_extended/providers/movie_provider.dart';

class MovieTags extends ConsumerWidget {
  const MovieTags({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieType = ref.watch(movieTypeProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: MovieType.values
          .map((type) => InkWell(
                onTap: () => ref.read(movieTypeProvider.notifier).state = type,
                child: Chip(
                  label: Text(
                    type.name,
                    style: TextStyle(
                        color: type == movieType ? Colors.white : null),
                  ),
                  backgroundColor: type == movieType ? Colors.blue : null,
                ),
              ))
          .toList(),
    );
  }
}
