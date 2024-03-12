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

defmodule GoogleApi.DeploymentManager.V2.Model.InstancesBulkInsertOperationMetadata do
  @moduledoc """


  ## Attributes

  *   `perLocationStatus` (*type:* `%{optional(String.t) => GoogleApi.DeploymentManager.V2.Model.BulkInsertOperationStatus.t}`, *default:* `nil`) - Status information per location (location name is key). Example key: zones/us-central1-a
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :perLocationStatus =>
            %{
              optional(String.t()) =>
                GoogleApi.DeploymentManager.V2.Model.BulkInsertOperationStatus.t()
            }
            | nil
        }

  field(:perLocationStatus,
    as: GoogleApi.DeploymentManager.V2.Model.BulkInsertOperationStatus,
    type: :map
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DeploymentManager.V2.Model.InstancesBulkInsertOperationMetadata do
  def decode(value, options) do
    GoogleApi.DeploymentManager.V2.Model.InstancesBulkInsertOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DeploymentManager.V2.Model.InstancesBulkInsertOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
