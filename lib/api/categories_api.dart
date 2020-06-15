import 'dart:html';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'api_util.dart';

class CategoriesApi{

  fetchAllCategories() async {

//    var _client = new HttpClient();
//    _client.badCertificateCallback = (X509Certificate CERT, String host, int port) => true;


    String allcategories = ApiUtil.MAIN_API_URL + ApiUtil.ALL_CATEGORIES;
    Map<String, String> headers = {
      'Accept' : 'application/json'
    };

    var response = await http.get (allcategories, headers: headers);

    print(response.statusCode);

    print(response.body);

//    var response =await _client.getUrl(Uri.parse(allcategories)).then((response){
//    print(response.headers);

    });


  }

}
