// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _ar = {
  "readFreeBooks": "أقرأ كتب مجانية",
  "search": "بحث",
  "searchResult": "نتائج البحث",
  "newestBooks": "أحدث الكتب",
  "free": "مجاني",
  "language": "اللغة",
  "theme": "الوضع",
  "lightMode": "الوضع النهاري",
  "darkMode": "الوضع الليلي",
  "youCanAlsoLike": "يمكن أيضا أن يعجبك",
  "notAvailable": "غير متاح",
  "download": "تحميل",
  "arabicLanguage": "اللغة العربية",
  "englishLanguage": "اللغة الإنجليزية"
};
static const Map<String,dynamic> _en = {
  "readFreeBooks": "Read Free Books",
  "search": "Search",
  "searchResult": "Search Result",
  "newestBooks": "Newest Books",
  "free": "Free",
  "language": "Language",
  "theme": "Theme",
  "lightMode": "Light Mode",
  "darkMode": "Dark Mode",
  "accentColor": "Accent Color",
  "youCanAlsoLike": "You can also like",
  "notAvailable": "Not Available",
  "download": "Download",
  "arabicLanguage": "Arabic Language",
  "englishLanguage": "English Language"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": _ar, "en": _en};
}
