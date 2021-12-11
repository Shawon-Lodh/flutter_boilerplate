// import 'dart:io';
//
// import 'package:firebase_remote_config/firebase_remote_config.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_boilerplate/common/core/flavor/flavor_config.dart';
// import 'package:package_info_plus/package_info_plus.dart';
//
// export 'force_update_dialog.dart';
//
// class ForceUpdate {
//   static void onForceUpdate(ValueChanged<bool> callback) async {
//     final packageInfo = await PackageInfo.fromPlatform();
//     final remoteConfig = await RemoteConfig.instance;
//     final flavour = FlavorConfig.instance;
//     if (flavour!.environment == FlavorEnvironment.Dev) return;
//
//     try {
//       await remoteConfig.fetch();
//     } catch (e, s) {
// //      logger.errorException(e, s);
//     }
//
//     await remoteConfig.activateFetched();
//
//     final requiredBuildNumber = remoteConfig.getInt(Platform.isAndroid
//         ? RemoteConfigConstant.androidMinBuildNumber
//         : RemoteConfigConstant.iOSMinBuildNumber);
//
//     final currentBuildNumber = int.parse(packageInfo.buildNumber);
//
// //    logger.info(
// //        "ForceUpdate. Current: $currentBuildNumber. Required: $requiredBuildNumber. " +
// //            "Update?: ${currentBuildNumber < requiredBuildNumber}");
//
//     if (currentBuildNumber < requiredBuildNumber) {
//       callback(remoteConfig.getBool(RemoteConfigConstant.forceUpdateApps));
//     }
//   }
// }