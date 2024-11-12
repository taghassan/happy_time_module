import 'package:get/get.dart';

import 'languages/ar.dart';
import 'languages/en.dart';
import 'languages/ur.dart';
import 'languages/hi.dart';


class Translation extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en':en,
    'ar':ar,
    'ur':ur,
    'hi':hi,
  };

}