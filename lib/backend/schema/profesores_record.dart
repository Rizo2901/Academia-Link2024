import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ProfesoresRecord extends FirestoreRecord {
  ProfesoresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "materias" field.
  List<String>? _materias;
  List<String> get materias => _materias ?? const [];
  bool hasMaterias() => _materias != null;

  // "gruposProfesor" field.
  List<DocumentReference>? _gruposProfesor;
  List<DocumentReference> get gruposProfesor => _gruposProfesor ?? const [];
  bool hasGruposProfesor() => _gruposProfesor != null;

  // "idProfesor" field.
  List<String>? _idProfesor;
  List<String> get idProfesor => _idProfesor ?? const [];
  bool hasIdProfesor() => _idProfesor != null;

  void _initializeFields() {
    _materias = getDataList(snapshotData['materias']);
    _gruposProfesor = getDataList(snapshotData['gruposProfesor']);
    _idProfesor = getDataList(snapshotData['idProfesor']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('profesores');

  static Stream<ProfesoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfesoresRecord.fromSnapshot(s));

  static Future<ProfesoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfesoresRecord.fromSnapshot(s));

  static ProfesoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfesoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfesoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfesoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfesoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfesoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfesoresRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class ProfesoresRecordDocumentEquality implements Equality<ProfesoresRecord> {
  const ProfesoresRecordDocumentEquality();

  @override
  bool equals(ProfesoresRecord? e1, ProfesoresRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.materias, e2?.materias) &&
        listEquality.equals(e1?.gruposProfesor, e2?.gruposProfesor) &&
        listEquality.equals(e1?.idProfesor, e2?.idProfesor);
  }

  @override
  int hash(ProfesoresRecord? e) => const ListEquality()
      .hash([e?.materias, e?.gruposProfesor, e?.idProfesor]);

  @override
  bool isValidKey(Object? o) => o is ProfesoresRecord;
}
