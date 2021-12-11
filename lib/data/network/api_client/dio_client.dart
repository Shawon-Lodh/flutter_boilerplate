// import 'dart:io';
//
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
//
// const _defaultConnectTimeout = Duration.millisecondsPerMinute;
// const _defaultReceiveTimeout = Duration.millisecondsPerMinute;
//
// class DioClient {
//   final String baseUrl;
//
//   Dio _dio;
//
//   final List<Interceptor> interceptors;
//
//   DioClient(
//     this.baseUrl,
//     Dio dio, {
//     this.interceptors,
//   }) {
//     _dio = dio ?? Dio();
//     _dio
//           ..options.baseUrl = baseUrl
//           ..options.connectTimeout = _defaultConnectTimeout
//           ..options.receiveTimeout = _defaultReceiveTimeout
//           ..httpClientAdapter
//         // ..options.headers = {'Content-Type': 'application/json; charset=UTF-8'}
//         ;
//     if (kDebugMode) {
//       _dio.interceptors.add(LogInterceptor(
//           responseBody: true,
//           error: true,
//           requestHeader: false,
//           responseHeader: false,
//           request: true,
//           requestBody: true));
//     }
//   }
//
//   Future<dynamic> get(
//     String uri, {
//     Map<String, dynamic> queryParameters,
//     Options options,
//     CancelToken cancelToken,
//     ProgressCallback onReceiveProgress,
//   }) async {
//     try {
//       var response = await _dio.get(
//         uri,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onReceiveProgress: onReceiveProgress,
//       );
//       return response.data;
//     } on SocketException catch (e) {
//       throw SocketException(e.toString());
//     } on FormatException catch (_) {
//       throw FormatException("Unable to process the data");
//     } catch (e) {
//       print(e);
//       throw e;
//     }
//   }
//
//   Future<dynamic> post(
//     String uri, {
//     data,
//     Map<String, dynamic> queryParameters,
//     Options options,
//     CancelToken cancelToken,
//     ProgressCallback onSendProgress,
//     ProgressCallback onReceiveProgress,
//   }) async {
//     try {
//       var response = await _dio.post(
//         uri,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onSendProgress: onSendProgress,
//         onReceiveProgress: onReceiveProgress,
//       );
//       return response.data;
//     } on FormatException catch (_) {
//       throw FormatException("Unable to process the data");
//     } catch (e) {
//       throw e;
//     }
//   }
//
//   Future<dynamic> put(
//     String uri, {
//     data,
//     Map<String, dynamic> queryParameters,
//     Options options,
//     CancelToken cancelToken,
//     ProgressCallback onSendProgress,
//     ProgressCallback onReceiveProgress,
//   }) async {
//     try {
//       var response = await _dio.put(
//         uri,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onSendProgress: onSendProgress,
//         onReceiveProgress: onReceiveProgress,
//       );
//       return response.data;
//     } on FormatException catch (_) {
//       throw FormatException("Unable to process the data");
//     } catch (e) {
//       throw e;
//     }
//   }
// }
//
// /*
// *     (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//         (HttpClient client) {
//       client.badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//       return client;
//     };
// *
// * */
