import 'package:flutter_test/flutter_test.dart';
import 'package:injewlme/data/data_source/fake/fake_diet_data_source.dart';
import 'package:logger/logger.dart';

void main() {
  test('fake data source test', () async {
    final logger = Logger();
    final fakeDataSource = FakeDietDataSource();

    final diet = await fakeDataSource.requestDailyDiet(DateTime.now());

    logger.i(diet);
  });
}
