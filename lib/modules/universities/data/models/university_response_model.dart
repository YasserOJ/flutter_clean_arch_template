import 'package:flutter_clean_arch_template/modules/universities/domain/entities/university_entity.dart';

class UniversityResponseModel extends UniversityEntity {
  UniversityResponseModel({
    this.stateProvince,
    this.alphaTwoCode,
    String? country,
    String? name,
    List<String>? domains,
    List<String>? webPages,
  }) : super(
          country: country ?? '',
          name: name ?? '',
          domains: domains ?? <String>[],
          webPages: webPages ?? <String>[],
        );

  factory UniversityResponseModel.fromJson(Map<String, dynamic> json) {
    return UniversityResponseModel(
      stateProvince: json['state-province'],
      alphaTwoCode: json['alpha_two_code'],
      domains: json['domains'] != null ? json['domains'].cast<String>() : <String>[],
      name: json['name'],
      webPages: json['web_pages'] != null ? json['web_pages'].cast<String>() : <String>[],
      country: json['country'],
    );
  }

  final String? stateProvince;
  final String? alphaTwoCode;
}
