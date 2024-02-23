import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:untitled7/isar/news.dart';

class NewsDatabase extends ChangeNotifier{
  static late Isar isar;

  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([NewsSchema], directory: dir.path);
  }

  final List<News> currentNews = [];

  Future<void> addNews(String textFromUser) async {
    final newNews = News()..title = textFromUser;
    await isar.writeTxn(() => isar.news.put(newNews));
    fetchNews();
  }

  Future<void> fetchNews() async {
    List<News> fetchedNews = await isar.news.where().findAll();
    currentNews.clear();
    currentNews.addAll(fetchedNews);
  }

  Future<void> deleteNews(int id) async {
    await isar.writeTxn(() => isar.news.delete(id));
    await fetchNews();
  }
}
