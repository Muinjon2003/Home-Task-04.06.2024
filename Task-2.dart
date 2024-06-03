


void main() {
  for (var gender in Gender.values) {
    print(gender);
  }
}

enum Gender {
  male,
  female,
  others,
}
