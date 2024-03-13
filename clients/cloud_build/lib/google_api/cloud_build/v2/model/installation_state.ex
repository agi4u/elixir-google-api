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

defmodule GoogleApi.CloudBuild.V2.Model.InstallationState do
  @moduledoc """
  Describes stage and necessary actions to be taken by the user to complete the installation. Used for GitHub and GitHub Enterprise based connections.

  ## Attributes

  *   `actionUri` (*type:* `String.t`, *default:* `nil`) - Output only. Link to follow for next action. Empty string if the installation is already complete.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Output only. Message of what the user should do next to continue the installation. Empty string if the installation is already complete.
  *   `stage` (*type:* `String.t`, *default:* `nil`) - Output only. Current step of the installation process.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionUri => String.t() | nil,
          :message => String.t() | nil,
          :stage => String.t() | nil
        }

  field(:actionUri)
  field(:message)
  field(:stage)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V2.Model.InstallationState do
  def decode(value, options) do
    GoogleApi.CloudBuild.V2.Model.InstallationState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V2.Model.InstallationState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
