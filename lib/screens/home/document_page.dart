import 'package:flutter/material.dart';

class DocumentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DocumentPageState();

}

class _DocumentPageState extends State<DocumentPage> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Text('DocumentPage'),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
