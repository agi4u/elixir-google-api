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

defmodule GoogleApi.AppEngine.V1.Model.ListIngressRulesResponse do
  @moduledoc """
  Response message for Firewall.ListIngressRules.

  ## Attributes

  *   `ingressRules` (*type:* `list(GoogleApi.AppEngine.V1.Model.FirewallRule.t)`, *default:* `nil`) - The ingress FirewallRules for this application.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token for fetching the next page of results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ingressRules => list(GoogleApi.AppEngine.V1.Model.FirewallRule.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:ingressRules, as: GoogleApi.AppEngine.V1.Model.FirewallRule, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.ListIngressRulesResponse do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.ListIngressRulesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.ListIngressRulesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
