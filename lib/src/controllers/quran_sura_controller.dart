import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../config/appConfigs.dart';
import '../models/quran_sura_model.dart';

class QuranSuraController extends GetxController {
  final _dio = Dio();
  final quranSura = Rx<QuranSura?>(null);

  // @override
  // void onReady() async {
  //   super.onReady();
  //   getSuraFromHive();
  // }

  void getSuraFromHive() async {
    log('try to get sura from hive db' '**************************');
    final userBox = Hive.box<QuranSura>('quran');
    final suraList = await userBox.get('quran_sura');

    if (userBox.containsKey('quran_sura') && suraList!.results!.isNotEmpty) {
      log('${jsonEncode(suraList)}' '**************************');
      quranSura.value = suraList;
    }
  }

  getAllSura() async {
    log('ami achi ' '>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
    try {
      final res = await _dio.get(
          'http://api.quran.com/api/v3/search?q=quran&size=20&page=0&language=en');

      final suraData =
          QuranSura.fromJson(res.data['search'] as Map<String, dynamic>);

      if (res.statusCode == 200) {
        quranSura.value = suraData;

        final userBox = Hive.box<QuranSura>('quran');

        await userBox.put('quran_sura', suraData);
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
