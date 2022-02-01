import 'package:http/http.dart';

void main() {
  Future<void> getData() async {
    Uri url = Uri.parse(
        'http://api.exchangeratesapi.io/v1/latest?access_key=892e88ea20621e1235f09c4a46adc578&format=1');
    Response result = await get(url);
    print(result.body);

    // old
    // Response result = await get('');
    // print(result.body);
  }

  getData();
}
