
import 'package:demo_1/navigator/navigator_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton<NavigationService>(()=> NavigationService());

}
  const String splashRoute = 'splashRoute';
  const String signRoute = 'signRoute';
