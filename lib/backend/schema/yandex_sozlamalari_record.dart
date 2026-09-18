import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class YandexSozlamalariRecord extends FirestoreRecord {
  YandexSozlamalariRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "merchant_id" field.
  String? _merchantId;
  String get merchantId => _merchantId ?? '';
  bool hasMerchantId() => _merchantId != null;

  void _initializeFields() {
    _merchantId = snapshotData['merchant_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('yandex_sozlamalari');

  static Stream<YandexSozlamalariRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => YandexSozlamalariRecord.fromSnapshot(s));

  static Future<YandexSozlamalariRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => YandexSozlamalariRecord.fromSnapshot(s));

  static YandexSozlamalariRecord fromSnapshot(DocumentSnapshot snapshot) =>
      YandexSozlamalariRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static YandexSozlamalariRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      YandexSozlamalariRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'YandexSozlamalariRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is YandexSozlamalariRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createYandexSozlamalariRecordData({
  String? merchantId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'merchant_id': merchantId,
    }.withoutNulls,
  );

  return firestoreData;
}

class YandexSozlamalariRecordDocumentEquality
    implements Equality<YandexSozlamalariRecord> {
  const YandexSozlamalariRecordDocumentEquality();

  @override
  bool equals(YandexSozlamalariRecord? e1, YandexSozlamalariRecord? e2) {
    return e1?.merchantId == e2?.merchantId;
  }

  @override
  int hash(YandexSozlamalariRecord? e) =>
      const ListEquality().hash([e?.merchantId]);

  @override
  bool isValidKey(Object? o) => o is YandexSozlamalariRecord;
}
