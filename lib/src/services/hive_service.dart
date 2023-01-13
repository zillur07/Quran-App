import 'dart:io';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quran_app/src/models/quran_sura_model.dart';

class HiveService extends GetxService {
  Future<void> onInitForApp() async {
    Directory appDocumentDir = await getApplicationDocumentsDirectory();

    Hive.init(appDocumentDir.path);

    await registerAdapters();

    await openBoxes();

    print('Hive initialized for app');
  }

  Future<void> openBoxes() async {
    await Hive.openBox<QuranSura>('quran');
  }

  Future<void> registerAdapters() async {
    Hive.registerAdapter(QuranSuraAdapter(), override: true);
    Hive.registerAdapter(ResultsAdapter(), override: true);
    Hive.registerAdapter(WordsAdapter(), override: true);
    Hive.registerAdapter(TranslationsAdapter(), override: true);
  }
}
