
Ability to continue downloading interrupted files.

## Features
Downloading files with continuing downloading interrupted files


## Getting started

```dart
  // ability to continue downloading interrupted files
  DioPlus dioPlus = DioPlus();

```

## Usage
```dart
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
  ```

## Just like that