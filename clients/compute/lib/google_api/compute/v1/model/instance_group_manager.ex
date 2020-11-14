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

defmodule GoogleApi.Compute.V1.Model.InstanceGroupManager do
  @moduledoc """
  Represents a Managed Instance Group resource.

  An instance group is a collection of VM instances that you can manage as a single entity. For more information, read Instance groups.

  For zonal Managed Instance Group, use the instanceGroupManagers resource.

  For regional Managed Instance Group, use the regionInstanceGroupManagers resource. (== resource_for {$api_version}.instanceGroupManagers ==) (== resource_for {$api_version}.regionInstanceGroupManagers ==)

  ## Attributes

  *   `autoHealingPolicies` (*type:* `list(GoogleApi.Compute.V1.Model.InstanceGroupManagerAutoHealingPolicy.t)`, *default:* `nil`) - The autohealing policy for this managed instance group. You can specify only one value.
  *   `baseInstanceName` (*type:* `String.t`, *default:* `nil`) - The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] The creation timestamp for this managed instance group in RFC3339 text format.
  *   `currentActions` (*type:* `GoogleApi.Compute.V1.Model.InstanceGroupManagerActionsSummary.t`, *default:* `nil`) - [Output Only] The list of instance actions and the number of instances in this managed instance group that are scheduled for each of those actions.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `distributionPolicy` (*type:* `GoogleApi.Compute.V1.Model.DistributionPolicy.t`, *default:* `nil`) - Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. This field may be used in optimistic locking. It will be ignored when inserting an InstanceGroupManager. An up-to-date fingerprint must be provided in order to update the InstanceGroupManager, otherwise the request will fail with error 412 conditionNotMet.

      To see the latest fingerprint, make a get() request to retrieve an InstanceGroupManager.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] A unique identifier for this resource type. The server generates this identifier.
  *   `instanceGroup` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL of the Instance Group resource.
  *   `instanceTemplate` (*type:* `String.t`, *default:* `nil`) - The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  *   `kind` (*type:* `String.t`, *default:* `compute#instanceGroupManager`) - [Output Only] The resource type, which is always compute#instanceGroupManager for managed instance groups.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  *   `namedPorts` (*type:* `list(GoogleApi.Compute.V1.Model.NamedPort.t)`, *default:* `nil`) - Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL of the region where the managed instance group resides (for regional resources).
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL for this managed instance group. The server defines this URL.
  *   `statefulPolicy` (*type:* `GoogleApi.Compute.V1.Model.StatefulPolicy.t`, *default:* `nil`) - Stateful configuration for this Instanced Group Manager
  *   `status` (*type:* `GoogleApi.Compute.V1.Model.InstanceGroupManagerStatus.t`, *default:* `nil`) - [Output Only] The status of this managed instance group.
  *   `targetPools` (*type:* `list(String.t)`, *default:* `nil`) - The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  *   `targetSize` (*type:* `integer()`, *default:* `nil`) - The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  *   `updatePolicy` (*type:* `GoogleApi.Compute.V1.Model.InstanceGroupManagerUpdatePolicy.t`, *default:* `nil`) - The update policy for this managed instance group.
  *   `versions` (*type:* `list(GoogleApi.Compute.V1.Model.InstanceGroupManagerVersion.t)`, *default:* `nil`) - Specifies the instance templates used by this managed instance group to create instances.

      Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL of a zone where the managed instance group is located (for zonal resources).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoHealingPolicies =>
            list(GoogleApi.Compute.V1.Model.InstanceGroupManagerAutoHealingPolicy.t()),
          :baseInstanceName => String.t(),
          :creationTimestamp => String.t(),
          :currentActions => GoogleApi.Compute.V1.Model.InstanceGroupManagerActionsSummary.t(),
          :description => String.t(),
          :distributionPolicy => GoogleApi.Compute.V1.Model.DistributionPolicy.t(),
          :fingerprint => String.t(),
          :id => String.t(),
          :instanceGroup => String.t(),
          :instanceTemplate => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :namedPorts => list(GoogleApi.Compute.V1.Model.NamedPort.t()),
          :region => String.t(),
          :selfLink => String.t(),
          :statefulPolicy => GoogleApi.Compute.V1.Model.StatefulPolicy.t(),
          :status => GoogleApi.Compute.V1.Model.InstanceGroupManagerStatus.t(),
          :targetPools => list(String.t()),
          :targetSize => integer(),
          :updatePolicy => GoogleApi.Compute.V1.Model.InstanceGroupManagerUpdatePolicy.t(),
          :versions => list(GoogleApi.Compute.V1.Model.InstanceGroupManagerVersion.t()),
          :zone => String.t()
        }

  field(:autoHealingPolicies,
    as: GoogleApi.Compute.V1.Model.InstanceGroupManagerAutoHealingPolicy,
    type: :list
  )

  field(:baseInstanceName)
  field(:creationTimestamp)
  field(:currentActions, as: GoogleApi.Compute.V1.Model.InstanceGroupManagerActionsSummary)
  field(:description)
  field(:distributionPolicy, as: GoogleApi.Compute.V1.Model.DistributionPolicy)
  field(:fingerprint)
  field(:id)
  field(:instanceGroup)
  field(:instanceTemplate)
  field(:kind)
  field(:name)
  field(:namedPorts, as: GoogleApi.Compute.V1.Model.NamedPort, type: :list)
  field(:region)
  field(:selfLink)
  field(:statefulPolicy, as: GoogleApi.Compute.V1.Model.StatefulPolicy)
  field(:status, as: GoogleApi.Compute.V1.Model.InstanceGroupManagerStatus)
  field(:targetPools, type: :list)
  field(:targetSize)
  field(:updatePolicy, as: GoogleApi.Compute.V1.Model.InstanceGroupManagerUpdatePolicy)
  field(:versions, as: GoogleApi.Compute.V1.Model.InstanceGroupManagerVersion, type: :list)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManager do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroupManager.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManager do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
