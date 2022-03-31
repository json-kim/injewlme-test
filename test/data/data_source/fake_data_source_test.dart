import 'package:flutter_test/flutter_test.dart';
import 'package:injewlme/data/data_source/fake/fake_diet_data_source.dart';
import 'package:logger/logger.dart';

void main() {
  test('fake data source test', () async {
    final logger = Logger();
    final fakeDataSource = FakeDietDataSource();
    final date = DateTime.now();

    final diet =
        await fakeDataSource.requestDailyDiet(date.year, date.month, date.day);

    logger.i(diet);
  });
}
