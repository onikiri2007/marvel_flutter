class Criteria {
  String nameStartWith;
  int limit;
  int offset;

  Criteria({
    this.limit = 30,
    this.offset = 1,
    this.nameStartWith
  });

  Criteria.fromCriteria(Criteria criteria) {
     this.limit = criteria.limit;
     this.offset = criteria.offset;
     this.nameStartWith = criteria.nameStartWith;
  }
}