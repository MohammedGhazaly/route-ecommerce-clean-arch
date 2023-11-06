class CategoryOrBrandMetaDataEntity {
  int? currentPage;
  int? numberOfPages;
  int? limit;

  CategoryOrBrandMetaDataEntity(
      {this.currentPage, this.numberOfPages, this.limit});

  CategoryOrBrandMetaDataEntity.fromJson(Map<String, dynamic> json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currentPage'] = this.currentPage;
    data['numberOfPages'] = this.numberOfPages;
    data['limit'] = this.limit;
    return data;
  }
}
