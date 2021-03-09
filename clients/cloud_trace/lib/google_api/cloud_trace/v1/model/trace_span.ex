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

defmodule GoogleApi.CloudTrace.V1.Model.TraceSpan do
  @moduledoc """
  A span represents a single timed event within a trace. Spans can be nested and form a trace tree. Often, a trace contains a root span that describes the end-to-end latency of an operation and, optionally, one or more subspans for its suboperations. Spans do not need to be contiguous. There may be gaps between spans in a trace.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - End time of the span in nanoseconds from the UNIX epoch.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Distinguishes between spans generated in a particular context. For example, two spans with the same name may be distinguished using `RPC_CLIENT` and `RPC_SERVER` to identify queueing latency associated with the span.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Collection of labels associated with the span. Label keys must be less than 128 bytes. Label values must be less than 16 kilobytes (10MB for `/stacktrace` values). Some predefined label keys exist, or you may create your own. When creating your own, we recommend the following formats: * `/category/product/key` for agents of well-known products (e.g. `/db/mongodb/read_size`). * `short_host/path/key` for domain-specific keys (e.g. `foo.com/myproduct/bar`) Predefined labels include: * `/agent` * `/component` * `/error/message` * `/error/name` * `/http/client_city` * `/http/client_country` * `/http/client_protocol` * `/http/client_region` * `/http/host` * `/http/method` * `/http/path` * `/http/redirected_url` * `/http/request/size` * `/http/response/size` * `/http/route` * `/http/status_code` * `/http/url` * `/http/user_agent` * `/pid` * `/stacktrace` * `/tid`
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the span. Must be less than 128 bytes. The span name is sanitized and displayed in the Trace tool in the Google Cloud Platform Console. The name may be a method name or some other per-call site name. For the same executable and the same call point, a best practice is to use a consistent name, which makes it easier to correlate cross-trace spans.
  *   `parentSpanId` (*type:* `String.t`, *default:* `nil`) - Optional. ID of the parent span, if any.
  *   `spanId` (*type:* `String.t`, *default:* `nil`) - Identifier for the span. Must be a 64-bit integer other than 0 and unique within a trace. For example, `2205310701640571284`.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Start time of the span in nanoseconds from the UNIX epoch.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :kind => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :parentSpanId => String.t() | nil,
          :spanId => String.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:endTime, as: DateTime)
  field(:kind)
  field(:labels, type: :map)
  field(:name)
  field(:parentSpanId)
  field(:spanId)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTrace.V1.Model.TraceSpan do
  def decode(value, options) do
    GoogleApi.CloudTrace.V1.Model.TraceSpan.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTrace.V1.Model.TraceSpan do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
