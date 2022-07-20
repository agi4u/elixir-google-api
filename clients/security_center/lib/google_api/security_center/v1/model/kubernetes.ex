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

defmodule GoogleApi.SecurityCenter.V1.Model.Kubernetes do
  @moduledoc """
  Kubernetes related attributes.

  ## Attributes

  *   `accessReviews` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.AccessReview.t)`, *default:* `nil`) - Provides information on any Kubernetes access reviews (i.e. privilege checks) relevant to the finding.
  *   `bindings` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1Binding.t)`, *default:* `nil`) - Provides Kubernetes role binding information for findings that involve RoleBindings or ClusterRoleBindings.
  *   `nodePools` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.NodePool.t)`, *default:* `nil`) - GKE Node Pools associated with the finding. This field will contain NodePool information for each Node, when it is available.
  *   `nodes` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.Node.t)`, *default:* `nil`) - Provides Kubernetes Node information.
  *   `pods` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.Pod.t)`, *default:* `nil`) - Kubernetes Pods associated with the finding. This field will contain Pod records for each container that is owned by a Pod.
  *   `roles` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.Role.t)`, *default:* `nil`) - Provides Kubernetes role information for findings that involve Roles or ClusterRoles.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessReviews => list(GoogleApi.SecurityCenter.V1.Model.AccessReview.t()) | nil,
          :bindings =>
            list(GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1Binding.t()) | nil,
          :nodePools => list(GoogleApi.SecurityCenter.V1.Model.NodePool.t()) | nil,
          :nodes => list(GoogleApi.SecurityCenter.V1.Model.Node.t()) | nil,
          :pods => list(GoogleApi.SecurityCenter.V1.Model.Pod.t()) | nil,
          :roles => list(GoogleApi.SecurityCenter.V1.Model.Role.t()) | nil
        }

  field(:accessReviews, as: GoogleApi.SecurityCenter.V1.Model.AccessReview, type: :list)

  field(:bindings,
    as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1Binding,
    type: :list
  )

  field(:nodePools, as: GoogleApi.SecurityCenter.V1.Model.NodePool, type: :list)
  field(:nodes, as: GoogleApi.SecurityCenter.V1.Model.Node, type: :list)
  field(:pods, as: GoogleApi.SecurityCenter.V1.Model.Pod, type: :list)
  field(:roles, as: GoogleApi.SecurityCenter.V1.Model.Role, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.Kubernetes do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.Kubernetes.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.Kubernetes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
