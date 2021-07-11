import 'package:android_starter_web/model/enum/dsl_language_enum.dart';

import 'package:android_starter_web/model/extensions/string_extensions.dart';

extension DslLanguageExtension on DslLanguage {
  String toLanguageName() {
    return this.toString().split(".").last.capitalize();
  }
}