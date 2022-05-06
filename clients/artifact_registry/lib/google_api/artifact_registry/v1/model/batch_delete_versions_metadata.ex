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

defmodule GoogleApi.ArtifactRegistry.V1.Model.BatchDeleteVersionsMetadata do
  @moduledoc """
  The metadata of an LRO from deleting multiple versions.

  ## Attributes

  *   `failedVersions` (*type:* `list(String.t)`, *default:* `nil`) - The versions the operation failed to delete.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :failedVersions => list(String.t()) | nil
        }

  field(:failedVersions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ArtifactRegistry.V1.Model.BatchDeleteVersionsMetadata do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1.Model.BatchDeleteVersionsMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ArtifactRegistry.V1.Model.BatchDeleteVersionsMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
