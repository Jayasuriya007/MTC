class BusRouteModel {
  final String source;
  final String destination;
  final String eta;
  final String routeId;
  final String category;
  final String crowdLevel;

  BusRouteModel({
    required this.source,
    required this.destination,
    required this.eta,
    required this.routeId,
    required this.category,
    required this.crowdLevel,
  });

  // Create a factory method to convert the document snapshot to the model
  factory BusRouteModel.fromMap(Map<String, dynamic> map) {
    return BusRouteModel(
      source: map['source'] ?? '',
      destination: map['destination'] ?? '',
      eta: map['ETA'] ?? '',
      routeId: map['routeId'] ?? '',
      category: map['category'] ?? '',
      crowdLevel: map['crowdLevel'] ?? '', // Add crowdLevel property
    );
  }

  // Optionally, add a method to convert the model to a map
  Map<String, dynamic> toMap() {
    return {
      'source': source,
      'destination': destination,
      'ETA': eta,
      'routeId': routeId,
      'category': category,
      'crowdLevel': crowdLevel, // Include crowdLevel in the map
    };
  }
}
