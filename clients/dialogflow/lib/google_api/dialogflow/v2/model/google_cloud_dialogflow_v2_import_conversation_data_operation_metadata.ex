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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ImportConversationDataOperationMetadata do
  @moduledoc """
  Metadata for a ConversationDatasets.ImportConversationData operation.

  ## Attributes

  *   `conversationDataset` (*type:* `String.t`, *default:* `nil`) - The resource name of the imported conversation dataset. Format: `projects//locations//conversationDatasets/`
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp when import conversation data request was created. The time is measured on server side.
  *   `partialFailures` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleRpcStatus.t)`, *default:* `nil`) - Partial failures are failures that don't fail the whole long running operation, e.g. single files that couldn't be read.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversationDataset => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :partialFailures => list(GoogleApi.Dialogflow.V2.Model.GoogleRpcStatus.t()) | nil
        }

  field(:conversationDataset)
  field(:createTime, as: DateTime)
  field(:partialFailures, as: GoogleApi.Dialogflow.V2.Model.GoogleRpcStatus, type: :list)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ImportConversationDataOperationMetadata do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ImportConversationDataOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ImportConversationDataOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
