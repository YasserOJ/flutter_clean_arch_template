import 'package:flutter_clean_arch_template/core/utils/dependency_injection/component/app_component.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt locator = GetIt.I;

@InjectableInit(
  preferRelativeImports: false,
)
@injectableInit
Future<void> initAppComponentLocator() async => $initGetIt(locator);
