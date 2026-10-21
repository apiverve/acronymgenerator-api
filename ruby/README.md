# Acronym Generator API - Ruby Gem

Acronym Generator creates acronyms from phrases by extracting the first letter of each word. Input 'Application Programming Interface' and get 'API'.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_acronymgenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_acronymgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_acronymgenerator'

# Initialize the client
client = APIVerve::Acronymgenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ text: "Application Programming Interface" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "Application Programming Interface" })
  puts response["data"]
rescue APIVerve::Acronymgenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Acronymgenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Acronymgenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/acronymgenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/acronymgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/acronymgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
