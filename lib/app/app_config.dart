import 'environment_enum.dart';

class AppEnvConfiguration {
  String appTitle;
  String baseUrl;
  Environment env;
  bool enableSMSVerification;

  AppEnvConfiguration(
    this.appTitle,
    this.baseUrl,
    this.env, {
    required this.enableSMSVerification,
  });

  factory AppEnvConfiguration.setUpEnc(Environment environment) {
    switch (environment) {
      case Environment.dev:
        return AppEnvConfiguration(
          "Multiple language - DEV",
          "http://127.0.0.1",
          environment,
          enableSMSVerification: false,
        );
      case Environment.sit:
        return AppEnvConfiguration(
          "Multiple language - SIT",
          "http://127.0.0.1",
          environment,
          enableSMSVerification: true,
        );

      case Environment.uat:
        return AppEnvConfiguration(
          "Multiple language - UAT",
          "http://127.0.0.1",
          environment,
          enableSMSVerification: false,
        );

      case Environment.prod:
        return AppEnvConfiguration(
          "Multiple language",
          "http://127.0.0.1",
          environment,
          enableSMSVerification: true,
        );
    }
  }
}
