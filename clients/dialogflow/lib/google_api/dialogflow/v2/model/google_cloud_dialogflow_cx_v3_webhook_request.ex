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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequest do
  @moduledoc """
  The request message for a webhook call. The request is sent as a JSON object and the field names will be presented in camel cases. You may see undocumented fields in an actual request. These fields are used internally by Dialogflow and should be ignored.

  ## Attributes

  *   `detectIntentResponseId` (*type:* `String.t`, *default:* `nil`) - Always present. The unique identifier of the DetectIntentResponse that will be returned to the API caller.
  *   `fulfillmentInfo` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo.t`, *default:* `nil`) - Always present. Information about the fulfillment that triggered this webhook call.
  *   `intentInfo` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequestIntentInfo.t`, *default:* `nil`) - Information about the last matched intent.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - The language code specified in the original request.
  *   `messages` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3ResponseMessage.t)`, *default:* `nil`) - The list of rich message responses to present to the user. Webhook can choose to append or replace this list in WebhookResponse.fulfillment_response;
  *   `pageInfo` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3PageInfo.t`, *default:* `nil`) - Information about page status.
  *   `payload` (*type:* `map()`, *default:* `nil`) - Custom data set in QueryParameters.payload.
  *   `sentimentAnalysisResult` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult.t`, *default:* `nil`) - The sentiment analysis result of the current user request. The field is filled when sentiment analysis is configured to be enabled for the request.
  *   `sessionInfo` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3SessionInfo.t`, *default:* `nil`) - Information about session status.
  *   `text` (*type:* `String.t`, *default:* `nil`) - If natural language text was provided as input, this field will contain a copy of the text.
  *   `transcript` (*type:* `String.t`, *default:* `nil`) - If natural language speech audio was provided as input, this field will contain the transcript for the audio.
  *   `triggerEvent` (*type:* `String.t`, *default:* `nil`) - If an event was provided as input, this field will contain the name of the event.
  *   `triggerIntent` (*type:* `String.t`, *default:* `nil`) - If an intent was provided as input, this field will contain a copy of the intent identifier. Format: `projects//locations//agents//intents/`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detectIntentResponseId => String.t() | nil,
          :fulfillmentInfo =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo.t()
            | nil,
          :intentInfo =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequestIntentInfo.t()
            | nil,
          :languageCode => String.t() | nil,
          :messages =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3ResponseMessage.t()) | nil,
          :pageInfo => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3PageInfo.t() | nil,
          :payload => map() | nil,
          :sentimentAnalysisResult =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult.t()
            | nil,
          :sessionInfo =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3SessionInfo.t() | nil,
          :text => String.t() | nil,
          :transcript => String.t() | nil,
          :triggerEvent => String.t() | nil,
          :triggerIntent => String.t() | nil
        }

  field(:detectIntentResponseId)

  field(:fulfillmentInfo,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo
  )

  field(:intentInfo,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequestIntentInfo
  )

  field(:languageCode)

  field(:messages,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3ResponseMessage,
    type: :list
  )

  field(:pageInfo, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3PageInfo)
  field(:payload, type: :map)

  field(:sentimentAnalysisResult,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult
  )

  field(:sessionInfo, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3SessionInfo)
  field(:text)
  field(:transcript)
  field(:triggerEvent)
  field(:triggerIntent)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3WebhookRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
