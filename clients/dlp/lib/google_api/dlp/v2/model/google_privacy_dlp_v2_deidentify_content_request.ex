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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyContentRequest do
  @moduledoc """
  Request to de-identify a ContentItem.

  ## Attributes

  *   `deidentifyConfig` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyConfig.t`, *default:* `nil`) - Configuration for the de-identification of the content item. Items specified here will override the template referenced by the deidentify_template_name argument.
  *   `deidentifyTemplateName` (*type:* `String.t`, *default:* `nil`) - Template to use. Any configuration directly specified in deidentify_config will override those set in the template. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged.
  *   `inspectConfig` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig.t`, *default:* `nil`) - Configuration for the inspector. Items specified here will override the template referenced by the inspect_template_name argument.
  *   `inspectTemplateName` (*type:* `String.t`, *default:* `nil`) - Template to use. Any configuration directly specified in inspect_config will override those set in the template. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged.
  *   `item` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentItem.t`, *default:* `nil`) - The item to de-identify. Will be treated as text. This value must be of type Table if your deidentify_config is a RecordTransformations object.
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - Deprecated. This field has no effect.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deidentifyConfig =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyConfig.t() | nil,
          :deidentifyTemplateName => String.t() | nil,
          :inspectConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig.t() | nil,
          :inspectTemplateName => String.t() | nil,
          :item => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentItem.t() | nil,
          :locationId => String.t() | nil
        }

  field(:deidentifyConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyConfig)
  field(:deidentifyTemplateName)
  field(:inspectConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig)
  field(:inspectTemplateName)
  field(:item, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentItem)
  field(:locationId)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyContentRequest do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyContentRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyContentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
