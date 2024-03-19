import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AnunciosRecord extends FirestoreRecord {
  AnunciosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  void _initializeFields() {
    _descripcion = snapshotData['descripcion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anuncios');

  static Stream<AnunciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnunciosRecord.fromSnapshot(s));

  static Future<AnunciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnunciosRecord.fromSnapshot(s));

  static AnunciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnunciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnunciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnunciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnunciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnunciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnunciosRecordData({
  String? descripcion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descripcion': descripcion,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnunciosRecordDocumentEquality implements Equality<AnunciosRecord> {
  const AnunciosRecordDocumentEquality();

  @override
  bool equals(AnunciosRecord? e1, AnunciosRecord? e2) {
    return e1?.descripcion == e2?.descripcion;
  }

  @override
  int hash(AnunciosRecord? e) => const ListEquality().hash([e?.descripcion]);

  @override
  bool isValidKey(Object? o) => o is AnunciosRecord;
}
