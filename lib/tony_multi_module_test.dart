
import 'tony_multi_module_test_platform_interface.dart';

class TonyMultiModuleTest {
  Future<String?> getPlatformVersion() {
    return TonyMultiModuleTestPlatform.instance.getPlatformVersion();
  }
}
