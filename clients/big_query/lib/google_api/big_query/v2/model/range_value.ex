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

defmodule GoogleApi.BigQuery.V2.Model.RangeValue do
  @moduledoc """
  Represents the value of a range.

  ## Attributes

  *   `end` (*type:* `GoogleApi.BigQuery.V2.Model.QueryParameterValue.t`, *default:* `nil`) - Optional. The end value of the range. A missing value represents an unbounded end.
  *   `start` (*type:* `GoogleApi.BigQuery.V2.Model.QueryParameterValue.t`, *default:* `nil`) - Optional. The start value of the range. A missing value represents an unbounded start.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :end => GoogleApi.BigQuery.V2.Model.QueryParameterValue.t() | nil,
          :start => GoogleApi.BigQuery.V2.Model.QueryParameterValue.t() | nil
        }

  field(:end, as: GoogleApi.BigQuery.V2.Model.QueryParameterValue)
  field(:start, as: GoogleApi.BigQuery.V2.Model.QueryParameterValue)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.RangeValue do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.RangeValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.RangeValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
