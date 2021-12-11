import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_boilerplate/common/core/utils/logger_util.dart';
import 'package:icloud_storage/icloud_storage.dart';

class ICloudUtil {

  static String iCloudContainerId = "....";

  static Future<void> downloadFileFormICloud(String fileName,
      String destinationFilePath) async {
    try {
      final iCloudStorage =
      await ICloudStorage.getInstance(iCloudContainerId);
      StreamSubscription<double>? downloadProgressSubscription;
      var isDownloadComplete = false;

      await iCloudStorage.startDownload(
        fileName: fileName,
        destinationFilePath: destinationFilePath,
        onProgress: (stream) {
          downloadProgressSubscription = stream.listen(
                (progress) =>
                Helper.printLogValue(
                    '--- Download File --- progress: $progress'),
            onDone: () async {
              isDownloadComplete = true;
              Helper.printLogValue('--- Download File --- done');
            },
            onError: (err) async {
              Helper.printLogValue('--- Download File --- error: $err');
            },
            cancelOnError: true,
          );
        },
      );

      Future.delayed(const Duration(seconds: 20), () async {
        if (!isDownloadComplete) {
          await downloadProgressSubscription?.cancel();
          Helper.printLogValue('--- Download File --- timed out');
        }
      });
    } catch (err) {
      await _handleError(err);
    }
  }

  static Future<void> uploadFileToICloud(String destinationFilePath,
      String fileName) async {
    try {
      final iCloudStorage =
      await ICloudStorage.getInstance(iCloudContainerId);
      StreamSubscription<double>? uploadProgressSubscription;
      var isUploadComplete = false;

      await iCloudStorage.startUpload(
        filePath: destinationFilePath,
        destinationFileName: fileName,
        onProgress: (stream) {
          uploadProgressSubscription = stream.listen(
                (progress) =>
                Helper.printLogValue('--- Upload File --- progress: $progress'),
            onDone: () {
              isUploadComplete = true;
              Helper.printLogValue('--- Upload File --- done');
            },
            onError: (err) =>
                Helper.printLogValue('--- Upload File --- error: $err'),
            cancelOnError: true,
          );
        },
      );

      Future.delayed(const Duration(seconds: 10), () {
        if (!isUploadComplete) {
          uploadProgressSubscription?.cancel();
          Helper.printLogValue('--- Upload File --- timed out');
        }
      });
    } catch (err) {
      await _handleError(err);
    }
  }

  static Future<void> _handleError(dynamic err) async {
    if (err is PlatformException) {
      if (err.code == PlatformExceptionCode.iCloudConnectionOrPermission) {
        Helper.printLogValue(
            'Platform Exception: iCloud container ID is not valid, or user is not signed in for iCloud, or user denied iCloud permission for this app');
      } else {
        Helper.printLogValue(
            'Platform Exception: ${err.message}; Details: ${err.details}');
      }
    } else {
      Helper.printLogValue(err.toString());
    }
  }
}