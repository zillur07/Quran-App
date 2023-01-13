import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../component/quharn_hedar.dart';
import '../config/appColors.dart';
import '../controllers/base_controller.dart';
import '../widget/kText.dart';

class QuranAllSuraPage extends StatelessWidget with BaseController {
  @override
  Widget build(BuildContext context) {
    quranSuraC.getSuraFromHive();
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
            ),
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.ac_unit,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            )
          ],
          backgroundColor: white2,
          elevation: 0,
          title: KText(
            text: 'Al Quran ',
            fontSize: 20,
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(125),
            child: QuranHeader(),
          ),
        ),
        backgroundColor: white2,
        body: quranSuraC.quranSura.value != null
            ? ListView.builder(
                itemCount: quranSuraC.quranSura.value!.results!.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = quranSuraC.quranSura.value!.results![index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                    child: Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white60,
                            blurRadius: 1,
                            offset: Offset(
                              1,
                              1,
                            ), // Shadow position
                          ),
                          BoxShadow(
                            color: Colors.white60,
                            blurRadius: 1,
                            offset: Offset(
                              -1,
                              -1,
                            ), // Shadow position
                          ),
                          BoxShadow(
                            color: Colors.white60,
                            blurRadius: 1,
                            offset: Offset(
                              -1,
                              1,
                            ), // Shadow position
                          ),
                          BoxShadow(
                            color: Colors.white60,
                            blurRadius: 1,
                            offset: Offset(
                              1,
                              -1,
                            ), // Shadow position
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: KText(
                                  maxline: 3,
                                  text: item.text!,
                                  // text:
                                  //     'وَإِنَّ مِنْهُمْ لَفَرِيقًا يَلْوُۥنَ أَلْسِنَتَهُم بِٱلْكِتَـٰبِ لِتَحْسَبُوهُ مِنَ ٱلْكِتَـٰبِ وَمَا هُوَ مِنَ ٱلْكِتَـٰبِ وَيَقُولُونَ هُوَ مِنْ عِندِ ٱللَّهِ وَمَا هُوَ مِنْ عِندِ ٱللَّهِ وَيَقُولُونَ عَلَى ٱللَّهِ ٱلْكَذِبَ وَهُمْ يَعْلَمُونَ'
                                )),
                          ),

                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: KText(
                                  maxline: 3,
                                  // text: item.translations!.first.text ?? ''

                                  text: item.translations != null
                                      ? item.translations!.first.text!
                                      : '',
                                  // text:
                                  //     'Sâd.\r\n[These letters (Sâd etc.) are one of the miracles of the <em>Quran</em> and none but Allah (Alone) knows their meanings]. By the <em>Quran</em> full of reminding.'
                                )),
                          ),

                          // Padding(
                          //   padding: EdgeInsets.all(10.0),
                          //   child: KText(text: item.translations![0]!.text!),
                          // ),
                          // Align(
                          //     alignment: Alignment.centerRight,
                          //     child: InkWell(child: Icon(Icons.arrow_drop_up))),
                        ],
                      ),
                    ),
                  );
                },
              )
            : Center(child: CircularProgressIndicator()),

        // SingleChildScrollView(
        //   child: Column(children: [
        //     Padding(
        //       padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
        //       child: Container(
        //         width: Get.width,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(15),
        //           boxShadow: [
        //             BoxShadow(
        //               color: Colors.white60,
        //               blurRadius: 1,
        //               offset: Offset(
        //                 1,
        //                 1,
        //               ), // Shadow position
        //             ),
        //             BoxShadow(
        //               color: Colors.white60,
        //               blurRadius: 1,
        //               offset: Offset(
        //                 -1,
        //                 -1,
        //               ), // Shadow position
        //             ),
        //             BoxShadow(
        //               color: Colors.white60,
        //               blurRadius: 1,
        //               offset: Offset(
        //                 -1,
        //                 1,
        //               ), // Shadow position
        //             ),
        //             BoxShadow(
        //               color: Colors.white60,
        //               blurRadius: 1,
        //               offset: Offset(
        //                 1,
        //                 -1,
        //               ), // Shadow position
        //             ),
        //           ],
        //           color: Colors.white,
        //         ),
        //         child: Column(
        //           children: [
        //             Padding(
        //               padding: EdgeInsets.all(15.0),
        //               child: Align(
        //                   alignment: Alignment.centerLeft,
        //                   child: KText(
        //                       maxline: 3,
        //                       text:
        //                           'وَإِنَّ مِنْهُمْ لَفَرِيقًا يَلْوُۥنَ أَلْسِنَتَهُم بِٱلْكِتَـٰبِ لِتَحْسَبُوهُ مِنَ ٱلْكِتَـٰبِ وَمَا هُوَ مِنَ ٱلْكِتَـٰبِ وَيَقُولُونَ هُوَ مِنْ عِندِ ٱللَّهِ وَمَا هُوَ مِنْ عِندِ ٱللَّهِ وَيَقُولُونَ عَلَى ٱللَّهِ ٱلْكَذِبَ وَهُمْ يَعْلَمُونَ')),
        //             ),

        //             Padding(
        //               padding: EdgeInsets.all(15.0),
        //               child: Align(
        //                   alignment: Alignment.centerLeft,
        //                   child: KText(
        //                       maxline: 3,
        //                       text:
        //                           'Sâd.\r\n[These letters (Sâd etc.) are one of the miracles of the <em>Quran</em> and none but Allah (Alone) knows their meanings]. By the <em>Quran</em> full of reminding.')),
        //             ),

        //             // Padding(
        //             //   padding: EdgeInsets.all(10.0),
        //             //   child: KText(text: item.translations![0]!.text!),
        //             // ),
        //             // Align(
        //             //     alignment: Alignment.centerRight,
        //             //     child: InkWell(child: Icon(Icons.arrow_drop_up))),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ]),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            quranSuraC.getSuraFromHive();
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.navigation),
        ),
      ),
    );
  }
}
