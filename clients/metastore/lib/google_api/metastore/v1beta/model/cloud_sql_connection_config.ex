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

defmodule GoogleApi.Metastore.V1beta.Model.CloudSQLConnectionConfig do
  @moduledoc """
  Configuration information to establish customer database connection before the cutover phase of migration

  ## Attributes

  *   `hiveDatabaseName` (*type:* `String.t`, *default:* `nil`) - Required. The hive database name.
  *   `instanceConnectionName` (*type:* `String.t`, *default:* `nil`) - Required. Cloud SQL database connection name (project_id:region:instance_name)
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - Required. The private IP address of the Cloud SQL instance.
  *   `natSubnet` (*type:* `String.t`, *default:* `nil`) - Required. The relative resource name of the subnetwork to be used for Private Service Connect. Note that this cannot be a regular subnet and is used only for NAT. (https://cloud.google.com/vpc/docs/about-vpc-hosted-services#psc-subnets) This subnet is used to publish the SOCKS5 proxy service. The subnet size must be at least /29 and it should reside in a network through which the Cloud SQL instance is accessible. The resource name should be in the format, projects/{project_id}/regions/{region_id}/subnetworks/{subnetwork_id}
  *   `password` (*type:* `String.t`, *default:* `nil`) - Required. Input only. The password for the user that Dataproc Metastore service will be using to connect to the database. This field is not returned on request.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Required. The network port of the database.
  *   `proxySubnet` (*type:* `String.t`, *default:* `nil`) - Required. The relative resource name of the subnetwork to deploy the SOCKS5 proxy service in. The subnetwork should reside in a network through which the Cloud SQL instance is accessible. The resource name should be in the format, projects/{project_id}/regions/{region_id}/subnetworks/{subnetwork_id}
  *   `username` (*type:* `String.t`, *default:* `nil`) - Required. The username that Dataproc Metastore service will use to connect to the database.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hiveDatabaseName => String.t() | nil,
          :instanceConnectionName => String.t() | nil,
          :ipAddress => String.t() | nil,
          :natSubnet => String.t() | nil,
          :password => String.t() | nil,
          :port => integer() | nil,
          :proxySubnet => String.t() | nil,
          :username => String.t() | nil
        }

  field(:hiveDatabaseName)
  field(:instanceConnectionName)
  field(:ipAddress)
  field(:natSubnet)
  field(:password)
  field(:port)
  field(:proxySubnet)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1beta.Model.CloudSQLConnectionConfig do
  def decode(value, options) do
    GoogleApi.Metastore.V1beta.Model.CloudSQLConnectionConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1beta.Model.CloudSQLConnectionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
