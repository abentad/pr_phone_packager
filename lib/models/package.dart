import 'dart:convert';

class Package {
  late String packageType;
  late String packagePrice;
  late String serviceGivenByPackage;
  late String serviceTimeOfPackage;
  Package({
    required this.packageType,
    required this.packagePrice,
    required this.serviceGivenByPackage,
    required this.serviceTimeOfPackage,
  });



  Map<String, dynamic> toMap(Package package) {
    return {
      'packageType': package.packageType,
      'packagePrice': package.packageType,
      'serviceGivenByPackage': package.packageType,
      'serviceTimeOfPackage': package.packageType,
    };
  }
  //   Map<String, dynamic> toMap() {
  //   return {
  //     'packageType': packageType.toMap(),
  //     'packagePrice': packagePrice.toMap(),
  //     'serviceGivenByPackage': serviceGivenByPackage.toMap(),
  //     'serviceTimeOfPackage': serviceTimeOfPackage.toMap(),
  //   };
  // }
  // factory Package.fromMap(Map<String, dynamic> map) {
  //   return Package(
  //     packageType: late String.fromMap(map['packageType']),
  //     packagePrice: late String.fromMap(map['packagePrice']),
  //     serviceGivenByPackage: late String.fromMap(map['serviceGivenByPackage']),
  //     serviceTimeOfPackage: late String.fromMap(map['serviceTimeOfPackage']),
  //   );
  // }

  factory Package.fromMap(Map<String, dynamic> map) {
    return Package(
      packageType: map['packageType'],
      packagePrice: map['packagePrice'],
      serviceGivenByPackage: map['serviceGivenByPackage'],
      serviceTimeOfPackage: map['serviceTimeOfPackage'],
    );
  }

  // String toJson() => json.encode(toMap());

  factory Package.fromJson(String source) => Package.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Package(packageType: $packageType, packagePrice: $packagePrice, serviceGivenByPackage: $serviceGivenByPackage, serviceTimeOfPackage: $serviceTimeOfPackage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Package &&
        other.packageType == packageType &&
        other.packagePrice == packagePrice &&
        other.serviceGivenByPackage == serviceGivenByPackage &&
        other.serviceTimeOfPackage == serviceTimeOfPackage;
  }

  @override
  int get hashCode {
    return packageType.hashCode ^ packagePrice.hashCode ^ serviceGivenByPackage.hashCode ^ serviceTimeOfPackage.hashCode;
  }
}
