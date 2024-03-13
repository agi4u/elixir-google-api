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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value do
  @moduledoc """
  A generic data container.

  ## Attributes

  *   `booleanValue` (*type:* `boolean()`, *default:* `nil`) - A boolean.
  *   `doubleValue` (*type:* `float()`, *default:* `nil`) - A double.
  *   `floatValue` (*type:* `number()`, *default:* `nil`) - A float.
  *   `int64Value` (*type:* `String.t`, *default:* `nil`) - An int64.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - A string.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :booleanValue => boolean() | nil,
          :doubleValue => float() | nil,
          :floatValue => number() | nil,
          :int64Value => String.t() | nil,
          :stringValue => String.t() | nil
        }

  field(:booleanValue)
  field(:doubleValue)
  field(:floatValue)
  field(:int64Value)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
