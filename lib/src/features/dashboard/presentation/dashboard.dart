import "package:fitness_app/src/common_widgets/dort_indicator.dart";
import "package:fitness_app/src/features/dashboard/presentation/home_page.dart";
import "package:fitness_app/src/features/dashboard/presentation/profile_page.dart";
import "package:fitness_app/src/features/dashboard/presentation/progress_page.dart";
import "package:fitness_app/src/styles.dart";
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;
  final List<Widget> _pages = [
    const HomePage(),
    // const DashboardScreen(),
    const ProgressPage(),
    Container(),
    const ProfilePage(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          decoration: const BoxDecoration(
            color: AppStyles.whiteColor,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppStyles.marginLeftRight, vertical: 20.h),
            child: TabBar(
              controller: _tabController,
             // labelColor: Colors.black,
              //unselectedLabelColor: Colors.grey,
              indicator: const DotIndicator(),
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                  _tabController.animateTo(_selectedIndex);
                });
              },
              tabs:  [
                Tab(
                  icon: _tabController.index==0?AppStyles.homeSvg:AppStyles.homeNoGradientSvg,
                ),
                 Tab(
                  icon: _tabController.index==1?AppStyles.activitySvg:AppStyles.activityNoGradienttSvg,
                ),
                //  Tab(text:'sizedbox',child: const SizedBox.shrink(),),
               const  SizedBox.shrink(
                    child: Tab(
                  text: 'sizedbox',
                )),
                 Tab(
                  icon: _tabController.index==3?AppStyles.cameraSvg:AppStyles.cameraNoGradientSvg ,
                ),
                 Tab(
                  icon: _tabController.index==4?AppStyles.personGradientSvg:AppStyles.outlinePersonSvg,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
          margin: const EdgeInsets.only(
            top: 40,
          ),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              stops: [0.0, 1.0],
              colors: [
                AppStyles.primaryColorGradientTwo,
                AppStyles.primaryColorGradientOne
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppStyles.buttonShadowColor,
                offset: const Offset(0, 10), //(x,y)
                blurRadius: 22.r,
              ),
            ],
          ),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: AppStyles.searchSvg,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


