import 'package:flutter_clean_arch_template/core/common_models/api_result_model.dart';
import 'package:flutter_clean_arch_template/modules/universities/domain/entities/university_entity.dart';

abstract class UniversitiesRepository {
  Future<ApiResultModel<List<UniversityEntity>>> getCountryUniversities(String country);
  Future<ApiResultModel<List<UniversityEntity>>> getCountryUniversitiesByName(String country, String name);
  Future<ApiResultModel<List<UniversityEntity>>> getUniversitiesByName(String name);
}
