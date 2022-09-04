import 'package:flutter/material.dart';

import '../../../../infrastructure/utils/color_utils.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 126,
      width: 222,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text.rich(
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            TextSpan(
              children: [
                TextSpan(
                  text: 'در مجموع\n',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                TextSpan(
                  text: '۳۲۵،۰۰۰ تومان بدهکاری',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: ColorUtils.secondaryColor),
                )
              ],
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: null,
              style: const ButtonStyle(
                alignment: Alignment.center,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 16.0,
                  ),
                  Text('جزئیات طلب‌ها و بدهی‌ها'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
