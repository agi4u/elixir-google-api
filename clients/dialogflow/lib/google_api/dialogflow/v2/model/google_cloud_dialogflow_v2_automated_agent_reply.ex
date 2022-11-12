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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AutomatedAgentReply do
  @moduledoc """
  Represents a response from an automated agent.

  ## Attributes

  *   `allowCancellation` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the partial automated agent reply is interruptible when a later reply message arrives. e.g. if the agent specified some music as partial response, it can be cancelled.
  *   `automatedAgentReplyType` (*type:* `String.t`, *default:* `nil`) - AutomatedAgentReply type.
  *   `cxCurrentPage` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the current Dialogflow CX conversation page. Format: `projects//locations//agents//flows//pages/`.
  *   `detectIntentResponse` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DetectIntentResponse.t`, *default:* `nil`) - Response of the Dialogflow Sessions.DetectIntent call.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowCancellation => boolean() | nil,
          :automatedAgentReplyType => String.t() | nil,
          :cxCurrentPage => String.t() | nil,
          :detectIntentResponse =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DetectIntentResponse.t() | nil
        }

  field(:allowCancellation)
  field(:automatedAgentReplyType)
  field(:cxCurrentPage)

  field(:detectIntentResponse,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DetectIntentResponse
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AutomatedAgentReply do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AutomatedAgentReply.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AutomatedAgentReply do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
