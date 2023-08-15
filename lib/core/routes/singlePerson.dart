import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersionViewPage extends StatefulWidget {
  final Map data;
  const PersionViewPage({Key? key,required this.data}) : super(key: key);

  @override
  State<PersionViewPage> createState() => _PersionViewPageState();
}

class _PersionViewPageState extends State<PersionViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Hero(tag: widget.data["name"],
                child: CachedNetworkImage(imageUrl: widget.data["imageUrl"],))
          ],
        ),
      ),
    );
  }
}
