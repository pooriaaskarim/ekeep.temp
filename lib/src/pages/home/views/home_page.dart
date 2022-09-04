import 'package:flutter/material.dart';

import 'widgets/ekeep_bottom_sheet.dart';
import 'widgets/ekeeps_slider.dart';
import 'widgets/header.dart';
import 'widgets/latest_interactions_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({final Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Scaffold(
          bottomNavigationBar: const EkeepBottomSheet(),
          // bottomSheet: const EkeepBottomSheet(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  HomeHeader(),
                  EkeepsSlider(),
                  LatestInteractionsList(),
                ],
              ),
            ),
          ),
        ),
      );
}
