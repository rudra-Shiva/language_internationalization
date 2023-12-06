import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_internationalization/common/navigation/routesList.dart';
import 'package:language_internationalization/presentation/journey/choose_language/choose_language.dart';
import 'package:language_internationalization/presentation/journey/initial/initial.dart';

import '../error_screen/error_screen.dart';

class Routes{
  static Route<dynamic> getRoutes(RouteSettings settings){
      final route =settings.name;
      return getPage(route, settings);

  }

  static MaterialPageRoute getPage(String? route, RouteSettings? settings){
    switch(route){
      case RouteList.initialRoute:
        return _generateMaterialRoute(page: const InitialPage() );
      case RouteList.chooseLanguage:
        return _generateMaterialRoute(page: const ChooseLanguage());



      default:
        return _generateMaterialRoute(page: const ErrorScreen());

    }

  }
  static MaterialPageRoute _generateMaterialRoute({required Widget page}) =>
      MaterialPageRoute(
        builder: (_) => page,
      );
}