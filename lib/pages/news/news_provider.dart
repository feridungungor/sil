// import 'package:sil/library/api_request.dart';
// import 'package:sil/models/post.dart';
//
// class NewsProvider {
//   static void getPostsList({
//     required Function() beforeSend,
//     required Function(List<Post> posts) onSuccess,
//     required Function(dynamic error) onError,
//   }) {
//
//     ApiRequest(
//         url: 'https://jsonplaceholder.typicode.com/posts',
//         data: <String, dynamic>{}).get(
//       beforeSend: (msj) => {
//         if (msj != null) print(msj),
//       },
//       onSuccess: (data) {
//         onSuccess(
//             (data as List).map((postJson) => Post.fromJson(postJson)).toList());
//       },
//       onError: (error) => {if (onError != null) onError(error)},
//     );
//   }
// }
//
//
