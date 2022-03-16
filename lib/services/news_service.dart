import 'package:dio/dio.dart';
import 'package:news24/core/constants/news_apis.dart';
import 'package:news24/models/news_model.dart';

class NewsService {
  static Future<NewsModel> getDate1() async {
    Response res = await Dio().get(MyApiConstans.newsapi1);
    return NewsModel.fromJson(res.data);
  }

  static Future<NewsModel> getDate2() async {
    Response res = await Dio().get(MyApiConstans.newsapi2);
    return NewsModel.fromJson(res.data);
  }

  static Future<NewsModel> getDate3() async {
    Response res = await Dio().get(MyApiConstans.newsapi3);
    return NewsModel.fromJson(res.data);
  }

  static Future<NewsModel> getDate4() async {
    Response res = await Dio().get(MyApiConstans.newsapi4);
    return NewsModel.fromJson(res.data);
  }

  static Future<NewsModel> getDate5() async {
    Response res = await Dio().get(MyApiConstans.newsapi5);
    return NewsModel.fromJson(res.data);
  }
}
