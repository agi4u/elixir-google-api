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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata do
  @moduledoc """
  Metadata for a ConversationProfile.SetSuggestionFeatureConfig operation.

  ## Attributes

  *   `conversationProfile` (*type:* `String.t`, *default:* `nil`) - The resource name of the conversation profile. Format: `projects//locations//conversationProfiles/`
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp whe the request was created. The time is measured on server side.
  *   `participantRole` (*type:* `String.t`, *default:* `nil`) - Required. The participant role to add or update the suggestion feature config. Only HUMAN_AGENT or END_USER can be used.
  *   `suggestionFeatureType` (*type:* `String.t`, *default:* `nil`) - Required. The type of the suggestion feature to add or update.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversationProfile => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :participantRole => String.t() | nil,
          :suggestionFeatureType => String.t() | nil
        }

  field(:conversationProfile)
  field(:createTime, as: DateTime)
  field(:participantRole)
  field(:suggestionFeatureType)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
