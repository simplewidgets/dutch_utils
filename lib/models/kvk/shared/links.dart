/// Link class for the KVK API
class Links {
  String? rel;
  String? href;
  String? hreflang;
  String? media;
  String? title;
  String? type;
  String? deprecation;
  String? profile;
  String? name;

  Links(
      {this.rel,
      this.href,
      this.hreflang,
      this.media,
      this.title,
      this.type,
      this.deprecation,
      this.profile,
      this.name});

  Links.fromJson(Map<String, dynamic> json) {
    rel = json['rel'];
    href = json['href'];
    hreflang = json['hreflang'];
    media = json['media'];
    title = json['title'];
    type = json['type'];
    deprecation = json['deprecation'];
    profile = json['profile'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rel'] = rel;
    data['href'] = href;
    data['hreflang'] = hreflang;
    data['media'] = media;
    data['title'] = title;
    data['type'] = type;
    data['deprecation'] = deprecation;
    data['profile'] = profile;
    data['name'] = name;
    return data;
  }
}
