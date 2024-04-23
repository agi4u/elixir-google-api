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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Entry do
  @moduledoc """
  An entry is a representation of a data asset which can be described by various metadata.

  ## Attributes

  *   `aspects` (*type:* `%{optional(String.t) => GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Aspect.t}`, *default:* `nil`) - Optional. The Aspects attached to the Entry. The format for the key can be one of the following: 1. {projectId}.{locationId}.{aspectTypeId} (if the aspect is attached directly to the entry) 2. {projectId}.{locationId}.{aspectTypeId}@{path} (if the aspect is attached to an entry's path)
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the Entry was created.
  *   `entrySource` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EntrySource.t`, *default:* `nil`) - Optional. Source system related information for an entry.
  *   `entryType` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The resource name of the EntryType used to create this Entry.
  *   `fullyQualifiedName` (*type:* `String.t`, *default:* `nil`) - Optional. A name for the entry that can reference it in an external system. The maximum size of the field is 4000 characters.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. The relative resource name of the Entry, of the form: projects/{project}/locations/{location}/entryGroups/{entry_group}/entries/{entry}.
  *   `parentEntry` (*type:* `String.t`, *default:* `nil`) - Optional. Immutable. The resource name of the parent entry.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the Entry was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aspects =>
            %{optional(String.t()) => GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Aspect.t()}
            | nil,
          :createTime => DateTime.t() | nil,
          :entrySource => GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EntrySource.t() | nil,
          :entryType => String.t() | nil,
          :fullyQualifiedName => String.t() | nil,
          :name => String.t() | nil,
          :parentEntry => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:aspects, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Aspect, type: :map)
  field(:createTime, as: DateTime)
  field(:entrySource, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EntrySource)
  field(:entryType)
  field(:fullyQualifiedName)
  field(:name)
  field(:parentEntry)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Entry do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Entry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Entry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
