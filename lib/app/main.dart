import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:language_internationalization/app/app_config.dart';
import '../language_app.dart';
import 'package:language_internationalization/di/get_it.dart' as get_it;

import 'env_constant.dart';

Future<void> mainCommon(AppEnvConfiguration configuration) async {
  FlavorConfig(
    name: configuration.env.name.toUpperCase(),
    location: BannerLocation.bottomStart,
    variables: {
      EnvConstants.baseUrl: configuration.baseUrl,
      EnvConstants.appTitle: configuration.appTitle,
      EnvConstants.env: configuration.env.name.toUpperCase(),
      EnvConstants.enableSMSVerification: configuration.enableSMSVerification,
    },
  );

  WidgetsFlutterBinding.ensureInitialized();

  unawaited(get_it.init());
  runApp(const LanguageApp());
}
