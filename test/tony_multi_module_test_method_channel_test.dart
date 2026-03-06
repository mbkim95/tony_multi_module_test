import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tony_multi_module_test/tony_multi_module_test_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelTonyMultiModuleTest platform = MethodChannelTonyMultiModuleTest();
  const MethodChannel channel = MethodChannel('tony_multi_module_test');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
          return '42';
        });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
