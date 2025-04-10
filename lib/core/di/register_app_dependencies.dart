import 'package:basic_ride/app/app_shared_dependencies.dart';
import 'package:basic_ride/core/core_dependencies.dart';
import 'package:basic_ride/core/di/dependencies.dart';
import 'package:basic_ride/core/di/di.dart';
import 'package:basic_ride/device/device_dependencies.dart';
import 'package:basic_ride/presentation/presentation_dependencies.dart';

Future<void> registerAppDependencies(
  DI di,
) async {
  final dependenciesList = <Dependencies>[
    CoreDependencies(),
    DeviceDependencies(),
    AppSharedDependencies(),
    PresentationDependencies(),
  ];

  for (final dependencies in dependenciesList) {
    await dependencies.register(di);
  }
}
