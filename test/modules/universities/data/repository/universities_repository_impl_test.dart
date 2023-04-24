import 'package:flutter_clean_arch_template/core/utils/connectivity/network_info.dart';
import 'package:flutter_clean_arch_template/modules/universities/data/data_sources/universities_remote_data_source.dart';
import 'package:flutter_clean_arch_template/modules/universities/data/repository/universities_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'universities_repository_impl_test.mocks.dart';

@GenerateMocks(<Type>[NetworkInfo, UniversitiesRemoteDataSource])
void main() {
  late UniversitiesRepositoryImpl repository;
  late MockUniversitiesRemoteDataSource mockRemoteDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockUniversitiesRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = UniversitiesRepositoryImpl(
      mockRemoteDataSource,
      mockNetworkInfo,
    );
  });
}
