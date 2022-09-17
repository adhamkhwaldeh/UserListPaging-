import 'package:flutter/material.dart';
import 'package:owwn_coding_challenge/components/splash_component.dart';
import 'package:sizer/sizer.dart';
import 'package:user_list_core/di/env.dart';
import 'package:user_list_core/get_localization/l10S.dart';
import 'package:user_list_core/get_localization/messages_translations.dart';
import 'package:common_library/themes/light_theme.dart';
import 'package:get/get.dart';

class AppComponent extends StatelessWidget {
  const AppComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        translations: MessagesTranslations(), // your translations
        // supportedLocales: [Locale('en'), Locale('ar')],

        // .map(
        //     (language) => Locale(language.languageCode, language.countryCode))
        // .toList(),
        locale:
            const Locale('en'), // translations will be displayed in that locale
        fallbackLocale: const Locale('en'),
        debugShowCheckedModeBanner: false,
        enableLog: true,
        // themeMode: ThemeMode.,
        theme: LightTheme.themeData,
        // darkTheme: DarkTheme.themeData,
        darkTheme: LightTheme.themeData,
        home: MaterialApp(
          title: L10S.property_Man.tr,
          debugShowCheckedModeBanner: Env.data.debugShowCheckedModeBanner,
          debugShowMaterialGrid: Env.data.debugShowMaterialGrid,
          // onGenerateRoute: Application.router.generator,
          home:  SplashComponent(),
          navigatorObservers: [GetObserver()],
          theme: LightTheme.themeData,
          darkTheme: LightTheme.themeData,
          // darkTheme: DarkTheme.themeData,
          // theme: AppThemeDataFactory.prepareThemeData(),

          // localizationsDelegates: [
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,
          // ],
          // builder: (BuildContext c, Widget w) {
          //   ScreenHelper.init(width: 750, height: 1334, allowFontScaling: true);
          //   // ScreenUtil.instance =
          //   //     ScreenUtil(width: 750, height: 1334, allowFontScaling: true)
          //   //       ..init(c);
          //   if (!kIsWeb) {
          //     final MediaQueryData data = MediaQuery.of(c);
          //     return MediaQuery(
          //       data: data.copyWith(textScaleFactor: 1.0),
          //       child: w,
          //     );
          //   }
          //   return w;
          // },

          // ThemeData(
          //   primarySwatch: Colors.green,
          // ),
          // locale: Locale(
          //   _appStore.language.locale,
          //   _appStore.language.countryCode,
          // ),
          // supportedLocales: [Locale('en'), Locale('ar')]
          // .map((language) =>
          //     Locale(language.locale, language.countryCode))
          // .toList()
          // localizationsDelegates: [
          //   L10n.delegate,
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,
          // ],
          // localeResolutionCallback: (locale, supportedLocales) {
          //   if (locale == null) {
          //     return supportedLocales.first;
          //   }

          //   // Check if the current device locale is supported
          //   return supportedLocales.firstWhere(
          //     (supportedLocale) =>
          //         supportedLocale.languageCode == locale.languageCode,
          //     orElse: () => supportedLocales.first,
          //   );
          // },
        ),
      ),
    );

    // MaterialApp(
    //   title: 'Flutter Coding Challenge',
    //   darkTheme: ThemeData.dark(),
    //   themeMode: ThemeMode.dark,
    //   home: const SplashComponent(),
    // );
  }
}
