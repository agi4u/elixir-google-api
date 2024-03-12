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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ImportEntriesRequest do
  @moduledoc """
  Request message for ImportEntries method.

  ## Attributes

  *   `gcsBucketPath` (*type:* `String.t`, *default:* `nil`) - Path to a Cloud Storage bucket that contains a dump ready for ingestion.
  *   `jobId` (*type:* `String.t`, *default:* `nil`) - Optional. (Optional) Dataplex task job id, if specified will be used as part of ImportEntries LRO ID
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcsBucketPath => String.t() | nil,
          :jobId => String.t() | nil
        }

  field(:gcsBucketPath)
  field(:jobId)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ImportEntriesRequest do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ImportEntriesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ImportEntriesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
