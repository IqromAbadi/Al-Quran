import 'package:alquran/app/data/models/surah.dart';
import 'package:alquran/app/services/api_versices.dart';
import 'package:get/get.dart';

class SurahController extends GetxController {
  var isLoading = true.obs;
  var surahList = <Datum>[].obs;

  @override
  void onInit() {
    fetchSurah();
    super.onInit();
  }

  void fetchSurah() async {
    try {
      isLoading(true);
      var surahs = await ApiService().getSurah();
      if (surahs.isNotEmpty) {
        surahList.value = surahs;
      }
    } finally {
      isLoading(false);
    }
  }
}
