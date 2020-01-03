import 'package:myblog/config/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class BlogWidget extends StatelessWidget {
 // final blog;
  final index=0;
  final length=10;
  BlogWidget();


  @override
  Widget build(BuildContext context) {
    double topBottomPadding = (index == 0 || index == length - 1) ? 16.0 : 8.0;
    return InkWell(
      onTap: ()=>html.window.open(Constants.BLOG_URL, 'bugragoksu'),
      child: Card(
        margin:
        EdgeInsets.fromLTRB(16.0, topBottomPadding, 16.0, topBottomPadding),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                Constants.MEDIUM_IMAGE_CDN
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Title',
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(
                height: 8,
              ),
              Text('Hello World',
                  style: Theme.of(context).textTheme.subtitle),
              //Text(blog.virtuals.totalClapCount)
            ],
          ),
        ),
      ),
    );
  }
}