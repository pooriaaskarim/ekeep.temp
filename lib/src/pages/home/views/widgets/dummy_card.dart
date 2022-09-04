import 'package:ekeep/src/infrastructure/utils/app_utils.dart';
import 'package:flutter/material.dart';

import '../../../../infrastructure/utils/color_utils.dart';

class DummyCard extends StatelessWidget {
  const DummyCard({
    Key? key,
    required double cardWidth,
    required double cardHeight,
  })  : _cardWidth = cardWidth,
        _cardHeight = cardHeight,
        super(key: key);

  final double _cardWidth;
  final double _cardHeight;

  @override
  Widget build(BuildContext context) {
    const symmetricHorizontalPadding =
        EdgeInsets.symmetric(horizontal: AppUtils.mediumSize);
    const allDirectionsPadding = EdgeInsets.all(AppUtils.mediumSize);
    final BorderRadius borderRadius =
        BorderRadius.circular(AppUtils.mediumSize);
    const radius = Radius.circular(AppUtils.mediumSize);

    return Padding(
      padding: symmetricHorizontalPadding,
      child: Container(
        width: _cardWidth,
        height: _cardHeight,
        decoration: BoxDecoration(
          color: ColorUtils.coalColor,
          borderRadius: borderRadius,
        ),
        child: Column(
          children: [
            Container(
              width: _cardWidth,
              height: _cardWidth,
              padding: allDirectionsPadding,
              alignment: AlignmentDirectional.bottomStart,
              decoration: const BoxDecoration(
                color: ColorUtils.secondaryColor,
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: radius,
                  topStart: radius,
                ),
              ),
              child: const Text('Lorem Ipsum'),
            ),
            Expanded(
              child: Container(
                width: _cardWidth,
                padding: const EdgeInsets.all(AppUtils.mediumSize),
                alignment: AlignmentDirectional.topStart,
                decoration: const BoxDecoration(
                  color: ColorUtils.coalColor,
                  borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(AppUtils.mediumSize),
                    bottomStart: Radius.circular(AppUtils.mediumSize),
                  ),
                ),
                child: const Text('Lorem Ipsum'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
