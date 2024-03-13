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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_QuotaErrorDetails do
  @moduledoc """
  Additional quota error details when there is QuotaError.

  ## Attributes

  *   `rateName` (*type:* `String.t`, *default:* `nil`) - The high level description of the quota bucket. Examples are "Get requests for standard access" or "Requests per account".
  *   `rateScope` (*type:* `String.t`, *default:* `nil`) - The rate scope of the quota limit.
  *   `retryDelay` (*type:* `String.t`, *default:* `nil`) - Backoff period that customers should wait before sending next request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rateName => String.t() | nil,
          :rateScope => String.t() | nil,
          :retryDelay => String.t() | nil
        }

  field(:rateName)
  field(:rateScope)
  field(:retryDelay)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_QuotaErrorDetails do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_QuotaErrorDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_QuotaErrorDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
