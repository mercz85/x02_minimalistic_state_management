import 'package:get_it/get_it.dart';

import '../pages/timer_page/timer_page_logic.dart';
import 'storage_service/shared_preferences_storage.dart';
import 'storage_service/storage_service.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // state management layer
  getIt.registerLazySingleton<TimerPageManager>(() => TimerPageManager());

  // service layer
  getIt.registerLazySingleton<StorageService>(() => SharedPreferencesStorage());
}
