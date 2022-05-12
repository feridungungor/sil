// import 'package:dio/dio.dart';
//
// class ApiRequest {
//   final String url;
//   Map<String, dynamic> data;
//
//   ApiRequest({
//     required this.url,
//     required this.data,
//   });
//
//   Dio _dio() {
//     // Put your authorization token here
//     return Dio(BaseOptions(headers: {
//       'Authorization': 'B ....',
//     }));
//   }
//
//   void get({
//     required Function(String msj) beforeSend,
//     required Function(dynamic data) onSuccess,
//     required Function(dynamic error) onError,
//   }) {
//     _dio().get(url, queryParameters: data).then((res) {
//       beforeSend("Veriler Çekiliyor.");
//       onSuccess(res.data);
//     }).catchError((error) {
//       onError(error);
//     });
//   }
// }
