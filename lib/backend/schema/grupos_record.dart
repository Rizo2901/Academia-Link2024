import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GruposRecord extends FirestoreRecord {
  GruposRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cantidadEstudiantes" field.
  int? _cantidadEstudiantes;
  int get cantidadEstudiantes => _cantidadEstudiantes ?? 0;
  bool hasCantidadEstudiantes() => _cantidadEstudiantes != null;

  // "horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  bool hasHorario() => _horario != null;

  // "estudiantes" field.
  List<DocumentReference>? _estudiantes;
  List<DocumentReference> get estudiantes => _estudiantes ?? const [];
  bool hasEstudiantes() => _estudiantes != null;

  // "seccion" field.
  String? _seccion;
  String get seccion => _seccion ?? '';
  bool hasSeccion() => _seccion != null;

  // "profesor" field.
  DocumentReference? _profesor;
  DocumentReference? get profesor => _profesor;
  bool hasProfesor() => _profesor != null;

  void _initializeFields() {
    _cantidadEstudiantes = castToType<int>(snapshotData['cantidadEstudiantes']);
    _horario = snapshotData['horario'] as String?;
    _estudiantes = getDataList(snapshotData['estudiantes']);
    _seccion = snapshotData['seccion'] as String?;
    _profesor = snapshotData['profesor'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('grupos');

  static Stream<GruposRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GruposRecord.fromSnapshot(s));

  static Future<GruposRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GruposRecord.fromSnapshot(s));

  static GruposRecord fromSnapshot(DocumentSnapshot snapshot) => GruposRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GruposRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GruposRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GruposRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GruposRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGruposRecordData({
  int? cantidadEstudiantes,
  String? horario,
  String? seccion,
  DocumentReference? profesor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cantidadEstudiantes': cantidadEstudiantes,
      'horario': horario,
      'seccion': seccion,
      'profesor': profesor,
    }.withoutNulls,
  );

  return firestoreData;
}

class GruposRecordDocumentEquality implements Equality<GruposRecord> {
  const GruposRecordDocumentEquality();

  @override
  bool equals(GruposRecord? e1, GruposRecord? e2) {
    const listEquality = ListEquality();
    return e1?.cantidadEstudiantes == e2?.cantidadEstudiantes &&
        e1?.horario == e2?.horario &&
        listEquality.equals(e1?.estudiantes, e2?.estudiantes) &&
        e1?.seccion == e2?.seccion &&
        e1?.profesor == e2?.profesor;
  }

  @override
  int hash(GruposRecord? e) => const ListEquality().hash([
        e?.cantidadEstudiantes,
        e?.horario,
        e?.estudiantes,
        e?.seccion,
        e?.profesor
      ]);

  @override
  bool isValidKey(Object? o) => o is GruposRecord;
}
