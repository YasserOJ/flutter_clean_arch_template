import 'package:flutter_clean_arch_template/modules/universities/data/data_sources/universities_remote_data_source.dart';
import 'package:flutter_clean_arch_template/modules/universities/data/models/university_response_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UniversitiesRemoteDataSource)
class UniversitiesRemoteDataSourceImpl implements UniversitiesRemoteDataSource {
  @override
  Future<List<UniversityResponseModel>> getUniversitiesByCountry(String country) {
    // TODO: implement getUniversitiesByCountry
    throw UnimplementedError();
  }

  @override
  Future<List<UniversityResponseModel>> getUniversitiesByCountryAndName(String country, String name) {
    // TODO: implement getUniversitiesByCountryAndName
    throw UnimplementedError();
  }

  @override
  Future<List<UniversityResponseModel>> getUniversitiesByName(String name) {
    // TODO: implement getUniversitiesByName
    throw UnimplementedError();
  }
}
