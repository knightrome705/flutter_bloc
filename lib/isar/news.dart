import 'package:isar/isar.dart';
part 'news.g.dart';

@Collection()
class News{
  Id id = Isar.autoIncrement ;
  late String title;
  // late String description;
}