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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGcsSource do
  @moduledoc """
  Cloud Storage location for input content.

  ## Attributes

  *   `dataSchema` (*type:* `String.t`, *default:* `nil`) - The schema to use when parsing the data from the source. Supported values for document imports: * `document` (default): One JSON Document per line. Each document must have a valid Document.id. * `content`: Unstructured data (e.g. PDF, HTML). Each file matched by `input_uris` becomes a document, with the ID set to the first 128 bits of SHA256(URI) encoded as a hex string. * `custom`: One custom data JSON per row in arbitrary format that conforms to the defined Schema of the data store. This can only be used by the GENERIC Data Store vertical. * `csv`: A CSV file with header conforming to the defined Schema of the data store. Each entry after the header is imported as a Document. This can only be used by the GENERIC Data Store vertical. Supported values for user even imports: * `user_event` (default): One JSON UserEvent per line.
  *   `inputUris` (*type:* `list(String.t)`, *default:* `nil`) - Required. Cloud Storage URIs to input files. URI can be up to 2000 characters long. URIs can match the full object path (for example, `gs://bucket/directory/object.json`) or a pattern matching one or more files, such as `gs://bucket/directory/*.json`. A request can contain at most 100 files (or 100,000 files if `data_schema` is `content`). Each file can be up to 2 GB (or 100 MB if `data_schema` is `content`).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataSchema => String.t() | nil,
          :inputUris => list(String.t()) | nil
        }

  field(:dataSchema)
  field(:inputUris, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGcsSource do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGcsSource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGcsSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
