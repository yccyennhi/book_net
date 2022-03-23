class DataProvider {
  static final DataProvider _singleton = DataProvider._internal();

  factory DataProvider() {
    return _singleton;
  }

  DataProvider._internal();

  // Future<List<String>> getProblemReportType() async {
  // final response = await ExampleRepository().getProblemReportType();

  // final result = (response.data["data"] as List)
  //     .map((e) => e["name"] as String)
  //     .toList();

  // return result;
  // }
}
