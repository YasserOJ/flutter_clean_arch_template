import 'package:flutter_clean_arch_template/core/common_models/api_result_model.dart';
import 'package:flutter_clean_arch_template/core/usecase/generic_usecase.dart';
import 'package:flutter_clean_arch_template/modules/universities/domain/entities/university_entity.dart';
import 'package:flutter_clean_arch_template/modules/universities/domain/repository/universities_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUniversityByName implements GenericUseCase<List<UniversityEntity>, String> {
  GetUniversityByName(this.universitiesRepository);

  final UniversitiesRepository universitiesRepository;

  @override
  Future<ApiResultModel<List<UniversityEntity>>> call(String name) {
    return universitiesRepository.getUniversitiesByName(name);
  }
}
