String? validateEmail(String value) {
  if (value.isEmpty) {
    return 'Email is required';
  }
  if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
      .hasMatch(value)) {
    return 'Enter a valid email address';
  }
  return null;
}

String? validatePhoneNumber(String value) {
  if (value.isEmpty) {
    return 'Phone number is required';
  }
  if (!RegExp(r'^\d{10}$').hasMatch(value)) {
    return 'Enter a valid 10-digit phone number';
  }
  return null;
}

String? validateString({required String value, required String fieldName}) {
  if (value.isEmpty) {
    return '$fieldName is required';
  }
  return null;
}

String? validatePincode(String value) {
  if (value.isEmpty) {
    return 'Pin code is required';
  }
  if (!RegExp(r'^\d{4}$').hasMatch(value)) {
    return 'Enter a valid 4-digit pin code';
  }
  return null;
}

String? isCreditCardValid(String input) {
  // Remove any spaces or non-numeric characters
  String cleanedInput = input.replaceAll(RegExp(r'[^0-9]'), '');

  // Check if the length of the cleaned input is between 13 and 19
  if (cleanedInput.length < 13 || cleanedInput.length > 19) {
    return 'Enter A Valid Card Number';
  }

  return null;
}
