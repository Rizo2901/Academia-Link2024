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

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "correoProfesor" field.
  String? _correoProfesor;
  String get correoProfesor => _correoProfesor ?? '';
  bool hasCorreoProfesor() => _correoProfesor != null;

  // "fotoPerfil" field.
  String? _fotoPerfil;
  String get fotoPerfil => _fotoPerfil ?? '';
  bool hasFotoPerfil() => _fotoPerfil != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _materias = getDataList(snapshotData['materias']);
    _gruposProfesor = getDataList(snapshotData['gruposProfesor']);
    _idProfesor = getDataList(snapshotData['idProfesor']);
    _nombre = snapshotData['nombre'] as String?;
    _correoProfesor = snapshotData['correoProfesor'] as String?;
    _fotoPerfil = snapshotData['fotoPerfil'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
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

Map<String, dynamic> createProfesoresRecordData({
  String? nombre,
  String? correoProfesor,
  String? fotoPerfil,
  DocumentReference? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'correoProfesor': correoProfesor,
      'fotoPerfil': fotoPerfil,
      'usuario': usuario,
    }.withoutNulls,
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
        listEquality.equals(e1?.idProfesor, e2?.idProfesor) &&
        e1?.nombre == e2?.nombre &&
        e1?.correoProfesor == e2?.correoProfesor &&
        e1?.fotoPerfil == e2?.fotoPerfil &&
        e1?.usuario == e2?.usuario;
  }

  @override
  int hash(ProfesoresRecord? e) => const ListEquality().hash([
        e?.materias,
        e?.gruposProfesor,
        e?.idProfesor,
        e?.nombre,
        e?.correoProfesor,
        e?.fotoPerfil,
        e?.usuario
      ]);

  @override
  bool isValidKey(Object? o) => o is ProfesoresRecord;
}
