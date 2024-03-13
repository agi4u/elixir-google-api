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

defmodule GoogleApi.DisplayVideo.V3.Model.PrismaConfig do
  @moduledoc """
  Settings specific to the Mediaocean Prisma tool.

  ## Attributes

  *   `prismaCpeCode` (*type:* `GoogleApi.DisplayVideo.V3.Model.PrismaCpeCode.t`, *default:* `nil`) - Required. Relevant client, product, and estimate codes from the Mediaocean Prisma tool.
  *   `prismaType` (*type:* `String.t`, *default:* `nil`) - Required. The Prisma type.
  *   `supplier` (*type:* `String.t`, *default:* `nil`) - Required. The entity allocated this budget (DSP, site, etc.).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :prismaCpeCode => GoogleApi.DisplayVideo.V3.Model.PrismaCpeCode.t() | nil,
          :prismaType => String.t() | nil,
          :supplier => String.t() | nil
        }

  field(:prismaCpeCode, as: GoogleApi.DisplayVideo.V3.Model.PrismaCpeCode)
  field(:prismaType)
  field(:supplier)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.PrismaConfig do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.PrismaConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.PrismaConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
