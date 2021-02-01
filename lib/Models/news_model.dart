class NewsModel {
  String titulo;
  String resumen;
  String url;

  NewsModel({this.titulo, this.resumen, this.url});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      titulo: json['title'],
      resumen: json['abstract'],
      url: json['url'],
    );
  }
}
