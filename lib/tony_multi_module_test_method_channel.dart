import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'tony_multi_module_test_platform_interface.dart';

/// An implementation of [TonyMultiModuleTestPlatform] that uses method channels.
class MethodChannelTonyMultiModuleTest extends TonyMultiModuleTestPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('tony_multi_module_test');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
