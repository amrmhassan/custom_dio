import 'package:dio_plus/dart_plus.dart';

void main() async {
  // ability to continue downloading interrupted files
  DioPlus dioPlus = DioPlus();

  CustomCancelToken cancelToken = CustomCancelToken();

  await dioPlus.download(
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
