import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  Future<void> getData() async {
    try {
      Uri url = Uri.parse(
          'http://api.exchangeratesapi.io/v1/latest?access_key=892e88ea20621e1235f09c4a46adc578&format=1');
      http.Response result = await http.get(url);
      var body = jsonDecode(result.body);
      print(body['base']);
      double thb = body['rates']['THB'];
      print(thb);

      // old
      // Response result = await get('');
      // print(result.body);
    } catch (error) {
      print(error);
    }
  }

  getData();
}
