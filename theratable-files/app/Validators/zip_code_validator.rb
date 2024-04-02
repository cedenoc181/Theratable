# app/validators/zip_code_validator.rb
require "uri"
require "json"
require "net/http"

class ZipCodeValidator
  def self.valid_for_state?(zip_code, state)
    # Construct the API request to validate the address
    url = URI("https://api.shipengine.com/v1/addresses/validate")
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request["Host"] = "api.shipengine.com"
    request["API-Key"] = "__YOUR_API_KEY_HERE__" # Replace with your actual API key
    request["Content-Type"] = "application/json"
    request.body = JSON.dump([
      {
        "address_line1": "",
        "city_locality": "",
        "state_province": state,
        "postal_code": zip_code,
        "country_code": "US"
      }
    ])

    # Send the API request and parse the response
  begin
        
    response = https.request(request)
    json_response = JSON.parse(response.body)

    # Check if the address is valid based on the API response
    # Modify the condition based on the response structure of the ShipEngine API
    return json_response["status"] == "validated"
  rescue StandardError => e
    # Handle any exceptions that occur during the API request
        puts "An error occurred during the API request: #{e.message}"
     return false
    end
  end
end
