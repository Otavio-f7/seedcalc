class Area {
  final int id;
  final int lineSpacing; // in centimeters
  final int squareMeters;
  final int varietyId;

  Area({
    required this.id,
    required this.lineSpacing, 
    required this.squareMeters,
    required this.varietyId,
  });

  factory Area.fromJson(Map<String, dynamic> json){
    return Area(
      id: int.parse(json['id']), 
      lineSpacing: int.parse(json['lineSpacing']), 
      squareMeters: int.parse(json['squareMeters']),
      varietyId: int.parse(json['varietyId']),
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'id' : id,
      'lineSpacing' : lineSpacing,
      'squareMeters' : squareMeters,
      'varietyId' : varietyId,
    };
  }
}