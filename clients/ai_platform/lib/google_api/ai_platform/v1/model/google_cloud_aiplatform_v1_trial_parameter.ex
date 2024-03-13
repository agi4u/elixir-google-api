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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrialParameter do
  @moduledoc """
  A message representing a parameter to be tuned.

  ## Attributes

  *   `parameterId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the parameter. The parameter should be defined in StudySpec's Parameters.
  *   `value` (*type:* `any()`, *default:* `nil`) - Output only. The value of the parameter. `number_value` will be set if a parameter defined in StudySpec is in type 'INTEGER', 'DOUBLE' or 'DISCRETE'. `string_value` will be set if a parameter defined in StudySpec is in type 'CATEGORICAL'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameterId => String.t() | nil,
          :value => any() | nil
        }

  field(:parameterId)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrialParameter do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrialParameter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrialParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
