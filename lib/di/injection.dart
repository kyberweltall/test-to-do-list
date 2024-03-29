import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureInjection(String env) => $initGetIt(getIt, environment: env);

Future<void> injectionAllReady() async {
  await getIt.allReady();
}
