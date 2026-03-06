import 'package:flutter_test/flutter_test.dart';
import 'package:tony_multi_module_test/tony_multi_module_test.dart';
import 'package:tony_multi_module_test/tony_multi_module_test_platform_interface.dart';
import 'package:tony_multi_module_test/tony_multi_module_test_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTonyMultiModuleTestPlatform
    with MockPlatformInterfaceMixin
    implements TonyMultiModuleTestPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TonyMultiModuleTestPlatform initialPlatform = TonyMultiModuleTestPlatform.instance;

  test('$MethodChannelTonyMultiModuleTest is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTonyMultiModuleTest>());
  });

  test('getPlatformVersion', () async {
    TonyMultiModuleTest tonyMultiModuleTestPlugin = TonyMultiModuleTest();
    MockTonyMultiModuleTestPlatform fakePlatform = MockTonyMultiModuleTestPlatform();
    TonyMultiModuleTestPlatform.instance = fakePlatform;

    expect(await tonyMultiModuleTestPlugin.getPlatformVersion(), '42');
  });
}
