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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentLocation do
  @moduledoc """
  Findings container location data.

  ## Attributes

  *   `containerName` (*type:* `String.t`, *default:* `nil`) - Name of the container where the finding is located.
      The top level name is the source file name or table name. Names of some
      common storage containers are formatted as follows:

      * BigQuery tables:  `<project_id>:<dataset_id>.<table_id>`
      * Cloud Storage files: `gs://<bucket>/<path>`
      * Datastore namespace: <namespace>

      Nested names could be absent if the embedded object has no string
      identifier (for an example an image contained within a document).
  *   `containerTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - Findings container modification timestamp, if applicable.
      For Google Cloud Storage contains last file modification timestamp.
      For BigQuery table contains last_modified_time property.
      For Datastore - not populated.
  *   `containerVersion` (*type:* `String.t`, *default:* `nil`) - Findings container version, if available
      ("generation" for Google Cloud Storage).
  *   `documentLocation` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DocumentLocation.t`, *default:* `nil`) - Location data for document files.
  *   `imageLocation` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ImageLocation.t`, *default:* `nil`) - Location within an image's pixels.
  *   `recordLocation` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordLocation.t`, *default:* `nil`) - Location within a row or record of a database table.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containerName => String.t(),
          :containerTimestamp => DateTime.t(),
          :containerVersion => String.t(),
          :documentLocation => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DocumentLocation.t(),
          :imageLocation => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ImageLocation.t(),
          :recordLocation => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordLocation.t()
        }

  field(:containerName)
  field(:containerTimestamp, as: DateTime)
  field(:containerVersion)
  field(:documentLocation, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DocumentLocation)
  field(:imageLocation, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ImageLocation)
  field(:recordLocation, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordLocation)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentLocation do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
