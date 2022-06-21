import 'package:equatable/equatable.dart';

class UniversityEntity extends Equatable {
  const UniversityEntity({
    required this.domains,
    required this.webPages,
    required this.name,
    required this.country,
  });

  final List<String> domains;
  final List<String> webPages;
  final String name;
  final String country;

  @override
  List<Object?> get props => <Object>[
        name,
        domains,
        country,
        webPages,
      ];
}
