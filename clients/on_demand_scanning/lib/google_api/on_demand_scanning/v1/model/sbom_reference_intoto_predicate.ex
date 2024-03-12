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

defmodule GoogleApi.OnDemandScanning.V1.Model.SbomReferenceIntotoPredicate do
  @moduledoc """
  A predicate which describes the SBOM being referenced.

  ## Attributes

  *   `digest` (*type:* `map()`, *default:* `nil`) - A map of algorithm to digest of the contents of the SBOM.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The location of the SBOM.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - The mime type of the SBOM.
  *   `referrerId` (*type:* `String.t`, *default:* `nil`) - The person or system referring this predicate to the consumer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :digest => map() | nil,
          :location => String.t() | nil,
          :mimeType => String.t() | nil,
          :referrerId => String.t() | nil
        }

  field(:digest, type: :map)
  field(:location)
  field(:mimeType)
  field(:referrerId)
end

defimpl Poison.Decoder, for: GoogleApi.OnDemandScanning.V1.Model.SbomReferenceIntotoPredicate do
  def decode(value, options) do
    GoogleApi.OnDemandScanning.V1.Model.SbomReferenceIntotoPredicate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OnDemandScanning.V1.Model.SbomReferenceIntotoPredicate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
