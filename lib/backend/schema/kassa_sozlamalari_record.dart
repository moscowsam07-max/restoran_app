import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KassaSozlamalariRecord extends FirestoreRecord {
  KassaSozlamalariRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "api_url" field.
  String? _apiUrl;
  String get apiUrl => _apiUrl ?? '';
  bool hasApiUrl() => _apiUrl != null;

  // "kassa_user" field.
  String? _kassaUser;
  String get kassaUser => _kassaUser ?? '';
  bool hasKassaUser() => _kassaUser != null;

  void _initializeFields() {
    _apiUrl = snapshotData['api_url'] as String?;
    _kassaUser = snapshotData['kassa_user'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('kassa_sozlamalari');

  static Stream<KassaSozlamalariRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => KassaSozlamalariRecord.fromSnapshot(s));

  static Future<KassaSozlamalariRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => KassaSozlamalariRecord.fromSnapshot(s));

  static KassaSozlamalariRecord fromSnapshot(DocumentSnapshot snapshot) =>
      KassaSozlamalariRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static KassaSozlamalariRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      KassaSozlamalariRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'KassaSozlamalariRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is KassaSozlamalariRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createKassaSozlamalariRecordData({
  String? apiUrl,
  String? kassaUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'api_url': apiUrl,
      'kassa_user': kassaUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class KassaSozlamalariRecordDocumentEquality
    implements Equality<KassaSozlamalariRecord> {
  const KassaSozlamalariRecordDocumentEquality();

  @override
  bool equals(KassaSozlamalariRecord? e1, KassaSozlamalariRecord? e2) {
    return e1?.apiUrl == e2?.apiUrl && e1?.kassaUser == e2?.kassaUser;
  }

  @override
  int hash(KassaSozlamalariRecord? e) =>
      const ListEquality().hash([e?.apiUrl, e?.kassaUser]);

  @override
  bool isValidKey(Object? o) => o is KassaSozlamalariRecord;
}
