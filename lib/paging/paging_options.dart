class PagingOptions {
  static const int offset = 1;

  static const int shimmerPlaceHolderSize = 6;

  static const int moreDataTimeout = 2;

  static const int pagingSizeSmall = 10;

  static const int pagingSize = 20;

  static const int pagingSizeMd = 30;

  static const int pagingSizeLg = 40;

  static int nextPage(int? currentPage) {
    return (currentPage ?? PagingOptions.offset) + 1;
  }
}
