import 'package:flutter/material.dart';

class LiveStreamPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LiveStreamPageState();

}

class _LiveStreamPageState extends State<LiveStreamPage> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Text('LiveStreamPage'),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
