import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../../infrastructure/utils/app_utils.dart';

const double _cardHeight = 70;

class LatestInteractionsList extends StatefulWidget {
  const LatestInteractionsList({
    Key? key,
  }) : super(key: key);

  @override
  State<LatestInteractionsList> createState() => _LatestInteractionsListState();
}

class _LatestInteractionsListState extends State<LatestInteractionsList> {
  final ScrollController _scrollController = ScrollController();
  bool _showTitle = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        vertical: AppUtils.mediumSize,
        horizontal: AppUtils.largeSize,
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
        scrollDirection: Axis.vertical,
        // reverse: true,
        controller: _scrollController,
        slivers: [
          SliverPersistentHeader(
            floating: true,
            delegate: LatestInteractionsTitle(
              parentWidgetScrollController: _scrollController,
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _dummyInteractionCard(),
              childCount: 12,
            ),
            itemExtent: _cardHeight,
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
        if (!_showTitle) _showTitle = true;
      });
    } else if (scrollNotification.direction == ScrollDirection.reverse) {
      setState(() {
        if (_showTitle) _showTitle = false;
      });
    }

    return _showTitle;
  }

  Widget _dummyInteractionCard() {
    return Padding(
      padding: const EdgeInsets.all(AppUtils.mediumSize),
      child: Container(
        height: _cardHeight,
        width: double.infinity,
        color: Colors.green,
        // padding: const EdgeInsets.all(AppUtils.mediumSize),
      ),
    );
  }
}

class LatestInteractionsTitle extends SliverPersistentHeaderDelegate {
  ScrollController? parentWidgetScrollController;

  LatestInteractionsTitle({this.parentWidgetScrollController});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return _titleOrToTopIcon(overlapsContent, context);
  }

  Widget _titleOrToTopIcon(
    bool overlapsContent,
    BuildContext context,
  ) {
    if ((overlapsContent)) {
      return Align(
        alignment: Alignment.topRight,
        child: IconButton(
          onPressed: () => parentWidgetScrollController?.animateTo(
            0,
            duration: const Duration(
              microseconds: 600,
            ),
            curve: Curves.fastOutSlowIn,
          ),
          icon: const Icon(Icons.arrow_upward),
        ),
      );
    } else {
      return Text(
        'آخرین فعل و انفعالات',
        textDirection: TextDirection.rtl,
        style: Theme.of(context).textTheme.headline2,
      );
    }
  }

  @override
  double get maxExtent => _cardHeight;

  @override
  double get minExtent => AppUtils.zero;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
