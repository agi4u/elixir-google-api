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

defmodule GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse do
  @moduledoc """
  Response for Label update.

  ## Attributes

  *   `responses` (*type:* `list(GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse.t)`, *default:* `nil`) - The reply of the updates. This maps 1:1 with the updates, although responses to some requests may be empty.
  *   `updatedLabel` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2Label.t`, *default:* `nil`) - The label after updates were applied. This is only set if [BatchUpdateLabelResponse2.include_label_in_response] is `true` and there were no errors.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :responses =>
            list(
              GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse.t()
            )
            | nil,
          :updatedLabel => GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2Label.t() | nil
        }

  field(:responses,
    as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse,
    type: :list
  )

  field(:updatedLabel, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2Label)
end

defimpl Poison.Decoder,
  for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse do
  def decode(value, options) do
    GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
