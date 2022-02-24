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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DeleteConversationModelOperationMetadata do
  @moduledoc """
  Metadata for a ConversationModels.DeleteConversationModel operation.

  ## Attributes

  *   `conversationModel` (*type:* `String.t`, *default:* `nil`) - The resource name of the conversation model. Format: `projects//conversationModels/`
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp when delete conversation model request was created. The time is measured on server side.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversationModel => String.t() | nil,
          :createTime => DateTime.t() | nil
        }

  field(:conversationModel)
  field(:createTime, as: DateTime)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DeleteConversationModelOperationMetadata do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DeleteConversationModelOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DeleteConversationModelOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
