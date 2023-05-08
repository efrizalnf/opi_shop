import 'dart:io';
import 'dart:convert';
import 'package:OpiShop/core.dart';
import 'package:OpiShop/utils/failure.dart';
import 'package:http/http.dart' as http;

class DashboardService {
  static Future<List<Product>> getProducts() async {
    Uri url = Uri.parse('https://dummyjson.com/products');
    try {
      var response = await http.get(url);
      List data = json.decode(response.body)['products'];
      return data.map((e) => Product.fromJson(e)).toList();
    } on SocketException catch (_) {
      throw Failure(
          message:
              'There is no internet connection.\n Please check your data.');
    } on HttpException catch (e) {
      throw Failure(message: 'Oopss!!!\n$e.message');
    }
  }
}

/*
https://firebasestorage.googleapis.com/v0/b/fir-flutter-codelab-5e038.appspot.com/o/shoes%2Fphoto-1543508282-6319a3e2621f.jpeg?alt=media&token=885e34fe-0962-42b6-90e3-d80ef2afebd0
https://firebasestorage.googleapis.com/v0/b/fir-flutter-codelab-5e038.appspot.com/o/shoes%2Fphoto-1547586877-0351a7143cbe.jpeg?alt=media&token=b295248e-0fb4-4675-9bbb-8742ecdd558d


*/

String baseImageUrl =
    'https://firebasestorage.googleapis.com/v0/b/fir-flutter-codelab-5e038.appspot.com/o/shoes%2F';
