import 'dart:convert';

import 'package:flutter_clean_arch_template/modules/universities/data/models/university_response_model.dart';
import 'package:flutter_clean_arch_template/modules/universities/domain/entities/university_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_assets/file_reader.dart';

void main() {
  final UniversityResponseModel tUniversityModel = UniversityResponseModel(
    alphaTwoCode: 'TN',
    domains: const <String>['disfm.rnu.tn'],
    webPages: const <String>['http://www.disfm.rnu.tn/'],
    country: 'Tunisia',
    name: 'Instituts Supérieurs de Formation des Maîtres',
  );

  test(
    'should be a subclass of NumberTrivia entity',
    () async {
      // assert
      expect(tUniversityModel, isA<UniversityEntity>());
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap = json.decode(await readFileFromAssets('university.json'));
        // act
        final UniversityResponseModel result = UniversityResponseModel.fromJson(jsonMap);
        // assert
        expect(result, tUniversityModel);
      },
    );
  });
}
