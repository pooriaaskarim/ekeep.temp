import 'package:ekeep/src/infrastructure/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../../infrastructure/utils/color_utils.dart';
import 'dummy_card.dart';

const double _cardWidth = 176.0;
const double _cardHeight = 256.0;
const double _containerHeight = 288.0;

class EkeepsSlider extends StatefulWidget {
  const EkeepsSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<EkeepsSlider> createState() => _EkeepsSliderState();
}

class _EkeepsSliderState extends State<EkeepsSlider> {
  final ScrollController _scrollController = ScrollController();
  bool _showAddEkeep = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _containerHeight,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        vertical: AppUtils.mediumSize,
      ),
      decoration: const BoxDecoration(
        color: ColorUtils.primaryColor,
        gradient: LinearGradient(
          colors: [ColorUtils.primaryColor, ColorUtils.ravenColor],
          end: AlignmentDirectional.topEnd,
          begin: AlignmentDirectional.bottomStart,
        ),
      ),
      child: _content(),
    );
  }

  Widget _content() {
    return NotificationListener<UserScrollNotification>(
      onNotification: _notificationListener,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        scrollDirection: Axis.horizontal,
        reverse: true,
        controller: _scrollController,
        slivers: [
          SliverPersistentHeader(
            floating: true,
            delegate: AddEkeep(),
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const DummyCard(
                cardWidth: _cardWidth,
                cardHeight: _cardHeight,
              ),
              childCount: 12,
            ),
            itemExtent: _cardWidth,
          )
        ],
      ),
    );
  }

  bool _notificationListener(
    final UserScrollNotification scrollNotification,
  ) {
    if (scrollNotification.direction == ScrollDirection.forward) {
      setState(() {
        if (!_showAddEkeep) _showAddEkeep = true;
      });
    } else if (scrollNotification.direction == ScrollDirection.reverse) {
      setState(() {
        if (_showAddEkeep) _showAddEkeep = false;
      });
    }

    return _showAddEkeep;
  }
}

class AddEkeep extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return _addEkeepWidget(overlapsContent, context);
  }

  StatelessWidget _addEkeepWidget(bool overlapsContent, BuildContext context) {
    return (overlapsContent)
        ? const IconButton(onPressed: null, icon: Icon(Icons.add_circle))
        : Container(
            height: _cardHeight,
            width: _cardWidth / 1.5,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'اکیپ ها',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    fixedSize: MaterialStateProperty.all(
                      const Size(_cardWidth / 1.8, _cardWidth / 5),
                    ),
                  ),
                  child: FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.group_add,
                          size: AppUtils.mediumSize,
                        ),
                        Text('اکیپ جدید'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }

  @override
  double get maxExtent => _cardWidth / 1.5;

  @override
  double get minExtent => _cardWidth / 2;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
