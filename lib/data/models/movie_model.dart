class MovieModel {
  int? rank;
  String? title;
  String? description;
  String? image;
  String? bigImage;
  List<String>? genre;
  String? thumbnail;
  String? rating;
  String? id;
  int? year;
  String? imdbid;
  String? imdbLink;

  MovieModel(
      {this.rank,
      this.title,
      this.description,
      this.image,
      this.bigImage,
      this.genre,
      this.thumbnail,
      this.rating,
      this.id,
      this.year,
      this.imdbid,
      this.imdbLink});

  MovieModel.fromJson(Map<String, dynamic> json) {
    rank = json['rank'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    bigImage = json['big_image'];
    genre = json['genre'].cast<String>();
    thumbnail = json['thumbnail'];
    rating = json['rating'];
    id = json['id'];
    year = json['year'];
    imdbid = json['imdbid'];
    imdbLink = json['imdb_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rank'] = rank;
    data['title'] = title;
    data['description'] = description;
    data['image'] = image;
    data['big_image'] = bigImage;
    data['genre'] = genre;
    data['thumbnail'] = thumbnail;
    data['rating'] = rating;
    data['id'] = id;
    data['year'] = year;
    data['imdbid'] = imdbid;
    data['imdb_link'] = imdbLink;
    return data;
  }
}
