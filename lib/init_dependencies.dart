import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

/// Sets up SharedPreferences as a singleton instance using GetIt.
Future<void> setupSharedPreferences() async {
  getIt.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );
  await getIt.allReady();
}