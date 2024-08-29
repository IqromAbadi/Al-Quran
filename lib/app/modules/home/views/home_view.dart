import 'package:alquran/app/modules/juz/views/juz_view.dart';
import 'package:alquran/app/modules/surah/views/surah_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/icons/Shahadah.svg',
                width: 24.w,
                height: 24.h,
              ),
              SizedBox(width: 8.w),
              Text(
                'Al-Quran',
                style: TextStyle(fontSize: 20.sp),
              ),
            ],
          ),
          bottom: TabBar(
            dividerColor: Colors.transparent,
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontSize: 16.sp),
            unselectedLabelColor: Colors.white,
            labelColor: Colors.green[700],
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 4.0,
                color: Colors.green[700]!,
              ),
              insets: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
            ),
            tabs: const [
              Tab(text: "Surah"),
              Tab(text: "Juz"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SurahView(),
            JuzView(),
          ],
        ),
      ),
    );
  }
}
