import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorAffiliateRecord extends FirestoreRecord {
  DoctorAffiliateRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "doctor" field.
  DocumentReference? _doctor;
  DocumentReference? get doctor => _doctor;
  bool hasDoctor() => _doctor != null;

  // "hospital" field.
  List<String>? _hospital;
  List<String> get hospital => _hospital ?? const [];
  bool hasHospital() => _hospital != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  void _initializeFields() {
    _doctor = snapshotData['doctor'] as DocumentReference?;
    _hospital = getDataList(snapshotData['hospital']);
    _city = snapshotData['city'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('doctor_affiliate');

  static Stream<DoctorAffiliateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoctorAffiliateRecord.fromSnapshot(s));

  static Future<DoctorAffiliateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoctorAffiliateRecord.fromSnapshot(s));

  static DoctorAffiliateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DoctorAffiliateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoctorAffiliateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoctorAffiliateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoctorAffiliateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoctorAffiliateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoctorAffiliateRecordData({
  DocumentReference? doctor,
  String? city,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doctor': doctor,
      'city': city,
    }.withoutNulls,
  );

  return firestoreData;
}

class DoctorAffiliateRecordDocumentEquality
    implements Equality<DoctorAffiliateRecord> {
  const DoctorAffiliateRecordDocumentEquality();

  @override
  bool equals(DoctorAffiliateRecord? e1, DoctorAffiliateRecord? e2) {
    const listEquality = ListEquality();
    return e1?.doctor == e2?.doctor &&
        listEquality.equals(e1?.hospital, e2?.hospital) &&
        e1?.city == e2?.city;
  }

  @override
  int hash(DoctorAffiliateRecord? e) =>
      const ListEquality().hash([e?.doctor, e?.hospital, e?.city]);

  @override
  bool isValidKey(Object? o) => o is DoctorAffiliateRecord;
}
