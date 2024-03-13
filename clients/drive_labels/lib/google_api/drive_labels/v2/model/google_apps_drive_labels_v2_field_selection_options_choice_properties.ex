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

defmodule GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties do
  @moduledoc """
  Basic properties of the choice.

  ## Attributes

  *   `badgeConfig` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2BadgeConfig.t`, *default:* `nil`) - The badge configuration for this choice. When set, the label that owns this choice is considered a "badged label".
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of this label.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display text to show in the UI identifying this field.
  *   `insertBeforeChoice` (*type:* `String.t`, *default:* `nil`) - Input only. Insert or move this choice before the indicated choice. If empty, the choice is placed at the end of the list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :badgeConfig =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2BadgeConfig.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :insertBeforeChoice => String.t() | nil
        }

  field(:badgeConfig, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2BadgeConfig)
  field(:description)
  field(:displayName)
  field(:insertBeforeChoice)
end

defimpl Poison.Decoder,
  for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties do
  def decode(value, options) do
    GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
