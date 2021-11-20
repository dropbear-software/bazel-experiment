import 'package:dart_grpc_server/dart_grpc_server.dart';

class HelperMethods {
  Category getCategoryFromMap(Map category) {
    var _idTag = 1;
    var _nameTag = 2;
    var _id = category['id'];
    String _name = category['name'];
    return Category.fromJson('{"$_idTag": $_id, "$_nameTag": "$_name" }');
  }

  Item getItemFromMap(Map item) {
    var _idTag = 1;
    var _nameTag = 2;
    var _categoryIdTag = 3;

    var _id = item['id'];
    String _name = item['name'];
    var _categoryId = item['categoryId'];

    return Item.fromJson(
        '{ "$_idTag": $_id, "$_nameTag": "$_name", "$_categoryIdTag": $_categoryId }');
  }
}

final helper = HelperMethods();
