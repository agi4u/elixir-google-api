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

defmodule GoogleApi.BigQueryDataTransfer.V1.Model.StartManualTransferRunsRequest do
  @moduledoc """
  A request to start manual transfer runs.

  ## Attributes

  *   `requestedRunTime` (*type:* `DateTime.t`, *default:* `nil`) - A run_time timestamp for historical data files or reports that are scheduled to be transferred by the scheduled transfer run. requested_run_time must be a past time and cannot include future time values.
  *   `requestedTimeRange` (*type:* `GoogleApi.BigQueryDataTransfer.V1.Model.TimeRange.t`, *default:* `nil`) - A time_range start and end timestamp for historical data files or reports that are scheduled to be transferred by the scheduled transfer run. requested_time_range must be a past time and cannot include future time values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :requestedRunTime => DateTime.t() | nil,
          :requestedTimeRange => GoogleApi.BigQueryDataTransfer.V1.Model.TimeRange.t() | nil
        }

  field(:requestedRunTime, as: DateTime)
  field(:requestedTimeRange, as: GoogleApi.BigQueryDataTransfer.V1.Model.TimeRange)
end

defimpl Poison.Decoder,
  for: GoogleApi.BigQueryDataTransfer.V1.Model.StartManualTransferRunsRequest do
  def decode(value, options) do
    GoogleApi.BigQueryDataTransfer.V1.Model.StartManualTransferRunsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.BigQueryDataTransfer.V1.Model.StartManualTransferRunsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
