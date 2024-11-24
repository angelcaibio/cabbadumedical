import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultRecord extends FirestoreRecord {
  ResultRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "request" field.
  DocumentReference? _request;
  DocumentReference? get request => _request;
  bool hasRequest() => _request != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "assessment" field.
  String? _assessment;
  String get assessment => _assessment ?? '';
  bool hasAssessment() => _assessment != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "files" field.
  List<String>? _files;
  List<String> get files => _files ?? const [];
  bool hasFiles() => _files != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _request = snapshotData['request'] as DocumentReference?;
    _note = snapshotData['note'] as String?;
    _assessment = snapshotData['assessment'] as String?;
    _images = getDataList(snapshotData['images']);
    _files = getDataList(snapshotData['files']);
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('result');

  static Stream<ResultRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResultRecord.fromSnapshot(s));

  static Future<ResultRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResultRecord.fromSnapshot(s));

  static ResultRecord fromSnapshot(DocumentSnapshot snapshot) => ResultRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResultRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResultRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResultRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResultRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResultRecordData({
  DocumentReference? request,
  String? note,
  String? assessment,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'request': request,
      'note': note,
      'assessment': assessment,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResultRecordDocumentEquality implements Equality<ResultRecord> {
  const ResultRecordDocumentEquality();

  @override
  bool equals(ResultRecord? e1, ResultRecord? e2) {
    const listEquality = ListEquality();
    return e1?.request == e2?.request &&
        e1?.note == e2?.note &&
        e1?.assessment == e2?.assessment &&
        listEquality.equals(e1?.images, e2?.images) &&
        listEquality.equals(e1?.files, e2?.files) &&
        e1?.date == e2?.date;
  }

  @override
  int hash(ResultRecord? e) => const ListEquality()
      .hash([e?.request, e?.note, e?.assessment, e?.images, e?.files, e?.date]);

  @override
  bool isValidKey(Object? o) => o is ResultRecord;
}
