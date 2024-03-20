import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstudiantesRecord extends FirestoreRecord {
  EstudiantesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "eCedula" field.
  String? _eCedula;
  String get eCedula => _eCedula ?? '';
  bool hasECedula() => _eCedula != null;

  // "eNombre" field.
  String? _eNombre;
  String get eNombre => _eNombre ?? '';
  bool hasENombre() => _eNombre != null;

  // "eApellido1" field.
  String? _eApellido1;
  String get eApellido1 => _eApellido1 ?? '';
  bool hasEApellido1() => _eApellido1 != null;

  // "eApellido2" field.
  String? _eApellido2;
  String get eApellido2 => _eApellido2 ?? '';
  bool hasEApellido2() => _eApellido2 != null;

  // "eEdad" field.
  int? _eEdad;
  int get eEdad => _eEdad ?? 0;
  bool hasEEdad() => _eEdad != null;

  // "eCorreoElectronico" field.
  String? _eCorreoElectronico;
  String get eCorreoElectronico => _eCorreoElectronico ?? '';
  bool hasECorreoElectronico() => _eCorreoElectronico != null;

  // "eGrupo" field.
  String? _eGrupo;
  String get eGrupo => _eGrupo ?? '';
  bool hasEGrupo() => _eGrupo != null;

  // "eGrado" field.
  int? _eGrado;
  int get eGrado => _eGrado ?? 0;
  bool hasEGrado() => _eGrado != null;

  // "uImagenPerfil" field.
  String? _uImagenPerfil;
  String get uImagenPerfil => _uImagenPerfil ?? '';
  bool hasUImagenPerfil() => _uImagenPerfil != null;

  void _initializeFields() {
    _eCedula = snapshotData['eCedula'] as String?;
    _eNombre = snapshotData['eNombre'] as String?;
    _eApellido1 = snapshotData['eApellido1'] as String?;
    _eApellido2 = snapshotData['eApellido2'] as String?;
    _eEdad = castToType<int>(snapshotData['eEdad']);
    _eCorreoElectronico = snapshotData['eCorreoElectronico'] as String?;
    _eGrupo = snapshotData['eGrupo'] as String?;
    _eGrado = castToType<int>(snapshotData['eGrado']);
    _uImagenPerfil = snapshotData['uImagenPerfil'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('estudiantes');

  static Stream<EstudiantesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstudiantesRecord.fromSnapshot(s));

  static Future<EstudiantesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EstudiantesRecord.fromSnapshot(s));

  static EstudiantesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EstudiantesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstudiantesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstudiantesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EstudiantesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EstudiantesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEstudiantesRecordData({
  String? eCedula,
  String? eNombre,
  String? eApellido1,
  String? eApellido2,
  int? eEdad,
  String? eCorreoElectronico,
  String? eGrupo,
  int? eGrado,
  String? uImagenPerfil,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'eCedula': eCedula,
      'eNombre': eNombre,
      'eApellido1': eApellido1,
      'eApellido2': eApellido2,
      'eEdad': eEdad,
      'eCorreoElectronico': eCorreoElectronico,
      'eGrupo': eGrupo,
      'eGrado': eGrado,
      'uImagenPerfil': uImagenPerfil,
    }.withoutNulls,
  );

  return firestoreData;
}

class EstudiantesRecordDocumentEquality implements Equality<EstudiantesRecord> {
  const EstudiantesRecordDocumentEquality();

  @override
  bool equals(EstudiantesRecord? e1, EstudiantesRecord? e2) {
    return e1?.eCedula == e2?.eCedula &&
        e1?.eNombre == e2?.eNombre &&
        e1?.eApellido1 == e2?.eApellido1 &&
        e1?.eApellido2 == e2?.eApellido2 &&
        e1?.eEdad == e2?.eEdad &&
        e1?.eCorreoElectronico == e2?.eCorreoElectronico &&
        e1?.eGrupo == e2?.eGrupo &&
        e1?.eGrado == e2?.eGrado &&
        e1?.uImagenPerfil == e2?.uImagenPerfil;
  }

  @override
  int hash(EstudiantesRecord? e) => const ListEquality().hash([
        e?.eCedula,
        e?.eNombre,
        e?.eApellido1,
        e?.eApellido2,
        e?.eEdad,
        e?.eCorreoElectronico,
        e?.eGrupo,
        e?.eGrado,
        e?.uImagenPerfil
      ]);

  @override
  bool isValidKey(Object? o) => o is EstudiantesRecord;
}
