// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Strucutre to store user data
class ProfileDataStructStruct extends BaseStruct {
  ProfileDataStructStruct({
    /// Users frist name
    String? firstName,

    /// Users last name
    String? lastName,

    /// Users email
    String? email,

    /// Users Role
    /// User
    /// Owner
    /// Pending
    /// Mechanic
    String? role,

    /// ID of the garage associated with user.
    ///
    /// This only applies to garage staff (owners & mechanics), column is empty
    /// for users
    String? garageID,
  })  : _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _role = role,
        _garageID = garageID;

  // "FirstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "LastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "Role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "Garage_ID" field.
  String? _garageID;
  String get garageID => _garageID ?? '';
  set garageID(String? val) => _garageID = val;

  bool hasGarageID() => _garageID != null;

  static ProfileDataStructStruct fromMap(Map<String, dynamic> data) =>
      ProfileDataStructStruct(
        firstName: data['FirstName'] as String?,
        lastName: data['LastName'] as String?,
        email: data['Email'] as String?,
        role: data['Role'] as String?,
        garageID: data['Garage_ID'] as String?,
      );

  static ProfileDataStructStruct? maybeFromMap(dynamic data) => data is Map
      ? ProfileDataStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'FirstName': _firstName,
        'LastName': _lastName,
        'Email': _email,
        'Role': _role,
        'Garage_ID': _garageID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'FirstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'LastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'Email': serializeParam(
          _email,
          ParamType.String,
        ),
        'Role': serializeParam(
          _role,
          ParamType.String,
        ),
        'Garage_ID': serializeParam(
          _garageID,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProfileDataStructStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProfileDataStructStruct(
        firstName: deserializeParam(
          data['FirstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['LastName'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['Email'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['Role'],
          ParamType.String,
          false,
        ),
        garageID: deserializeParam(
          data['Garage_ID'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProfileDataStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProfileDataStructStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        role == other.role &&
        garageID == other.garageID;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([firstName, lastName, email, role, garageID]);
}

ProfileDataStructStruct createProfileDataStructStruct({
  String? firstName,
  String? lastName,
  String? email,
  String? role,
  String? garageID,
}) =>
    ProfileDataStructStruct(
      firstName: firstName,
      lastName: lastName,
      email: email,
      role: role,
      garageID: garageID,
    );
