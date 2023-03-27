import 'package:get_it/get_it.dart';
import 'camera.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<CameraService>(() => CameraService());
}