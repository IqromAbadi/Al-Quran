import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/surah_controller.dart';

class SurahView extends GetView<SurahController> {
  const SurahView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: controller.surahList.length,
            itemBuilder: (context, index) {
              final surah = controller.surahList[index];
              return Card(
                margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
                elevation: 4,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${surah.number}. ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.sp),
                      ),
                      Text(
                        surah.englishName,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.sp),
                      ),
                      Expanded(
                        child: Text(
                          surah.name,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp,
                              color: Colors.green[700]),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.w),
                    child: Text(
                      '${surah.numberOfAyahs} Ayat',
                      style:
                          TextStyle(fontSize: 14.sp, color: Colors.green[700]),
                    ),
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
