import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstudianteRecord extends FirestoreRecord {
  EstudianteRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "grado" field.
  int? _grado;
  int get grado => _grado ?? 0;
  bool hasGrado() => _grado != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  // "cedula" field.
  String? _cedula;
  String get cedula => _cedula ?? '';
  bool hasCedula() => _cedula != null;

  // "correoElectronico" field.
  String? _correoElectronico;
  String get correoElectronico => _correoElectronico ?? '';
  bool hasCorreoElectronico() => _correoElectronico != null;

  // "idEstudiante" field.
  String? _idEstudiante;
  String get idEstudiante => _idEstudiante ?? '';
  bool hasIdEstudiante() => _idEstudiante != null;

  void _initializeFields() {
    _grado = castToType<int>(snapshotData['grado']);
    _nombre = snapshotData['nombre'] as String?;
    _edad = castToType<int>(snapshotData['edad']);
    _cedula = snapshotData['cedula'] as String?;
    _correoElectronico = snapshotData['correoElectronico'] as String?;
    _idEstudiante = snapshotData['idEstudiante'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('estudiante');

  static Stream<EstudianteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstudianteRecord.fromSnapshot(s));

  static Future<EstudianteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EstudianteRecord.fromSnapshot(s));

  static EstudianteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EstudianteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstudianteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstudianteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EstudianteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EstudianteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEstudianteRecordData({
  int? grado,
  String? nombre,
  int? edad,
  String? cedula,
  String? correoElectronico,
  String? idEstudiante,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'grado': grado,
      'nombre': nombre,
      'edad': edad,
      'cedula': cedula,
      'correoElectronico': correoElectronico,
      'idEstudiante': idEstudiante,
    }.withoutNulls,
  );

  return firestoreData;
}

class EstudianteRecordDocumentEquality implements Equality<EstudianteRecord> {
  const EstudianteRecordDocumentEquality();

  @override
  bool equals(EstudianteRecord? e1, EstudianteRecord? e2) {
    return e1?.grado == e2?.grado &&
        e1?.nombre == e2?.nombre &&
        e1?.edad == e2?.edad &&
        e1?.cedula == e2?.cedula &&
        e1?.correoElectronico == e2?.correoElectronico &&
        e1?.idEstudiante == e2?.idEstudiante;
  }

  @override
  int hash(EstudianteRecord? e) => const ListEquality().hash([
        e?.grado,
        e?.nombre,
        e?.edad,
        e?.cedula,
        e?.correoElectronico,
        e?.idEstudiante
      ]);

  @override
  bool isValidKey(Object? o) => o is EstudianteRecord;
}
