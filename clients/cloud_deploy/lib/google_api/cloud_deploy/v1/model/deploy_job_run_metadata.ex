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

defmodule GoogleApi.CloudDeploy.V1.Model.DeployJobRunMetadata do
  @moduledoc """
  DeployJobRunMetadata surfaces information associated with a `DeployJobRun` to the user.

  ## Attributes

  *   `cloudRun` (*type:* `GoogleApi.CloudDeploy.V1.Model.CloudRunMetadata.t`, *default:* `nil`) - Output only. The name of the Cloud Run Service that is associated with a `DeployJobRun`.
  *   `custom` (*type:* `GoogleApi.CloudDeploy.V1.Model.CustomMetadata.t`, *default:* `nil`) - Output only. Custom metadata provided by user-defined deploy operation.
  *   `customTarget` (*type:* `GoogleApi.CloudDeploy.V1.Model.CustomTargetDeployMetadata.t`, *default:* `nil`) - Output only. Custom Target metadata associated with a `DeployJobRun`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudRun => GoogleApi.CloudDeploy.V1.Model.CloudRunMetadata.t() | nil,
          :custom => GoogleApi.CloudDeploy.V1.Model.CustomMetadata.t() | nil,
          :customTarget => GoogleApi.CloudDeploy.V1.Model.CustomTargetDeployMetadata.t() | nil
        }

  field(:cloudRun, as: GoogleApi.CloudDeploy.V1.Model.CloudRunMetadata)
  field(:custom, as: GoogleApi.CloudDeploy.V1.Model.CustomMetadata)
  field(:customTarget, as: GoogleApi.CloudDeploy.V1.Model.CustomTargetDeployMetadata)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.DeployJobRunMetadata do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.DeployJobRunMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.DeployJobRunMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
