class Status {
  Status({
    required this.state,
  });

  String state;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        state: json["state"],
      );
}
