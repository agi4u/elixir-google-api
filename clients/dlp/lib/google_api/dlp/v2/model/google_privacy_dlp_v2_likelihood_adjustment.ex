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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment do
  @moduledoc """
  Message for specifying an adjustment to the likelihood of a finding as
  part of a detection rule.

  ## Attributes

  *   `fixedLikelihood` (*type:* `String.t`, *default:* `nil`) - Set the likelihood of a finding to a fixed value.
  *   `relativeLikelihood` (*type:* `integer()`, *default:* `nil`) - Increase or decrease the likelihood by the specified number of
      levels. For example, if a finding would be `POSSIBLE` without the
      detection rule and `relative_likelihood` is 1, then it is upgraded to
      `LIKELY`, while a value of -1 would downgrade it to `UNLIKELY`.
      Likelihood may never drop below `VERY_UNLIKELY` or exceed
      `VERY_LIKELY`, so applying an adjustment of 1 followed by an
      adjustment of -1 when base likelihood is `VERY_LIKELY` will result in
      a final likelihood of `LIKELY`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fixedLikelihood => String.t(),
          :relativeLikelihood => integer()
        }

  field(:fixedLikelihood)
  field(:relativeLikelihood)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
