import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:translator/translator.dart';
import 'package:happy_time_module/src/core/controller/base_controller.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/widgets/background_image_with_overlay.dart';

import '../utils/logger_utils.dart';
import '../widgets/primary_dropdown.dart';

final List<Map<String, String>> supportedLanguages = [
  {'code': 'af', 'name': 'Afrikaans', 'native': 'الأفريكانية'},
  {'code': 'sq', 'name': 'Albanian', 'native': 'الألبانية'},
  {'code': 'am', 'name': 'Amharic', 'native': 'الأمهرية'},
  {'code': 'ar', 'name': 'Arabic', 'native': 'العربية'},
  {'code': 'hy', 'name': 'Armenian', 'native': 'الأرمينية'},
  {'code': 'az', 'name': 'Azerbaijani', 'native': 'الأذربيجانية'},
  {'code': 'eu', 'name': 'Basque', 'native': 'لغة الباسك'},
  {'code': 'be', 'name': 'Belarusian', 'native': 'البيلاروسية'},
  {'code': 'bn', 'name': 'Bengali', 'native': 'البنغالية'},
  {'code': 'bs', 'name': 'Bosnian', 'native': 'البوسنية'},
  {'code': 'bg', 'name': 'Bulgarian', 'native': 'البلغارية'},
  {'code': 'ca', 'name': 'Catalan', 'native': 'الكاتالونية'},
  {'code': 'ceb', 'name': 'Cebuano', 'native': 'السيبوانية'},
  {
    'code': 'zh-cn',
    'name': 'Chinese (Simplified)',
    'native': 'الصينية المبسطة'
  },
  {
    'code': 'zh-tw',
    'name': 'Chinese (Traditional)',
    'native': 'الصينية التقليدية'
  },
  {'code': 'co', 'name': 'Corsican', 'native': 'الكورسيكية'},
  {'code': 'hr', 'name': 'Croatian', 'native': 'الكرواتية'},
  {'code': 'cs', 'name': 'Czech', 'native': 'التشيكية'},
  {'code': 'da', 'name': 'Danish', 'native': 'الدانماركية'},
  {'code': 'nl', 'name': 'Dutch', 'native': 'الهولندية'},
  {'code': 'en', 'name': 'English', 'native': 'الإنجليزية'},
  {'code': 'eo', 'name': 'Esperanto', 'native': 'الإسبرانتو'},
  {'code': 'et', 'name': 'Estonian', 'native': 'الإستونية'},
  {'code': 'fi', 'name': 'Finnish', 'native': 'الفنلندية'},
  {'code': 'fr', 'name': 'French', 'native': 'الفرنسية'},
  {'code': 'gl', 'name': 'Galician', 'native': 'الجاليكية'},
  {'code': 'ka', 'name': 'Georgian', 'native': 'الجورجية'},
  {'code': 'de', 'name': 'German', 'native': 'الألمانية'},
  {'code': 'el', 'name': 'Greek', 'native': 'اليونانية'},
  {'code': 'gu', 'name': 'Gujarati', 'native': 'الغوجاراتية'},
  {'code': 'ht', 'name': 'Haitian Creole', 'native': 'الكريولية الهايتية'},
  {'code': 'ha', 'name': 'Hausa', 'native': 'الهوسا'},
  {'code': 'haw', 'name': 'Hawaiian', 'native': 'لغة هاواي'},
  {'code': 'he', 'name': 'Hebrew', 'native': 'العبرية'},
  {'code': 'hi', 'name': 'Hindi', 'native': 'الهندية'},
  {'code': 'hmn', 'name': 'Hmong', 'native': 'الهمونغية'},
  {'code': 'hu', 'name': 'Hungarian', 'native': 'الهنغارية'},
  {'code': 'is', 'name': 'Icelandic', 'native': 'الأيسلندية'},
  {'code': 'ig', 'name': 'Igbo', 'native': 'الإيغبو'},
  {'code': 'id', 'name': 'Indonesian', 'native': 'الإندونيسية'},
  {'code': 'ga', 'name': 'Irish', 'native': 'الأيرلندية'},
  {'code': 'it', 'name': 'Italian', 'native': 'الإيطالية'},
  {'code': 'ja', 'name': 'Japanese', 'native': 'اليابانية'},
  {'code': 'jv', 'name': 'Javanese', 'native': 'لغة الجاوية'},
  {'code': 'kn', 'name': 'Kannada', 'native': 'الكانادا'},
  {'code': 'kk', 'name': 'Kazakh', 'native': 'الكازاخستانية'},
  {'code': 'km', 'name': 'Khmer', 'native': 'الخميرية'},
  {'code': 'rw', 'name': 'Kinyarwanda', 'native': 'الكينيارواندية'},
  {'code': 'ko', 'name': 'Korean', 'native': 'الكورية'},
  {'code': 'ku', 'name': 'Kurdish', 'native': 'الكردية'},
  {'code': 'ky', 'name': 'Kyrgyz', 'native': 'القيرغيزية'},
  {'code': 'lo', 'name': 'Lao', 'native': 'لغة لاو'},
  {'code': 'la', 'name': 'Latin', 'native': 'اللاتينية'},
  {'code': 'lv', 'name': 'Latvian', 'native': 'اللاتفية'},
  {'code': 'lt', 'name': 'Lithuanian', 'native': 'الليتوانية'},
  {'code': 'lb', 'name': 'Luxembourgish', 'native': 'اللوكسمبورغية'},
  {'code': 'mk', 'name': 'Macedonian', 'native': 'المقدونية'},
  {'code': 'mg', 'name': 'Malagasy', 'native': 'الملغاشية'},
  {'code': 'ms', 'name': 'Malay', 'native': 'الملايو'},
  {'code': 'ml', 'name': 'Malayalam', 'native': 'الماليالام'},
  {'code': 'mt', 'name': 'Maltese', 'native': 'المالطية'},
  {'code': 'mi', 'name': 'Maori', 'native': 'الماورية'},
  {'code': 'mr', 'name': 'Marathi', 'native': 'الماراثية'},
  {'code': 'mn', 'name': 'Mongolian', 'native': 'المنغولية'},
  {'code': 'my', 'name': 'Myanmar (Burmese)', 'native': 'البورمية'},
  {'code': 'ne', 'name': 'Nepali', 'native': 'النيبالية'},
  {'code': 'no', 'name': 'Norwegian', 'native': 'النرويجية'},
  {'code': 'or', 'name': 'Odia (Oriya)', 'native': 'الأورية'},
  {'code': 'ps', 'name': 'Pashto', 'native': 'البشتوية'},
  {'code': 'fa', 'name': 'Persian', 'native': 'الفارسية'},
  {'code': 'pl', 'name': 'Polish', 'native': 'البولندية'},
  {'code': 'pt', 'name': 'Portuguese', 'native': 'البرتغالية'},
  {'code': 'pa', 'name': 'Punjabi', 'native': 'البنجابية'},
  {'code': 'ro', 'name': 'Romanian', 'native': 'الرومانية'},
  {'code': 'ru', 'name': 'Russian', 'native': 'الروسية'},
  {'code': 'sm', 'name': 'Samoan', 'native': 'الساموية'},
  {'code': 'gd', 'name': 'Scots Gaelic', 'native': 'الغيلية الاسكتلندية'},
  {'code': 'sr', 'name': 'Serbian', 'native': 'الصربية'},
  {'code': 'st', 'name': 'Sesotho', 'native': 'السوتية'},
  {'code': 'sn', 'name': 'Shona', 'native': 'الشونا'},
  {'code': 'sd', 'name': 'Sindhi', 'native': 'السندية'},
  {'code': 'si', 'name': 'Sinhala', 'native': 'السنهالية'},
  {'code': 'sk', 'name': 'Slovak', 'native': 'السلوفاكية'},
  {'code': 'sl', 'name': 'Slovenian', 'native': 'السلوفينية'},
  {'code': 'so', 'name': 'Somali', 'native': 'الصومالية'},
  {'code': 'es', 'name': 'Spanish', 'native': 'الإسبانية'},
  {'code': 'su', 'name': 'Sundanese', 'native': 'السوندانية'},
  {'code': 'sw', 'name': 'Swahili', 'native': 'السواحلية'},
  {'code': 'sv', 'name': 'Swedish', 'native': 'السويدية'},
  {'code': 'tl', 'name': 'Tagalog (Filipino)', 'native': 'التاغالوغية'},
  {'code': 'tg', 'name': 'Tajik', 'native': 'الطاجيكية'},
  {'code': 'ta', 'name': 'Tamil', 'native': 'التاميلية'},
  {'code': 'tt', 'name': 'Tatar', 'native': 'التترية'},
  {'code': 'te', 'name': 'Telugu', 'native': 'التيلوغوية'},
  {'code': 'th', 'name': 'Thai', 'native': 'التايلاندية'},
  {'code': 'tr', 'name': 'Turkish', 'native': 'التركية'},
  {'code': 'tk', 'name': 'Turkmen', 'native': 'التركمانية'},
  {'code': 'uk', 'name': 'Ukrainian', 'native': 'الأوكرانية'},
  {'code': 'ur', 'name': 'Urdu', 'native': 'الأردية'},
  {'code': 'ug', 'name': 'Uyghur', 'native': 'الأويغورية'},
  {'code': 'uz', 'name': 'Uzbek', 'native': 'الأوزبكية'},
  {'code': 'vi', 'name': 'Vietnamese', 'native': 'الفيتنامية'},
  {'code': 'cy', 'name': 'Welsh', 'native': 'الويلزية'},
  {'code': 'xh', 'name': 'Xhosa', 'native': 'الخوسية'},
  {'code': 'yi', 'name': 'Yiddish', 'native': 'الييدية'},
  {'code': 'yo', 'name': 'Yoruba', 'native': 'اليوروبا'},
  {'code': 'zu', 'name': 'Zulu', 'native': 'الزولوية'},
];

class LanguageOptionModel {
  final String? code, name, native;

  LanguageOptionModel({this.name, this.code, this.native});

  static List<LanguageOptionModel> supportedLanguagesList = supportedLanguages
      .map(
        (lang) => LanguageOptionModel(
          name: lang['name'],
          code: lang['code'],
          native: lang['native'],
        ),
      )
      .toList();

  static List<String> supportedLanguagesCodeList = supportedLanguages
      .map(
        (lang) => '${lang['code']}',
      )
      .toList();
}

LanguageOptionModel arabicOption =
    LanguageOptionModel(native: 'العربية', code: 'ar', name: 'Arabic');

class GoogleTranslateHelper {
  static GoogleTranslateHelper it = GoogleTranslateHelper();
  final translator = GoogleTranslator();

  Future<Translation> translateText(String text,
      {String from = 'auto', String to = 'en'}) async {
    // Define the language codes (to handle custom language mapping)
    final supportedLanguages = LanguageOptionModel
        .supportedLanguagesCodeList; // Extend this list with more languages

    // Validate the 'from' and 'to' languages
    if (from != 'auto' && !supportedLanguages.contains(from)) {
      AppLogger.it.logError('The language $from is not supported');
      throw Exception('The language $from is not supported');
    }
    if (to != 'auto' && !supportedLanguages.contains(to)) {
      AppLogger.it.logError('The language $to is not supported');

      throw Exception('The language $to is not supported');
    }

    try {
      // Use the google_translator package for translation
      var translation = await translator.translate(text, from: from, to: to);

      // AppLogger.it.logDebug("translation $translation");

      // Create the result structure (matching the original JS output)
      Map<String, dynamic> result = {
        'text': translation.text,
        'from': {
          'language': {
            'didYouMean': false,
            'iso': translation.sourceLanguage.code
          },
          'text': {'autoCorrected': false, 'value': text, 'didYouMean': false}
        },
        'raw': translation.toString(),
      };

      // Check if the translation was corrected or if the language was auto-detected
      if (translation.sourceLanguage.code != from) {
        result['from']['language']['didYouMean'] = true;
      }

      // return result;
      return translation;
    } catch (e) {
      // Handle any errors that occur during the request
      throw Exception('Failed to translate: $e');
    }
  }
}

class GoogleTranslateController extends BaseController with StateMixin {
  String? translatedText;
  String? originalText;

  //{'code': 'ar', 'name': 'Arabic', 'native': 'العربية'},

  LanguageOptionModel selectedLanguage =
      LanguageOptionModel.supportedLanguagesList.firstWhere(
    (element) => element.code == 'ar',
  );

  @override
  void onInit() {
    change(null, status: RxStatus.success());
    super.onInit();
  }

  void translateText() async {
    try {
      // AppLogger.it.logDeveloper("original Text length ${originalText?.splitByLength(2000)}");
      // if (originalText != null && originalText!.length > 3500) {
      //   SnackAlert.showError(
      //       title: 'original Text length ${originalText?.length}', message: '');
      //   return;
      // }

      showLoadingIndicator(true);

      List<String> translationOutPut =[];

      for(var slip in originalText?.splitByLength(3000)??[])
      {
        var txt = await GoogleTranslateHelper.it
            .translateText('$slip', to: selectedLanguage.code.toString());
        translationOutPut.add(txt.text??'');
      }
      showLoadingIndicator(false);
      translatedText = translationOutPut.join("") ?? '';

      // AppLogger.it.logInfo("translatedText ${translationOutPut.join("")}");
    } catch (error) {
      showLoadingIndicator(false);

      AppLogger.it.logError("translatedText error $error");
    }
  }

  void updateSelectedLanguage(LanguageOptionModel? language) {
    AppLogger.it.logInfo("updateSelectedLanguage ${language?.name}");
    selectedLanguage = language ?? arabicOption;
    update();
  }
}

class GoogleTranslateDialog extends GetView<GoogleTranslateController> {
  final String? textToTranslate;

  GoogleTranslateDialog({super.key, this.textToTranslate}) {
    if (!Get.isRegistered<GoogleTranslateController>()) {
      Get.lazyPut(() => GoogleTranslateController(), fenix: true);
    }

    controller.originalText = textToTranslate;
    controller.translatedText = textToTranslate;
    controller.update();
  }

  @override
  Widget build(BuildContext context) {
    // AppLogger.it.logDeveloper("${LanguageOptionModel.supportedLanguagesList.map((e) => "${e.code}",).toList()}");
    return BackgroundImageWithOverlayWidget(
      // backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Row(
        children: [
          OutlinedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.white)),
            onPressed: controller.translateText,
            child: Text(
              "translate".tr,
            ),
          ),
          context.sizedBoxWidthSmall,
          OutlinedButton(
            onPressed: () => Get.back(),
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.white)),
            child: Text(
              "close".tr,
              style: const TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
      appBar: AppBar(),
      child: controller.obx(
        (state) => Column(
          children: [
            context.sizedBoxHeightExtraSmall,
            PrimaryDropDown<LanguageOptionModel>(
              searchable: true,
              items: LanguageOptionModel.supportedLanguagesList,
              selectedValue: controller.selectedLanguage,
              onChanged: controller.updateSelectedLanguage,
              child: (language) => Text(
                  "${Get.isArabicLocale ? language?.native : language?.name}"),
              itemAsString: (language) =>
                  "${Get.isArabicLocale ? language.native : language.name}",
            ).size(width: Get.width * 0.9),
            context.sizedBoxHeightExtraSmall,
            Expanded(
              child: SingleChildScrollView(
                //Text(
                //                   "${controller.translatedText ?? controller.originalText}",
                //                   textAlign: TextAlign.justify,
                //                 ).paddingSymmetric(horizontal: 15)
                child: RichText(
                  text: TextSpan(
                    text:
                        "${controller.translatedText ?? controller.originalText}",
                    style: Theme.of(context).textTheme.labelLarge,
                    children: [
                      TextSpan(text: " - ", children: [
                        WidgetSpan(
                            child: InkWell(
                          child: Row(
                            children: [
                              const Icon(Icons.copy_all),
                              Text("copy".tr)
                            ],
                          ),
                          onTap: () {
                            Clipboard.setData(
                              ClipboardData(
                                text:
                                    "${controller.translatedText ?? controller.originalText}",
                              ),
                            );
                          },
                        ))
                      ])
                    ],
                  ),
                  textAlign: TextAlign.justify,
                  textDirection: controller.selectedLanguage.code=='ar'?  TextDirection.rtl:TextDirection.ltr,
                ).paddingOnly(bottom: 50),
              ),
            ),
          ],
        ).paddingAll(25),
      ),
    );
  }
}

class TranslateRowWidget extends StatelessWidget {
  final String? textToTranslate;

  const TranslateRowWidget({super.key, this.textToTranslate});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.dialog(GoogleTranslateDialog(
        textToTranslate: textToTranslate,
      )),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Get.dialog(GoogleTranslateDialog(
              textToTranslate: textToTranslate,
            )),
            icon: const Icon(Icons.translate),
          ),
          Text("translate".tr)
        ],
      ),
    );
  }
}
