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

defmodule GoogleApi.CloudDeploy.V1.Model.CloudRunMetadata do
  @moduledoc """
  CloudRunMetadata contains information from a Cloud Run deployment.

  ## Attributes

  *   `revision` (*type:* `String.t`, *default:* `nil`) - Output only. The Cloud Run Revision id associated with a `Rollout`.
  *   `service` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the Cloud Run Service that is associated with a `Rollout`. Format is projects/{project}/locations/{location}/services/{service}.
  *   `serviceUrls` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The Cloud Run Service urls that are associated with a `Rollout`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :revision => String.t() | nil,
          :service => String.t() | nil,
          :serviceUrls => list(String.t()) | nil
        }

  field(:revision)
  field(:service)
  field(:serviceUrls, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.CloudRunMetadata do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.CloudRunMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.CloudRunMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
