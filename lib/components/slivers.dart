import 'package:flutter/cupertino.dart';

class SliverEmpty extends StatelessWidget {
  final double height;
  final double width;

  const SliverEmpty({
    Key key,
    this.height = 0,
    this.width = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return SizedBox(
            height: this.height,
            width: this.width,
          );
        },
        childCount: 1,
      ),
    );
  }
}

class SliverSingle extends StatelessWidget {
  final Widget child;

  const SliverSingle({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return child;
        },
        childCount: 1,
      ),
    );
  }
}
