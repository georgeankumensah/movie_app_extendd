import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app_extended/config/environment_config.dart';
import 'package:movie_app_extended/providers/movie_provider.dart';

class MovieList extends ConsumerWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesAsyncValue = ref.watch(moviesProvider);
    return moviesAsyncValue.maybeWhen(
        orElse: () => const Center(child: CircularProgressIndicator()),
        data: (movies) => Center(
              child: GridView.builder(
                  itemCount: movies?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    final movie = movies[index];
                    return Card(
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          EnvironmentConfig.IMAGE_BASE_URL +
                                              movie.posterPath,
                                        ))),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(movie.title)
                          ],
                        ),
                      ),
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2)),
            ));
  }
}
