import 'package:get/get.dart';
import 'package:quran_app/src/controllers/quran_sura_controller.dart';

import 'api_controller.dart';

// ArtcileNewsController obj = new ArtcileNewsController();

class BaseController {
  final suraGetC = Get.put(ApiController());
  final quranSuraC = Get.put(QuranSuraController());
}
