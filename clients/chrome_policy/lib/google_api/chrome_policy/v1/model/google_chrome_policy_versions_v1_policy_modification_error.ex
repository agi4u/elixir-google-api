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

defmodule GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1PolicyModificationError do
  @moduledoc """
  Error information for a modification request of a specific policy on a specific target.

  ## Attributes

  *   `errors` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The non-field errors related to the modification.
  *   `fieldErrors` (*type:* `list(GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1PolicyModificationFieldError.t)`, *default:* `nil`) - Output only. The error messages related to the modification.
  *   `policySchema` (*type:* `String.t`, *default:* `nil`) - Output only. The specific policy schema modification that had an error.
  *   `policyTargetKey` (*type:* `GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1PolicyTargetKey.t`, *default:* `nil`) - Output only. The specific policy target modification that had error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors => list(String.t()) | nil,
          :fieldErrors =>
            list(
              GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1PolicyModificationFieldError.t()
            )
            | nil,
          :policySchema => String.t() | nil,
          :policyTargetKey =>
            GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1PolicyTargetKey.t() | nil
        }

  field(:errors, type: :list)

  field(:fieldErrors,
    as: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1PolicyModificationFieldError,
    type: :list
  )

  field(:policySchema)

  field(:policyTargetKey,
    as: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1PolicyTargetKey
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1PolicyModificationError do
  def decode(value, options) do
    GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1PolicyModificationError.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1PolicyModificationError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
