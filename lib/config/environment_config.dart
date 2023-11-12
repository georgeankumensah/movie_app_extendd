class EnvironmentConfig {
  static const BASE_URL = String.fromEnvironment('BASE_URL',
      defaultValue: "https://api.themoviedb.org/3/");
  static const IMAGE_BASE_URL = String.fromEnvironment('IMAGE_BASE_URL',
      defaultValue: "https://image.tmdb.org/t/p/w185");
  static const API_KEY = String.fromEnvironment('API_KEY',
      //Todo put your api key here
      defaultValue: "4090a562a5bbc26d5dad76f74946d244");
}
