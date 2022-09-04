import 'package:ekeep/src/infrastructure/utils/app_utils.dart';
import 'package:ekeep/src/infrastructure/utils/color_utils.dart';
import 'package:flutter/material.dart';

class EkeepBottomSheet extends StatefulWidget {
  const EkeepBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<EkeepBottomSheet> createState() => _EkeepBottomSheetState();
}

class _EkeepBottomSheetState extends State<EkeepBottomSheet> {
  @override
  Widget build(BuildContext context) {
    const double navBarHeight = 100;

    return Container(
      color: Colors.transparent,
      height: navBarHeight,
      width: MediaQuery.of(context).size.width,
      child: _navBar(context, navBarHeight),
    );
  }

  Widget _navBar(BuildContext context, double navBarHeight) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Positioned(
          bottom: AppUtils.zero,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: navBarHeight * 0.7,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            padding: const EdgeInsetsDirectional.fromSTEB(
              AppUtils.mediumSize,
              AppUtils.zero,
              AppUtils.mediumSize,
              AppUtils.mediumSize,
            ),
            decoration: const BoxDecoration(
              // color: ColorUtils.coalColor,
              gradient: LinearGradient(
                colors: [Colors.transparent, ColorUtils.coalColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppUtils.smallSize),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            textBaseline: TextBaseline.ideographic,
            verticalDirection: VerticalDirection.up,
            children: [
              _settingsButton(context),
              _homeButton(context),
              _addPersonButton(context),
              _addExpenseButton(context),
            ],
          ),
        )
      ],
    );
  }

  Widget _settingsButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(Icons.settings),
          Text(
            'تنظیمات',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }

  MaterialButton _homeButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(Icons.home_filled),
          Text(
            'خانه',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }

  MaterialButton _addPersonButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(Icons.person_add_alt),
          Text(
            'آدم جدید',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }

  Widget _addExpenseButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(AppUtils.smallSize),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color:
                      Theme.of(context).colorScheme.primary.withOpacity(0.35),
                  offset: const Offset(0.0, 15.0),
                  blurRadius: 40.0,
                  spreadRadius: -4.0,
                )
              ],
            ),
            child: Icon(
              Icons.add,
              color: Theme.of(context).primaryColorDark,
              size: AppUtils.largeSize,
            ),
          ),
          Text(
            'خرج جدید',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
