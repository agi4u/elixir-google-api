# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Monitoring.V3.Model.HttpCheck do
  @moduledoc """
  Information involved in an HTTP/HTTPS Uptime check request.

  ## Attributes

  *   `acceptedResponseStatusCodes` (*type:* `list(GoogleApi.Monitoring.V3.Model.ResponseStatusCode.t)`, *default:* `nil`) - If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299.
  *   `authInfo` (*type:* `GoogleApi.Monitoring.V3.Model.BasicAuthentication.t`, *default:* `nil`) - The authentication information. Optional when creating an HTTP check; defaults to empty.
  *   `body` (*type:* `String.t`, *default:* `nil`) - The request body associated with the HTTP POST request. If content_type is URL_ENCODED, the body passed in must be URL-encoded. Users can provide a Content-Length header via the headers field or the API will do so. If the request_method is GET and body is not empty, the API will return an error. The maximum byte size is 1 megabyte.Note: If client libraries aren't used (which performs the conversion automatically) base64 encode your body data since the field is of bytes type.
  *   `contentType` (*type:* `String.t`, *default:* `nil`) - The content type header to use for the check. The following configurations result in errors: 1. Content type is specified in both the headers field and the content_type field. 2. Request method is GET and content_type is not TYPE_UNSPECIFIED 3. Request method is POST and content_type is TYPE_UNSPECIFIED. 4. Request method is POST and a "Content-Type" header is provided via headers field. The content_type field should be used instead.
  *   `customContentType` (*type:* `String.t`, *default:* `nil`) - A user provided content type header to use for the check. The invalid configurations outlined in the content_type field apply to custom_content_type, as well as the following: 1. content_type is URL_ENCODED and custom_content_type is set. 2. content_type is USER_PROVIDED and custom_content_type is not set.
  *   `headers` (*type:* `map()`, *default:* `nil`) - The list of headers to send as part of the Uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described at https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page 31). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
  *   `maskHeaders` (*type:* `boolean()`, *default:* `nil`) - Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if mask_headers is set to true then the headers will be obscured with ******.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Optional (defaults to "/"). The path to the page against which to run the check. Will be combined with the host (specified within the monitored_resource) and port to construct the full URL. If the provided path does not begin with "/", a "/" will be prepended automatically.
  *   `pingConfig` (*type:* `GoogleApi.Monitoring.V3.Model.PingConfig.t`, *default:* `nil`) - Contains information needed to add pings to an HTTP check.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Optional (defaults to 80 when use_ssl is false, and 443 when use_ssl is true). The TCP port on the HTTP server against which to run the check. Will be combined with host (specified within the monitored_resource) and path to construct the full URL.
  *   `requestMethod` (*type:* `String.t`, *default:* `nil`) - The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED then request_method defaults to GET.
  *   `useSsl` (*type:* `boolean()`, *default:* `nil`) - If true, use HTTPS instead of HTTP to run the check.
  *   `validateSsl` (*type:* `boolean()`, *default:* `nil`) - Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where monitored_resource is set to uptime_url. If use_ssl is false, setting validate_ssl to true has no effect.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceptedResponseStatusCodes =>
            list(GoogleApi.Monitoring.V3.Model.ResponseStatusCode.t()) | nil,
          :authInfo => GoogleApi.Monitoring.V3.Model.BasicAuthentication.t() | nil,
          :body => String.t() | nil,
          :contentType => String.t() | nil,
          :customContentType => String.t() | nil,
          :headers => map() | nil,
          :maskHeaders => boolean() | nil,
          :path => String.t() | nil,
          :pingConfig => GoogleApi.Monitoring.V3.Model.PingConfig.t() | nil,
          :port => integer() | nil,
          :requestMethod => String.t() | nil,
          :useSsl => boolean() | nil,
          :validateSsl => boolean() | nil
        }

  field(:acceptedResponseStatusCodes,
    as: GoogleApi.Monitoring.V3.Model.ResponseStatusCode,
    type: :list
  )

  field(:authInfo, as: GoogleApi.Monitoring.V3.Model.BasicAuthentication)
  field(:body)
  field(:contentType)
  field(:customContentType)
  field(:headers, type: :map)
  field(:maskHeaders)
  field(:path)
  field(:pingConfig, as: GoogleApi.Monitoring.V3.Model.PingConfig)
  field(:port)
  field(:requestMethod)
  field(:useSsl)
  field(:validateSsl)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.HttpCheck do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.HttpCheck.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.HttpCheck do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
