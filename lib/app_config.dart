import 'package:flutter/material.dart';


class AppConfig extends InheritedWidget{
  final String appName;
  final String flavor;
  final Widget child ;


  AppConfig({
    @required this.appName,
    @required this.flavor,
    @required this.child
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget)=> false;
  static AppConfig of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType();
  }
  }

