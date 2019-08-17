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

defmodule GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ExportEntitiesResponse do
  @moduledoc """
  The response for
  google.datastore.admin.v1.DatastoreAdmin.ExportEntities.

  ## Attributes

  *   `outputUrl` (*type:* `String.t`, *default:* `nil`) - Location of the output metadata file. This can be used to begin an import
      into Cloud Datastore (this project or another project). See
      google.datastore.admin.v1.ImportEntitiesRequest.input_url.
      Only present if the operation completed successfully.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :outputUrl => String.t()
        }

  field(:outputUrl)
end

defimpl Poison.Decoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ExportEntitiesResponse do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ExportEntitiesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ExportEntitiesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
