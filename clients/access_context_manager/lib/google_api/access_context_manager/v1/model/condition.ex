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

defmodule GoogleApi.AccessContextManager.V1.Model.Condition do
  @moduledoc """
  A condition necessary for an `AccessLevel` to be granted. The Condition is an AND over its fields. So a Condition is true if: 1) the request IP is from one of the listed subnetworks AND 2) the originating device complies with the listed device policy AND 3) all listed access levels are granted AND 4) the request was sent at a time allowed by the DateTimeRestriction.

  ## Attributes

  *   `devicePolicy` (*type:* `GoogleApi.AccessContextManager.V1.Model.DevicePolicy.t`, *default:* `nil`) - Device specific restrictions, all restrictions must hold for the Condition to be true. If not specified, all devices are allowed.
  *   `ipSubnetworks` (*type:* `list(String.t)`, *default:* `nil`) - CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for a CIDR IP address block, the specified IP address portion must be properly truncated (i.e. all the host bits must be zero) or the input is considered malformed. For example, "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. Similarly, for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32" is not. The originating IP of a request must be in one of the listed subnets in order for this Condition to be true. If empty, all IP addresses are allowed.
  *   `members` (*type:* `list(String.t)`, *default:* `nil`) - The request must be made by one of the provided user or service accounts. Groups are not supported. Syntax: `user:{emailid}` `serviceAccount:{emailid}` If not specified, a request may come from any user.
  *   `negate` (*type:* `boolean()`, *default:* `nil`) - Whether to negate the Condition. If true, the Condition becomes a NAND over its non-empty fields. Any non-empty field criteria evaluating to false will result in the Condition to be satisfied. Defaults to false.
  *   `regions` (*type:* `list(String.t)`, *default:* `nil`) - The request must originate from one of the provided countries/regions. Must be valid ISO 3166-1 alpha-2 codes.
  *   `requiredAccessLevels` (*type:* `list(String.t)`, *default:* `nil`) - A list of other access levels defined in the same `Policy`, referenced by resource name. Referencing an `AccessLevel` which does not exist is an error. All access levels listed must be granted for the Condition to be true. Example: "`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME"`
  *   `vpcNetworkSources` (*type:* `list(GoogleApi.AccessContextManager.V1.Model.VpcNetworkSource.t)`, *default:* `nil`) - The request must originate from one of the provided VPC networks in Google Cloud. Cannot specify this field together with `ip_subnetworks`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :devicePolicy => GoogleApi.AccessContextManager.V1.Model.DevicePolicy.t() | nil,
          :ipSubnetworks => list(String.t()) | nil,
          :members => list(String.t()) | nil,
          :negate => boolean() | nil,
          :regions => list(String.t()) | nil,
          :requiredAccessLevels => list(String.t()) | nil,
          :vpcNetworkSources =>
            list(GoogleApi.AccessContextManager.V1.Model.VpcNetworkSource.t()) | nil
        }

  field(:devicePolicy, as: GoogleApi.AccessContextManager.V1.Model.DevicePolicy)
  field(:ipSubnetworks, type: :list)
  field(:members, type: :list)
  field(:negate)
  field(:regions, type: :list)
  field(:requiredAccessLevels, type: :list)

  field(:vpcNetworkSources,
    as: GoogleApi.AccessContextManager.V1.Model.VpcNetworkSource,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.Condition do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.Condition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.Condition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
