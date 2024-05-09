class News {
  late String title, subTitle, imgSrc, url;

  News({required this.title, required this.subTitle, required this.url, required this.imgSrc});

 factory News.fromJson(Map<String, dynamic> json) {
    return News(
        title: json["title"]??"Title Not Found",
        subTitle: json["description"]??"Description Not Found",
        url: json["url"]??"https://newsapi.org",
        imgSrc: json["urlToImage"]??"https://th.bing.com/th/id/R.093db1cce92bd5ed03efb579d5dbc41e?rik=eNyXlQzdzDyEFA&pid=ImgRaw&r=0");
  }
}
