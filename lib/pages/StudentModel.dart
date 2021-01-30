class StudentModel {
  final String video1;
  final String video2;
  final String video3;

  StudentModel({this.video1, this.video2, this.video3});

  factory StudentModel.fromJson(final json) {
    return StudentModel(
        video1: json["video1"], video2: json["video2"], video3: json["video3"]);
  }
}
