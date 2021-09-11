import 'records_mtl.dart';

class Records {
  Records({
    required this.tbl,
    required this.mtl,
  });

  RecordsMtl tbl;
  RecordsMtl mtl;

  factory Records.fromJson(Map<String, dynamic> json) => Records(
        tbl: RecordsMtl.fromJson(json["TBL"]),
        mtl: RecordsMtl.fromJson(json["MTL"]),
      );
}
