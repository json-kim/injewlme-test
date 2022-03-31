import 'package:injewlme/data/data_source/fake/fake_diet_data_source.dart';
import 'package:injewlme/data/repository/diet_repository_impl.dart';
import 'package:injewlme/domain/usecase/get_diet_report_use_case.dart';
import 'package:injewlme/presentiation/report/report_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

Future<List<SingleChildWidget>> setProviders() async {
  // 데이터 소스
  final fakeDataSource = FakeDietDataSource();

  // 레포지토리
  final dietRepository = DietRepositoryImpl(fakeDataSource);

  // 유스케이스
  final List<SingleChildWidget> useCases = [
    Provider(create: (context) => GetDietReportUseCase(dietRepository)),
  ];

  // 뷰모델
  final List<SingleChildWidget> viewModels = [
    Provider(
      create: (context) => ReportViewModel(
        context.read<GetDietReportUseCase>(),
      ),
    ),
  ];

  return [
    ...useCases,
    ...viewModels,
  ];
}
