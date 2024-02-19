// import 'dart:convert';
// import 'package:chopper/chopper.dart';
// import 'package:http/http.dart' as http;
//
// class FreezedModelConverter extends JsonConverter {
//   @override
//   Request convertRequest(Request request) {
//     final contentType = request.headers[http.Headers.contentTypeHeader];
//     if (contentType != null &&
//         contentType.contains(http.Headers.jsonContentType)) {
//       // Convert request body to JSON
//       final bodyJson = jsonEncode(request.body.toJson());
//       return request.copyWith(body: bodyJson);
//     }
//     return super.convertRequest(request);
//   }
// }
