import 'dart:io';

import 'package:flutter_boilerplate/common/core/utils/string_util.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class FileUtil {
  static var bodyBytes;
  static String fileName = 'flutter_boilerplate.txt';
  static const double FILE_SIZE_LIMITED = 10;

  static double getFileSize(File file) {
    int sizeInBytes = file.lengthSync();
    double sizeInMb = sizeInBytes / (1024 * 1024);
    return sizeInMb;
  }

  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  static Future<File> get localFile async {
    final path = await _localPath;
    return File('$path/$fileName');
  }

  static Future<String> readFile() async {
    try {
      final file = await localFile;

      // Read the file
      return await file.readAsString();
    } catch (e) {
      // If encountering an error, return 0
      return StringUtil.empty;
    }
  }

  static Future<File> writeFile(String content) async {
    final file = await localFile;

    // Write the file
    return file.writeAsString(content);
  }

  static Future<String> downloadAndSaveImage(String url) async {
    var fileName = "image" + DateTime.now().millisecondsSinceEpoch.toString();
    var directory = await getApplicationDocumentsDirectory();
    var filePath = '${directory.path}/$fileName';
    var file = File(filePath);
    if (!await file.exists()) file.create();
    await file.writeAsBytes(bodyBytes);
    return filePath;
  }

  static Future<bool> checkValidImageUrl(String url) async {
    var response = await http.get(Uri.parse(url));
    if (response.headers['content-type']!.startsWith("image/")) {
      bodyBytes = response.bodyBytes;
      return true;
    } else {
      return false;
    }
  }
}
