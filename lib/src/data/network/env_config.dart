class EnvConfig {
  // You can override via --dart-define=BASE_URL=https://your.api
  static const baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'http://10.0.2.2:8080',
  );

  static const connectTimeoutMs = 15000;
  static const receiveTimeoutMs = 30000;
}
