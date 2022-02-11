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

defmodule GoogleApi.CloudFunctions.V1.Model.GoogleCloudFunctionsV2betaStateMessage do
  @moduledoc """
  Informational messages about the state of the Cloud Function or Operation.

  ## Attributes

  *   `message` (*type:* `String.t`, *default:* `nil`) - The message.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - Severity of the state message.
  *   `type` (*type:* `String.t`, *default:* `nil`) - One-word CamelCase type of the state message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :message => String.t() | nil,
          :severity => String.t() | nil,
          :type => String.t() | nil
        }

  field(:message)
  field(:severity)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudFunctions.V1.Model.GoogleCloudFunctionsV2betaStateMessage do
  def decode(value, options) do
    GoogleApi.CloudFunctions.V1.Model.GoogleCloudFunctionsV2betaStateMessage.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudFunctions.V1.Model.GoogleCloudFunctionsV2betaStateMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
