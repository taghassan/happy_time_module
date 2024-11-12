import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';




// final happyTimeGetIt getIt = GetIt.instance;
final happyTimeGetIt = GetIt.instance;

@InjectableInit()
void configureDependencies(String env) => happyTimeGetIt.init(environment: env);

@InjectableInit.microPackage()
injectableModuleMicroConfigure(String env){
  return happyTimeGetIt.init(environment: env);
}


Future<void> resetInjection() async {
  await happyTimeGetIt.reset();
}