class PorductsSearchRequest {
  final String text;

  PorductsSearchRequest({required this.text});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'email': text};
  }
}
