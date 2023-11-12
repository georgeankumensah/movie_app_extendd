import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app_extended/providers/movie_provider.dart';

class TitleWidget extends ConsumerWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieType = ref.watch(movieTypeProvider);
    return Text("${movieType.name} movies");
  }
}
