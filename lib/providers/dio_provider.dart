import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app_extended/config/environment_config.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(baseUrl: EnvironmentConfig.BASE_URL)
  ) ;
});