class ApplicationConstants {
  static ApplicationConstants? _instance;
  static ApplicationConstants? get instance {
    _instance ??= ApplicationConstants._init();
    return _instance;
  }

  ApplicationConstants._init();

  final String baseUrl = "https://jsonplaceholder.typicode.com/";
}
