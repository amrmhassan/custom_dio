import 'package:dio_plus/custom_dio.dart';

void main() async {
  // ability to continue downloading interrupted files
  CustomDio customDio = CustomDio();

  CustomCancelToken cancelToken = CustomCancelToken();

  await customDio.download(
    'url',
    'savePath',
    cancelToken: cancelToken,
    deleteIfExist: false,
    headers: {},
    onReceiveProgress: (total, received, chunkSize) {},
  );

  // to cancel
  cancelToken.cancel();
}
