import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'tony_multi_module_test_method_channel.dart';

abstract class TonyMultiModuleTestPlatform extends PlatformInterface {
  /// Constructs a TonyMultiModuleTestPlatform.
  TonyMultiModuleTestPlatform() : super(token: _token);

  static final Object _token = Object();

  static TonyMultiModuleTestPlatform _instance = MethodChannelTonyMultiModuleTest();

  /// The default instance of [TonyMultiModuleTestPlatform] to use.
  ///
  /// Defaults to [MethodChannelTonyMultiModuleTest].
  static TonyMultiModuleTestPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TonyMultiModuleTestPlatform] when
  /// they register themselves.
  static set instance(TonyMultiModuleTestPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
