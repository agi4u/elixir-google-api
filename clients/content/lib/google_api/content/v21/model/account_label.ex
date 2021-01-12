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

defmodule GoogleApi.Content.V21.Model.AccountLabel do
  @moduledoc """
  Label assigned by CSS domain or CSS group to one of its sub-accounts.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Immutable. The ID of account this label belongs to.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of this label.
  *   `labelId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the label.
  *   `labelType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of this label.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The display name of this label.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :description => String.t(),
          :labelId => String.t(),
          :labelType => String.t(),
          :name => String.t()
        }

  field(:accountId)
  field(:description)
  field(:labelId)
  field(:labelType)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountLabel do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountLabel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountLabel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
