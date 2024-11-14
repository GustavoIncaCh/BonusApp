import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:bonus_app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: FlexThemeData.light(
        scheme: FlexScheme.shark,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurfacesVariantDialog,
        blendLevel: 7,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
          textButtonRadius: 6.0,
          filledButtonRadius: 6.0,
          elevatedButtonRadius: 6.0,
          outlinedButtonRadius: 6.0,
          outlinedButtonBorderWidth: 0.5,
          outlinedButtonPressedBorderWidth: 0.5,
          inputDecoratorBackgroundAlpha: 110,
          inputDecoratorBorderType: FlexInputBorderType.underline,
          inputDecoratorUnfocusedHasBorder: false,
          inputDecoratorFocusedHasBorder: false,
          dialogBackgroundSchemeColor: SchemeColor.background,
          dialogElevation: 0.0,
          appBarBackgroundSchemeColor: SchemeColor.primary,
          appBarScrolledUnderElevation: 0.0,
          tabBarItemSchemeColor: SchemeColor.onPrimary,
          tabBarUnselectedItemSchemeColor: SchemeColor.primaryContainer,
          drawerRadius: 3.0,
          drawerElevation: 4.0,
          drawerWidth: 300.0,
          bottomNavigationBarElevation: 10.0,
          navigationBarElevation: 24.0,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.shark,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 13,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
          textButtonRadius: 6.0,
          filledButtonRadius: 6.0,
          elevatedButtonRadius: 6.0,
          outlinedButtonRadius: 6.0,
          outlinedButtonBorderWidth: 0.5,
          outlinedButtonPressedBorderWidth: 0.5,
          inputDecoratorBorderType: FlexInputBorderType.underline,
          inputDecoratorUnfocusedHasBorder: false,
          inputDecoratorFocusedHasBorder: false,
          dialogBackgroundSchemeColor: SchemeColor.background,
          dialogElevation: 0.0,
          drawerRadius: 3.0,
          drawerElevation: 4.0,
          drawerWidth: 300.0,
          bottomNavigationBarElevation: 10.0,
          navigationBarElevation: 24.0,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.splash,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
    );
  }
}
