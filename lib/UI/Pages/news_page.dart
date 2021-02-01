import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/Models/news_model.dart';
import 'package:flutter_app/Services/http_request_service.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatelessWidget {
  List<NewsModel> news = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(MdiIcons.newspaper),
            SizedBox(width: 10),
            Text('News'),
            SizedBox(width: 40),
          ],
        ),
      ),
      body: FutureBuilder(
          future: obtanieNews(),
          builder: (context, resp) {
            if (resp.hasData) {
              List<dynamic> newsJson = jsonDecode(resp.data)['results'];
              newsJson.forEach((element) {
                NewsModel _news = NewsModel.fromJson(element);
                news.add(_news);
              });

              return ListView.builder(
                  itemCount: news.length,
                  itemBuilder: (context, picker) {
                    return ListTile(
                      onTap: () {
                        launch(news[picker].url);
                      },
                      leading: CircleAvatar(child: Text(picker.toString())),
                      contentPadding: EdgeInsets.fromLTRB(2.0, 5.0, 2.0, 5.0),
                      title: Text(news[picker].titulo),
                      subtitle: Text(news[picker].resumen),
                    );
                  });
            }

            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
