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

defmodule GoogleApi.AppEngine.V1.Model.Service do
  @moduledoc """
  A Service resource is a logical component of an application that can share state and communicate in a secure fashion with other services. For example, an application that handles customer requests might include separate services to handle tasks such as backend data analysis or API requests from mobile devices. Each service has a collection of versions that define a specific set of code used to implement the functionality of that service.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - Relative name of the service within the application. Example: default.@OutputOnly
  *   `name` (*type:* `String.t`, *default:* `nil`) - Full path to the Service resource in the API. Example: apps/myapp/services/default.@OutputOnly
  *   `networkSettings` (*type:* `GoogleApi.AppEngine.V1.Model.NetworkSettings.t`, *default:* `nil`) - Ingress settings for this service. Will apply to all versions.
  *   `split` (*type:* `GoogleApi.AppEngine.V1.Model.TrafficSplit.t`, *default:* `nil`) - Mapping that defines fractional HTTP traffic diversion to different versions within the service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :name => String.t() | nil,
          :networkSettings => GoogleApi.AppEngine.V1.Model.NetworkSettings.t() | nil,
          :split => GoogleApi.AppEngine.V1.Model.TrafficSplit.t() | nil
        }

  field(:id)
  field(:name)
  field(:networkSettings, as: GoogleApi.AppEngine.V1.Model.NetworkSettings)
  field(:split, as: GoogleApi.AppEngine.V1.Model.TrafficSplit)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.Service do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.Service.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.Service do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
