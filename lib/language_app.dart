import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'app/env_constant.dart';
import 'app/environment_enum.dart';
import 'common/navigation/routes.dart';
import 'common/navigation/routesList.dart';
import 'common/themes/language_themedata.dart';

class LanguageApp extends StatefulWidget {
  const LanguageApp({super.key});

  @override
  State<LanguageApp> createState() => _LanguageAppState();
}

class _LanguageAppState extends State<LanguageApp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, screenSize) {
      return ScreenUtilInit(
          designSize: const Size(360, 760),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, __) {
            String env = FlavorConfig.instance.variables[EnvConstants.env];

            if (env == Environment.prod.name.toUpperCase()) {
              return const SafeArea(
                bottom: false,
                child: MaterialApp(
                  // navigatorObservers: [ChuckerFlutter.navigatorObserver],
                  // navigatorKey: CSKeys.materialNavKey,
                  // theme: CSThemeData.lightTheme,
                  debugShowCheckedModeBanner: false,
                  // localizationsDelegates: AppLocalizations.localizationsDelegates,
                  // supportedLocales: AppLocalizations.supportedLocales,
                  // locale: locale,
                  // initialRoute: RouteList.initialRoute,
                  // onGenerateRoute: Routes.getRoutes,
                  // title: env.appTitle,
                ),
              );
            } else {
              return FlavorBanner(
                location: BannerLocation.bottomEnd,
                color: Colors.redAccent,
                child: SafeArea(
                  bottom: false,
                  child: MaterialApp(
                    // navigatorObservers: [ChuckerFlutter.navigatorObserver],
                    // navigatorKey: CSKeys.materialNavKey,
                    theme: LanguageThemeData.lightTheme,
                    debugShowCheckedModeBanner: false,
                    // localizationsDelegates: AppLocalizations.localizationsDelegates,
                    // supportedLocales: AppLocalizations.supportedLocales,
                    // locale: locale,
                    initialRoute: RouteList.initialRoute,
                    onGenerateRoute: Routes.getRoutes,
                  ),
                ),
              );
            }
          });
    });
  }
}
