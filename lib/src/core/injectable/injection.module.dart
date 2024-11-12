//@GeneratedMicroModule;HappyTimeModulePackageModule;package:happy_time_module/src/core/injectable/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:dio/dio.dart' as _i361;
import 'package:happy_time_module/src/core/connectivity_helper/connectivity_checker_helper.dart'
    as _i537;
import 'package:happy_time_module/src/core/injectable/configuration.dart'
    as _i722;
import 'package:happy_time_module/src/core/injectable/injectable_module.dart'
    as _i686;
import 'package:happy_time_module/src/core/utils/api_service.dart' as _i603;
import 'package:happy_time_module/src/core/utils/logger_utils.dart' as _i847;
import 'package:happy_time_module/src/shared/datasources/remote_datasource/movies_remote_data_source.dart'
    as _i117;
import 'package:happy_time_module/src/shared/datasources/remote_datasource/movies_remote_data_source_iml.dart'
    as _i700;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

const String _dev = 'dev';
const String _staging = 'staging';
const String _prod = 'prod';

class HappyTimeModulePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final injectableModule = _$InjectableModule();
    gh.factory<_i537.ConnectivityCheckerHelper>(
        () => _i537.ConnectivityCheckerHelper());
    gh.lazySingleton<_i361.Dio>(() => injectableModule.dioInstance);
    gh.lazySingleton<_i603.ApiService>(() => injectableModule.apiService);
    gh.lazySingleton<_i974.Logger>(() => injectableModule.logger);
    gh.lazySingleton<_i847.AppLogger>(() => _i847.AppLogger());
    gh.lazySingleton<_i722.Configuration>(
      () => _i722.DevConfiguration(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i722.Configuration>(
      () => _i722.StagingConfiguration(),
      registerFor: {_staging},
    );
    gh.factory<_i117.MoviesRemoteDataSource>(
        () => _i700.MoviesRemoteDataSourceIml());
    gh.lazySingleton<_i722.Configuration>(
      () => _i722.ProductionConfiguration(),
      registerFor: {_prod},
    );
  }
}

class _$InjectableModule extends _i686.InjectableModule {}
