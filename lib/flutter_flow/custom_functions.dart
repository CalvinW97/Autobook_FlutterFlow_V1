import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

/// Function to populate the service data structure for MOT template
ServiceDataStructStruct? getDefaultMOT() {
  // Function to populate my serviceDataStruct data type strucutre with default values
  return ServiceDataStructStruct(
    name: 'MOT',
    priceSmall: 10.0,
    priceMedium: 20.0,
    priceLarge: 30.0,
    isInstantBookable: true,
    description: '''MOT Description''',
    type: 'MOT',
    id: '',
  );
}

/// Function to populate the service data structure for Service template
ServiceDataStructStruct? getDefaultService() {
  // Function to populate my serviceDataStruct data type strucutre with default values
  return ServiceDataStructStruct(
    name: 'Full Service',
    priceSmall: 100.0,
    priceMedium: 200.0,
    priceLarge: 300.0,
    isInstantBookable: true,
    description: '''
Ideal for reassurance between annual service and for high mileage drivers. 
    
Includes:

- Engine and exhaust system inspection
- Oil and filter change
- Inspection and topping up of fluids''',
    type: 'Service',
  );
}

/// Function to populate the service data structure for Custom template
ServiceDataStructStruct? getDefaultCustom() {
  // Function to populate my serviceDataStruct data type strucutre with default values
  return ServiceDataStructStruct(
    name: 'Custom Service',
    priceSmall: 100.0,
    priceMedium: 200.0,
    priceLarge: 300.0,
    isInstantBookable: true,
    description: 'This is a default service description.',
    type: ' ',
  );
}
