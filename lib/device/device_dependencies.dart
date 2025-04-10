import 'package:basic_ride/core/di/dependencies.dart';
import 'package:basic_ride/core/di/di.dart';
import 'package:basic_ride/device/device.dart';
import 'package:basic_ride/domain/domain.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeviceDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    final appKeyValueStorage = DeviceAppKeyValueStorage(
      sharedPreferences: await SharedPreferences.getInstance(),
      jsonStringConverter: di(),
    );

    di.registerSingleton<AppKeyValueStorage>(appKeyValueStorage);
  }
}
