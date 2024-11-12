import 'package:injectable/injectable.dart';

import 'app_environment.dart';

var listOfEnv = [
  AppEnvironment.dev,
  AppEnvironment.staging,
  AppEnvironment.prod,
];

abstract class Configuration {
  String get name;

  String get getBaseUrl;

  String get getDynamicLookupsBaseUrl;

  String get username;

  String get userPassword;

  String get appEnvironment;
}

@LazySingleton(as: Configuration, env: [AppEnvironment.dev])
class DevConfiguration implements Configuration {
  @override
  String get getBaseUrl => 'https://abcdef.flech.tn/egybestant/public/api';

  @override
  String get name => 'development';

  @override
  String get userPassword => '';

  @override
  String get username => '';

  @override
  String get getDynamicLookupsBaseUrl => 'https://abcdef.flech.tn/egybestant/public/api';

  @override
  String get appEnvironment =>AppEnvironment.dev;
}

@LazySingleton(as: Configuration, env: [AppEnvironment.staging])
class StagingConfiguration implements Configuration {
  @override
  String get getBaseUrl => 'https://abcdef.flech.tn/egybestant/public/api';

  @override
  String get name => 'staging';

  @override
  String get userPassword => '';

  @override
  String get username => '';

  @override
  String get getDynamicLookupsBaseUrl => 'https://abcdef.flech.tn/egybestant/public/api';

  @override
  String get appEnvironment =>AppEnvironment.staging;
}

@LazySingleton(as: Configuration, env: [AppEnvironment.prod])
class ProductionConfiguration implements Configuration {
  @override
  String get getBaseUrl => 'https://abcdef.flech.tn/egybestant/public/api';

  @override
  String get name => 'production';

  @override
  String get userPassword => '';

  @override
  String get username => '';

  @override
  String get getDynamicLookupsBaseUrl => 'https://abcdef.flech.tn/egybestant/public/api';

  @override
  String get appEnvironment =>AppEnvironment.prod;

}
