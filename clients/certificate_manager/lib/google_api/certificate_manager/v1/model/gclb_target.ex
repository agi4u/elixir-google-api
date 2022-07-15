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

defmodule GoogleApi.CertificateManager.V1.Model.GclbTarget do
  @moduledoc """
  Describes a Target Proxy which uses this Certificate Map.

  ## Attributes

  *   `ipConfigs` (*type:* `list(GoogleApi.CertificateManager.V1.Model.IpConfig.t)`, *default:* `nil`) - IP configurations for this Target Proxy where the Certificate Map is serving.
  *   `targetHttpsProxy` (*type:* `String.t`, *default:* `nil`) - This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetHttpsProxies/*`.
  *   `targetSslProxy` (*type:* `String.t`, *default:* `nil`) - This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetSslProxies/*`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipConfigs => list(GoogleApi.CertificateManager.V1.Model.IpConfig.t()) | nil,
          :targetHttpsProxy => String.t() | nil,
          :targetSslProxy => String.t() | nil
        }

  field(:ipConfigs, as: GoogleApi.CertificateManager.V1.Model.IpConfig, type: :list)
  field(:targetHttpsProxy)
  field(:targetSslProxy)
end

defimpl Poison.Decoder, for: GoogleApi.CertificateManager.V1.Model.GclbTarget do
  def decode(value, options) do
    GoogleApi.CertificateManager.V1.Model.GclbTarget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CertificateManager.V1.Model.GclbTarget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
