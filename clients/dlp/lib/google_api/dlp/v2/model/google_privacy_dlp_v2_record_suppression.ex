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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordSuppression do
  @moduledoc """
  Configuration to suppress records whose suppression conditions evaluate to
  true.

  ## Attributes

  *   `condition` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordCondition.t`, *default:* `nil`) - A condition that when it evaluates to true will result in the record being
      evaluated to be suppressed from the transformed content.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordCondition.t()
        }

  field(:condition, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordCondition)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordSuppression do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordSuppression.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordSuppression do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
