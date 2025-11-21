/**
 * Acronym Generator API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the Acronym Generator API.
 * API Documentation: https://docs.apiverve.com/ref/acronymgenerator
 */

const API_KEY = process.env.APIVERVE_API_KEY || 'YOUR_API_KEY_HERE';
const API_URL = 'https://api.apiverve.com/v1/acronymgenerator';

/**
 * Make a GET request to the Acronym Generator API
 */
async function callAcronymGeneratorAPI() {
  try {
    // Build query parameters
    const params = new URLSearchParams({
      // Add your parameters here
      // Example: param1: 'value1'
    });

    const url = `${API_URL}?${params}`;

    const response = await fetch(url, {
      method: 'GET',
      headers: {
        'x-api-key': API_KEY
      }
    });

    // Check if response is successful
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();

    // Check API response status
    if (data.status === 'ok') {
      console.log('✓ Success!');
      console.log('Response data:', data.data);
      return data.data;
    } else {
      console.error('✗ API Error:', data.error || 'Unknown error');
      return null;
    }

  } catch (error) {
    console.error('✗ Request failed:', error.message);
    return null;
  }
}

// Run the example
callAcronymGeneratorAPI()
  .then(result => {
    if (result) {
      console.log('\n📊 Final Result:');
      console.log(JSON.stringify(result, null, 2));
    }
  });
