import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      // addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwMDgzMTg4ZjgzMmI3OTU4ZTQwMWJjNGNmOTE1NzJjMSIsIm5iZiI6MTc0NDg5NTMyOC41ODYsInN1YiI6IjY4MDBmZDYwZjM5YzczMDEyNWQ5NjIxZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.5C05eazVby7M-Pdh6kDQ1HDbaEldBQkaPFLpHvL3wok',
    };
  }

  // static void setTokenIntoHeaderAfterLogin(String token) {
  //   dio?.options.headers = {
  //     'Authorization': 'Bearer $token',
  //   };
  // }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
