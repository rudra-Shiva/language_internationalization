
import 'package:language_internationalization/app/app_config.dart';
import 'package:language_internationalization/app/environment_enum.dart';
import 'package:language_internationalization/app/main.dart';

void main() async{
  var env = AppEnvConfiguration.setUpEnc(Environment.sit);
  await mainCommon(env);
}