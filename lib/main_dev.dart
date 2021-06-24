import 'package:flutter/material.dart';
import 'package:flutter_appgit/app_config.dart';
import 'package:flutter_appgit/main.dart';

void main(){
  var configuredApp = AppConfig(
      appName: 'Ninja_1',
      flavor:'developpement',
      child: MyApp()
  );
  return runApp(configuredApp);
}