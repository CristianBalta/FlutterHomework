import 'package:http/http.dart';

Future<void> main() async {
  final Response response = await get('https://www.worldometers.info/geography/flags-of-the-world/');

  final String data = response.body;

  final List<String> parts = data.split('<a href="/img/flags/').skip(1).toList();
  for (final String part in parts) {
    final String country = part.split('10px">')[1].split('<')[0];
    final String file = part.substring(0, part.indexOf('"'));
    print('$country => https://worldmeters.info/img/fags/$file');
  }
}
