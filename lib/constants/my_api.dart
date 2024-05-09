class MyApi {
  static const String _serverName = "https://newsapi.org/v2";
  static const String _apiKey = "07804c3726344d06b58e4d99669b03d3";


  static String  baseUrl({required String category}) =>
      "$_serverName/top-headlines?category=$category&apiKey=$_apiKey";
  // "https://newsapi.org/v2/everything?q=tesla&from=2024-02-29&sortBy=publishedAt&apiKey=07804c3726344d06b58e4d99669b03d3";
  //"https://newsapi.org/v2/everything?q=tesla&from=2024-02-28&sortBy=publishedAt&apiKey=2d7f538397b347b582922737241fc308";
}
