import Foundation

/// Main API client for Acronym Generator
public class AcronymGeneratorAPIClient {
    private let apiKey: String
    private let baseURL: String
    private let session: URLSession

    /// Initialize the API client
    /// - Parameter apiKey: Your APIVerve API key from https://apiverve.com
    public init(apiKey: String) {
        guard !apiKey.isEmpty else {
            fatalError("API key must be provided. Get your API key at: https://apiverve.com")
        }

        // Validate API key format (alphanumeric with hyphens)
        let apiKeyPattern = "^[a-zA-Z0-9-]+$"
        guard apiKey.range(of: apiKeyPattern, options: .regularExpression) != nil else {
            fatalError("Invalid API key format. API key must be alphanumeric and may contain hyphens")
        }

        // Check minimum length (GUIDs are typically 36 chars with hyphens, or 32 without)
        let trimmedKey = apiKey.replacingOccurrences(of: "-", with: "")
        guard trimmedKey.count >= 32 else {
            fatalError("Invalid API key. API key appears to be too short")
        }

        self.apiKey = apiKey
        self.baseURL = "https://api.apiverve.com/v1/acronymgenerator"

        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 30
        config.timeoutIntervalForResource = 300
        self.session = URLSession(configuration: config)
    }

    /// Execute the API request
    /// - Parameters:
    ///   - parameters: Query parameters or request body
    ///   - completion: Completion handler with Result type
    public func execute(parameters: [String: Any]? = nil, completion: @escaping (Result<APIResponse, AcronymGeneratorAPIError>) -> Void) {
        executeGet(parameters: parameters, completion: completion)
    }

    private func executeGet(parameters: [String: Any]?, completion: @escaping (Result<APIResponse, AcronymGeneratorAPIError>) -> Void) {
        var urlComponents = URLComponents(string: baseURL)

        if let parameters = parameters, !parameters.isEmpty {
            urlComponents?.queryItems = parameters.map { key, value in
                URLQueryItem(name: key, value: "\(value)")
            }
        }

        guard let url = urlComponents?.url else {
            completion(.failure(AcronymGeneratorAPIError.invalidURL))
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue(apiKey, forHTTPHeaderField: "x-api-key")
        request.setValue("cocoapods-package", forHTTPHeaderField: "auth-mode")

        performRequest(request, completion: completion)
    }

    private func performRequest(_ request: URLRequest, completion: @escaping (Result<APIResponse, AcronymGeneratorAPIError>) -> Void) {
        let task = session.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(AcronymGeneratorAPIError.networkError(error)))
                return
            }

            guard let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(AcronymGeneratorAPIError.invalidResponse))
                return
            }

            guard let data = data else {
                completion(.failure(AcronymGeneratorAPIError.noData))
                return
            }

            // Handle HTTP errors
            if httpResponse.statusCode != 200 {
                do {
                    let errorResponse = try JSONDecoder().decode(ErrorResponse.self, from: data)
                    completion(.failure(AcronymGeneratorAPIError.apiError(statusCode: httpResponse.statusCode, message: errorResponse.error ?? "Unknown error")))
                } catch {
                    completion(.failure(AcronymGeneratorAPIError.httpError(statusCode: httpResponse.statusCode)))
                }
                return
            }

            // Parse successful response
            do {
                let apiResponse = try JSONDecoder().decode(APIResponse.self, from: data)
                completion(.success(apiResponse))
            } catch {
                completion(.failure(AcronymGeneratorAPIError.decodingError(error)))
            }
        }

        task.resume()
    }
}

// MARK: - Async/Await Support (iOS 13+)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AcronymGeneratorAPIClient {
    /// Execute the API request using async/await
    /// - Parameter parameters: Query parameters or request body
    /// - Returns: APIResponse on success
    /// - Throws: AcronymGeneratorAPIError on failure
    public func execute(parameters: [String: Any]? = nil) async throws -> APIResponse {
        try await withCheckedThrowingContinuation { continuation in
            execute(parameters: parameters) { result in
                continuation.resume(with: result)
            }
        }
    }
}
