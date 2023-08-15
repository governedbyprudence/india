import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonViewPage extends StatefulWidget {
  final Map data;
  const PersonViewPage({Key? key,required this.data}) : super(key: key);

  @override
  State<PersonViewPage> createState() => _PersonViewPageState();
}

class _PersonViewPageState extends State<PersonViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Hero(tag: widget.data["name"],
                    child: CachedNetworkImage(imageUrl: widget.data["imageUrl"],)),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(widget.data["description"],style: TextStyle(fontSize: 20,height: 1.5,letterSpacing: 1,fontWeight: FontWeight.w500),),
              ),
              const SizedBox(height: 120,),

            ],
          ),
        ),
      ),
    );
  }
}
