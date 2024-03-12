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

defmodule GoogleApi.BigQuery.V2.Model.ExternalServiceCost do
  @moduledoc """
  The external service cost is a portion of the total cost, these costs are not additive with total_bytes_billed. Moreover, this field only track external service costs that will show up as BigQuery costs (e.g. training BigQuery ML job with google cloud CAIP or Automl Tables services), not other costs which may be accrued by running the query (e.g. reading from Bigtable or Cloud Storage). The external service costs with different billing sku (e.g. CAIP job is charged based on VM usage) are converted to BigQuery billed_bytes and slot_ms with equivalent amount of US dollars. Services may not directly correlate to these metrics, but these are the equivalents for billing purposes. Output only.

  ## Attributes

  *   `bytesBilled` (*type:* `String.t`, *default:* `nil`) - External service cost in terms of bigquery bytes billed.
  *   `bytesProcessed` (*type:* `String.t`, *default:* `nil`) - External service cost in terms of bigquery bytes processed.
  *   `externalService` (*type:* `String.t`, *default:* `nil`) - External service name.
  *   `reservedSlotCount` (*type:* `String.t`, *default:* `nil`) - Non-preemptable reserved slots used for external job. For example, reserved slots for Cloua AI Platform job are the VM usages converted to BigQuery slot with equivalent mount of price.
  *   `slotMs` (*type:* `String.t`, *default:* `nil`) - External service cost in terms of bigquery slot milliseconds.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bytesBilled => String.t() | nil,
          :bytesProcessed => String.t() | nil,
          :externalService => String.t() | nil,
          :reservedSlotCount => String.t() | nil,
          :slotMs => String.t() | nil
        }

  field(:bytesBilled)
  field(:bytesProcessed)
  field(:externalService)
  field(:reservedSlotCount)
  field(:slotMs)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.ExternalServiceCost do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.ExternalServiceCost.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.ExternalServiceCost do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
