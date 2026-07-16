# Acronym Generator API - PHP Package

Acronym Generator creates acronyms from phrases by extracting the first letter of each word. Input 'Application Programming Interface' and get 'API'.

## Installation

Install via Composer:

```bash
composer require apiverve/acronymgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Acronymgenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['text' => 'Application Programming Interface']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Acronymgenerator\Client;
use APIVerve\Acronymgenerator\Exceptions\APIException;
use APIVerve\Acronymgenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'Application Programming Interface']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "text": "Application Programming Interface",
    "acronyms": [
      "API",
      "APP IN",
      "Accessing Program's Interface"
    ]
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/acronymgenerator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/acronymgenerator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/acronymgenerator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
