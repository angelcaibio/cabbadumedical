import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestRecord extends FirestoreRecord {
  RequestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "consutation" field.
  DocumentReference? _consutation;
  DocumentReference? get consutation => _consutation;
  bool hasConsutation() => _consutation != null;

  // "doctor" field.
  DocumentReference? _doctor;
  DocumentReference? get doctor => _doctor;
  bool hasDoctor() => _doctor != null;

  // "patient" field.
  DocumentReference? _patient;
  DocumentReference? get patient => _patient;
  bool hasPatient() => _patient != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "results" field.
  DocumentReference? _results;
  DocumentReference? get results => _results;
  bool hasResults() => _results != null;

  // "schedule" field.
  DocumentReference? _schedule;
  DocumentReference? get schedule => _schedule;
  bool hasSchedule() => _schedule != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "laboratory" field.
  DocumentReference? _laboratory;
  DocumentReference? get laboratory => _laboratory;
  bool hasLaboratory() => _laboratory != null;

  void _initializeFields() {
    _consutation = snapshotData['consutation'] as DocumentReference?;
    _doctor = snapshotData['doctor'] as DocumentReference?;
    _patient = snapshotData['patient'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _type = snapshotData['type'] as String?;
    _status = snapshotData['status'] as String?;
    _results = snapshotData['results'] as DocumentReference?;
    _schedule = snapshotData['schedule'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _laboratory = snapshotData['laboratory'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('request');

  static Stream<RequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestRecord.fromSnapshot(s));

  static Future<RequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestRecord.fromSnapshot(s));

  static RequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestRecordData({
  DocumentReference? consutation,
  DocumentReference? doctor,
  DocumentReference? patient,
  DateTime? date,
  String? type,
  String? status,
  DocumentReference? results,
  DocumentReference? schedule,
  String? name,
  DocumentReference? laboratory,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'consutation': consutation,
      'doctor': doctor,
      'patient': patient,
      'date': date,
      'type': type,
      'status': status,
      'results': results,
      'schedule': schedule,
      'name': name,
      'laboratory': laboratory,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestRecordDocumentEquality implements Equality<RequestRecord> {
  const RequestRecordDocumentEquality();

  @override
  bool equals(RequestRecord? e1, RequestRecord? e2) {
    return e1?.consutation == e2?.consutation &&
        e1?.doctor == e2?.doctor &&
        e1?.patient == e2?.patient &&
        e1?.date == e2?.date &&
        e1?.type == e2?.type &&
        e1?.status == e2?.status &&
        e1?.results == e2?.results &&
        e1?.schedule == e2?.schedule &&
        e1?.name == e2?.name &&
        e1?.laboratory == e2?.laboratory;
  }

  @override
  int hash(RequestRecord? e) => const ListEquality().hash([
        e?.consutation,
        e?.doctor,
        e?.patient,
        e?.date,
        e?.type,
        e?.status,
        e?.results,
        e?.schedule,
        e?.name,
        e?.laboratory
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestRecord;
}
