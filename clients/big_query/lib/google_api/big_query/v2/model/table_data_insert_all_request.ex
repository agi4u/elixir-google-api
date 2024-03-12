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

defmodule GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequest do
  @moduledoc """
  Request for sending a single streaming insert.

  ## Attributes

  *   `ignoreUnknownValues` (*type:* `boolean()`, *default:* `nil`) - Optional. Accept rows that contain values that do not match the schema. The unknown values are ignored. Default is false, which treats unknown values as errors.
  *   `kind` (*type:* `String.t`, *default:* `bigquery#tableDataInsertAllRequest`) - Optional. The resource type of the response. The value is not checked at the backend. Historically, it has been set to "bigquery#tableDataInsertAllRequest" but you are not required to set it.
  *   `rows` (*type:* `list(GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequestRows.t)`, *default:* `nil`) - 
  *   `skipInvalidRows` (*type:* `boolean()`, *default:* `nil`) - Optional. Insert all valid rows of a request, even if invalid rows exist. The default value is false, which causes the entire request to fail if any invalid rows exist.
  *   `templateSuffix` (*type:* `String.t`, *default:* `nil`) - Optional. If specified, treats the destination table as a base template, and inserts the rows into an instance table named "{destination}{templateSuffix}". BigQuery will manage creation of the instance table, using the schema of the base template table. See https://cloud.google.com/bigquery/streaming-data-into-bigquery#template-tables for considerations when working with templates tables.
  *   `traceId` (*type:* `String.t`, *default:* `nil`) - Optional. Unique request trace id. Used for debugging purposes only. It is case-sensitive, limited to up to 36 ASCII characters. A UUID is recommended.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ignoreUnknownValues => boolean() | nil,
          :kind => String.t() | nil,
          :rows => list(GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequestRows.t()) | nil,
          :skipInvalidRows => boolean() | nil,
          :templateSuffix => String.t() | nil,
          :traceId => String.t() | nil
        }

  field(:ignoreUnknownValues)
  field(:kind)
  field(:rows, as: GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequestRows, type: :list)
  field(:skipInvalidRows)
  field(:templateSuffix)
  field(:traceId)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequest do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
