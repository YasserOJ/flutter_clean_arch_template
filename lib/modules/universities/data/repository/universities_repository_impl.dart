import 'package:flutter_clean_arch_template/core/common_models/api_result_model.dart';
import 'package:flutter_clean_arch_template/core/utils/connectivity/network_info.dart';
import 'package:flutter_clean_arch_template/modules/universities/data/data_sources/universities_remote_data_source.dart';
import 'package:flutter_clean_arch_template/modules/universities/domain/entities/university_entity.dart';
import 'package:flutter_clean_arch_template/modules/universities/domain/repository/universities_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UniversitiesRepository)
class UniversitiesRepositoryImpl implements UniversitiesRepository {
  UniversitiesRepositoryImpl(this.universitiesRemoteDataSource, this.networkInfo);

  final UniversitiesRemoteDataSource universitiesRemoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<ApiResultModel<List<UniversityEntity>>> getCountryUniversities(String country) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResultModel<List<UniversityEntity>>> getCountryUniversitiesByName(String country, String name) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResultModel<List<UniversityEntity>>> getUniversitiesByName(String name) {
    throw UnimplementedError();
  }
}
