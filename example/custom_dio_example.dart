import 'package:custom_dio/custom_dio.dart';

void main() {
  // ability to continue downloading interrupted files
  CustomDio customDio = CustomDio();
  customDio.download('url', 'savePath');
}
