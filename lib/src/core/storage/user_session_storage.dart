import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:happy_time_module/src/core/storage/setting_keys.dart';
import 'package:happy_time_module/src/core/storage/user_session_keys.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';

import '../../routes/routes.dart';
import '../constants/app_constants.dart';
import '../injectable/app_environment.dart';

class UserSessionStorage {
  /// Storage for user session data.
  static late final GetStorage userSessionBox;

  /// Information about the app package.
  static late PackageInfo? packageInfo;

  static bool get getAutoSearch =>
      readFromStorage(SettingKeys.autoSearch, defaultValue: true);

  static set setAutoSearch(bool autoSearch) =>
      saveToStorage(SettingKeys.autoSearch, autoSearch);

  static bool get getShowNotificationPermissionRequest =>
      readFromStorage(SettingKeys.showNotificationPermissionRequest,
          defaultValue: false);

  static set setShowNotificationPermissionRequest(bool show) =>
      saveToStorage(SettingKeys.showNotificationPermissionRequest, show);

  // MARK: - Application Info
  static String get version =>
      readFromStorage(SettingKeys.version, defaultValue: '0.0.0');

  static String get appName =>
      readFromStorage(SettingKeys.appName, defaultValue: '');

  static String get packageName =>
      readFromStorage(SettingKeys.packageName, defaultValue: '');

  static String get buildNumber =>
      readFromStorage(SettingKeys.buildNumber, defaultValue: '');

  static String get language =>
      readFromStorage(SettingKeys.languageKey, defaultValue: 'ar');

  static bool? get showDataSyncBottomSheet =>
      readFromStorage<bool>(SettingKeys.showDataSyncBottomSheet,
          defaultValue: false);

  // MARK: - Initialization & Setup
  static initStorage() async {
    userSessionBox = GetStorage();
    packageInfo = await PackageInfo.fromPlatform();
    if (packageInfo != null) {
      saveToStorage(SettingKeys.appName, packageInfo?.appName);
      saveToStorage(SettingKeys.packageName, packageInfo?.packageName);
      saveToStorage(SettingKeys.version, packageInfo?.version);
      saveToStorage(SettingKeys.buildNumber, packageInfo?.buildNumber);
    }
    disposeListen = userSessionBox.listen(() {
      log('box changed');
    });

    userSessionBox.listenKey(SettingKeys.newMapFilterModel, (value) {
      log('UPDATE[${SettingKeys.newMapFilterModel}] => new key is $value');
    });
  }

  static Function? disposeListen;

  /// Saves a value to storage.
  static saveToStorage<T>(String key, T value) {
    log("User Session save Key $key => value $value");
    userSessionBox.write(key, value);
  }

  /// Reads a value from storage with an optional default.
  static T? readFromStorage<T>(String key, {defaultValue}) {
    //log(
    //     "User Session read Key $key <= value ${userSessionBox.read<T>(key)}");
    return userSessionBox.read<T>(key) ?? defaultValue;
  }

  /// Erases all session data.
  static erase() {
    userSessionBox.erase();
  }

  // MARK: - User Session Data

  static bool get checkIsFirstOpen => isFirstOpen();

  static saveFirstOpen(bool value) =>
      saveToStorage(SettingKeys.firstOpen, value);

  static bool isFirstOpen() =>
      readFromStorage<bool>(SettingKeys.firstOpen) ?? true;

  static saveLanguage(String value) =>
      saveToStorage(SettingKeys.languageKey, value);

  static saveShowDataSyncBottomSheet(bool? value) {
    saveToStorage(SettingKeys.showDataSyncBottomSheet, value);
    readFromStorage(SettingKeys.showDataSyncBottomSheet);
  }

  static readAnnouncementToggle(String value) {
    List oldValue = getReadAnnouncements();

    List<String> map = oldValue
        .map(
          (e) => e.toString(),
        )
        .toList();

    if (map.contains(value)) {
      map.remove(value);
    } else {
      map.add(value);
    }
    saveReadAnnouncements(map);
  }

  static bool isAnnouncementRead(String value) {
    var oldValue = getReadAnnouncements();

    return oldValue?.contains(value) ?? false;
  }

  static saveReadAnnouncements(List<String> value) =>
      saveToStorage<List<String>>(UserSessionKeys.readAnnouncements, value);

  static getReadAnnouncements() =>
      readFromStorage(UserSessionKeys.readAnnouncements) ?? <String>[];

  static saveLayoutTheme(AppLayoutTheme value) =>
      saveToStorage(SettingKeys.layoutTheme, value.name);

  static String getLayoutTheme() =>
      readFromStorage<String>(SettingKeys.layoutTheme) ??
      AppLayoutTheme.newTheme.name;

  static setEnvironment(String env) =>
      saveToStorage(UserSessionKeys.selectedEnv, env);

  static String get getEnvironment =>
      readFromStorage<String>(UserSessionKeys.selectedEnv) ??
      AppEnvironment.defaultEnv;

  /// Logs out the user by clearing session data and navigating to the login screen.

  static logout() {
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Get.context!.sizedBoxHeightExtraSmall,
        Text('logout_confirmation'.tr)
      ],
    ).animatedDialog(
        onConfirm: () {
          userSessionBox.remove(UserSessionKeys.inspectorCode);
          userSessionBox.remove(UserSessionKeys.inspectorUsername);

          Get.offAllNamed(Routs.loginRoute);
        },
        onCancel: () => Get.back());
  }
}
