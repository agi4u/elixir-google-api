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

defmodule GoogleApi.SecurityCenter.V1.Model.Container do
  @moduledoc """
  Container associated with the finding.

  ## Attributes

  *   `imageId` (*type:* `String.t`, *default:* `nil`) - Optional container image id, when provided by the container runtime. Uniquely identifies the container image launched using a container image digest.
  *   `labels` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.Label.t)`, *default:* `nil`) - Container labels, as provided by the container runtime.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Container name.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Container image URI provided when configuring a pod/container. May identify a container image version using mutable tags.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imageId => String.t() | nil,
          :labels => list(GoogleApi.SecurityCenter.V1.Model.Label.t()) | nil,
          :name => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:imageId)
  field(:labels, as: GoogleApi.SecurityCenter.V1.Model.Label, type: :list)
  field(:name)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.Container do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.Container.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.Container do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
