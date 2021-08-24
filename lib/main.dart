import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

import 'di/injection.dart';
import 'ui/app.dart';

void main() async {
  await Hive.initFlutter();
  configureInjection(Environment.prod);
  await injectionAllReady();
  runApp(const App());
}
