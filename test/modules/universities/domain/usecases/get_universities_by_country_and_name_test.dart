import 'package:flutter_clean_arch_template/core/common_models/api_result_model.dart';
import 'package:flutter_clean_arch_template/modules/universities/domain/entities/university_entity.dart';
import 'package:flutter_clean_arch_template/modules/universities/domain/repository/universities_repository.dart';
import 'package:flutter_clean_arch_template/modules/universities/domain/usecases/get_universities_by_country_and_name.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_universities_by_country_and_name_test.mocks.dart';

@GenerateMocks(<Type>[UniversitiesRepository])
void main() {
  late GetUniversityByCountryAndName _useCase;
  late MockUniversitiesRepository mockUniversitiesRepository;

  setUp(() async {
    mockUniversitiesRepository = MockUniversitiesRepository();
    _useCase = GetUniversityByCountryAndName(mockUniversitiesRepository);
  });

  const String name = 'middle';
  const String country = 'Tunisia';
  final List<UniversityEntity> tResult = <UniversityEntity>[
    const UniversityEntity(domains: <String>[], webPages: <String>[], name: 'EPI', country: 'Tunisia'),
  ];
  test('Given when user types a name and success will be returned', () async {
    when(mockUniversitiesRepository.getCountryUniversitiesByName(country, name))
        .thenAnswer((_) async => ApiResultModel<List<UniversityEntity>>.success(data: tResult));
    final ApiResultModel<List<UniversityEntity>> _result =
        await _useCase(GetUniversityByCountryAndNameParams(country, name));
    List<UniversityEntity> _universitiesResult = <UniversityEntity>[];
    _result.maybeWhen(
        orElse: () {},
        success: (List<UniversityEntity> list) {
          _universitiesResult = list;
        });
    expect(_universitiesResult, tResult);
    verify(mockUniversitiesRepository.getCountryUniversitiesByName(country, name));
    verifyNoMoreInteractions(mockUniversitiesRepository);
  });
}
