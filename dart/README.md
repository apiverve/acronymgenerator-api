# Acronym Generator API - Dart/Flutter Client

Acronym Generator is an AI-powered tool for creating creative acronyms from text. It returns 3 unique acronym suggestions for any given phrase.

[![pub package](https://img.shields.io/pub/v/apiverve_acronymgenerator.svg)](https://pub.dev/packages/apiverve_acronymgenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Acronym Generator API](https://apiverve.com/marketplace/acronymgenerator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_acronymgenerator: ^1.1.13
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_acronymgenerator/apiverve_acronymgenerator.dart';

void main() async {
  final client = AcronymgeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'Application Programming Interface'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "text": "Application Programming Interface",
    "acronyms": [
      "API",
      "Application's Programming Interface",
      "Awesome Programming Interface"
    ]
  }
}
```

## API Reference

- **API Home:** [Acronym Generator API](https://apiverve.com/marketplace/acronymgenerator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/acronymgenerator](https://docs.apiverve.com/ref/acronymgenerator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
