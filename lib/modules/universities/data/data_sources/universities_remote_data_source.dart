import 'package:flutter_clean_arch_template/modules/universities/data/models/university_response_model.dart';

abstract class UniversitiesRemoteDataSource {
  Future<List<UniversityResponseModel>> getUniversitiesByName(String name);
  Future<List<UniversityResponseModel>> getUniversitiesByCountry(String country);
  Future<List<UniversityResponseModel>> getUniversitiesByCountryAndName(String country, String name);
}
