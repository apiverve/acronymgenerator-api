# Acronym Generator API

> Acronym Generator is an AI-powered tool for creating creative acronyms from text. It returns 3 unique acronym suggestions for any given phrase.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/acronymgenerator)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.AcronymGenerator)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-acronymgenerator/)

---

## Quick Start

### Using Plain JavaScript (Browser/HTML)

```html
<!DOCTYPE html>
<html>
<head>
    <title>Acronym Generator API Example</title>
</head>
<body>
    <h1>Acronym Generator API Test</h1>
    <button onclick="callAPI()">Call API</button>
    <pre id="result"></pre>

    <script>
        async function callAPI() {
            try {
                const response = await fetch('https://api.apiverve.com/v1/acronymgenerator?param=value', {
                    method: 'GET',
                    headers: {
                        'x-api-key': 'YOUR_API_KEY_HERE'
                    }
                });

                const data = await response.json();
                document.getElementById('result').textContent = JSON.stringify(data, null, 2);
            } catch (error) {
                console.error('Error:', error);
                document.getElementById('result').textContent = 'Error: ' + error.message;
            }
        }
    </script>
</body>
</html>
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/acronymgenerator?param=value" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/acronymgenerator
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/acronymgenerator) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.AcronymGenerator
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.AcronymGenerator) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-acronymgenerator
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-acronymgenerator/) | [**Package Code →**](./python/)

---

## Features

✅ **Multi-platform support** - Use the same API across Node.js, .NET, Python, and browsers
✅ **Simple authentication** - Just add your API key in the request header
✅ **Comprehensive documentation** - Full examples and API reference available
✅ **Production-ready** - Used by developers worldwide

---

## Documentation

📚 **Full API Documentation:** [https://docs.apiverve.com/ref/acronymgenerator](https://docs.apiverve.com/ref/acronymgenerator)

---

## Use Cases

Common use cases for the Acronym Generator API:

- ✅ Integration into web applications
- ✅ Mobile app development
- ✅ Data analysis and reporting
- ✅ Automation workflows
- ✅ Microservices architecture

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Rate Limits
- **Free tier**: 100 requests/day
- **Basic**: 10,000 requests/month
- **Pro**: 100,000 requests/month
- **Enterprise**: Custom limits

[View pricing →](https://apiverve.com/pricing)

### Response Format
All responses are JSON with this structure:
```json
{
  "status": "ok",
  "data": { ... },
  "request_id": "..."
}
```

---

## Support & Community

- 📧 **Email**: support@apiverve.com
- 💬 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2025 APIVerve. All rights reserved.
