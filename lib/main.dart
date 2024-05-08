import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:small_app/controllers/translations.dart';
import 'package:small_app/data/cache/app_settings_cache.dart';
import 'package:small_app/routes/app_pages.dart';
import 'package:small_app/services/shared_preferences_service.dart';
import 'package:small_app/ui/themes.dart';
import 'package:small_app/utils/language_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init(); // Initialize get_storage.
  setupGetIt(); // Register all your services and controllers with get_it.
  await Get.putAsync(() async {
    var service = SharedPreferencesService();
    await service.init();
    return service;
  });
  Locale initialLocale = await LanguageUtils.getInitialLocale();

  runApp(
    GetMaterialApp(
      translations: Messages(), // Translations
      locale: initialLocale,
      fallbackLocale: Locale(LanguageUtils.getCurrentLocaleCode()), // Fallback locale in case an undefined locale is selected
      // Builder to modify the default MediaQuery's textScaleFactor
      builder: (context, child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(textScaler: TextScaler.linear(data.textScaleFactor > 1.2 ? 1.2 : data.textScaleFactor)),
          child: child!,
        );
      },
      localizationsDelegates: LanguageUtils.getLocalizationsDelegates(),
      debugShowCheckedModeBanner: false,
      title: 'Small app',
      theme: Themes.lightTheme().themeData,
      darkTheme: Themes.darkTheme().themeData,
      themeMode: AppSettingsCache.getThemeMode(),

      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

void setupGetIt() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<GetStorage>(GetStorage());
}
