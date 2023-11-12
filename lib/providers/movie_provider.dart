import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app_extended/config/environment_config.dart';
import 'package:movie_app_extended/models/movie.dart';
import 'package:movie_app_extended/providers/dio_provider.dart';

final movieTypeProvider = StateProvider<MovieType>((ref) {
  return MovieType.popular;
});

final moviesProvider = FutureProvider<List<Movie>>((ref) async {
  final movieType = ref.watch(movieTypeProvider);
  final dio = ref.watch(dioProvider);
  final response = await dio.get("movie/${movieType.value}",
      queryParameters: {"api-key": EnvironmentConfig.API_KEY});

  return MovieResponse.fromJson(response.data).results;
});

final movieProvider = Provider((ref) => throw UnimplementedError());
