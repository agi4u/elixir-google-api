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

defmodule GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicyModificationFieldError do
  @moduledoc """
  Error information for a modification request of a specific field on a specific policy.

  ## Attributes

  *   `error` (*type:* `String.t`, *default:* `nil`) - Output only. The error message related to the field.
  *   `field` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the field with the error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => String.t() | nil,
          :field => String.t() | nil
        }

  field(:error)
  field(:field)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicyModificationFieldError do
  def decode(value, options) do
    GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicyModificationFieldError.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicyModificationFieldError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
