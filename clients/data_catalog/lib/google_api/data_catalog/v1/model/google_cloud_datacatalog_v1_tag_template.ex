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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1TagTemplate do
  @moduledoc """
  A tag template defines a tag that can have one or more typed fields. The template is used to create tags that are attached to Google Cloud resources. [Tag template roles] (https://cloud.google.com/iam/docs/understanding-roles#data-catalog-roles) provide permissions to create, edit, and use the template. For example, see the [TagTemplate User] (https://cloud.google.com/data-catalog/docs/how-to/template-user) role that includes a permission to use the tag template to tag resources.

  ## Attributes

  *   `dataplexTransferStatus` (*type:* `String.t`, *default:* `nil`) - Optional. Transfer status of the TagTemplate
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name for this template. Defaults to an empty string. The name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or end with spaces. The maximum length is 200 characters.
  *   `fields` (*type:* `%{optional(String.t) => GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1TagTemplateField.t}`, *default:* `nil`) - Required. Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. The map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. The IDs have the following limitations: * Can contain uppercase and lowercase letters, numbers (0-9) and underscores (_). * Must be at least 1 character and at most 64 characters long. * Must start with a letter or underscore.
  *   `isPubliclyReadable` (*type:* `boolean()`, *default:* `nil`) - Indicates whether tags created with this template are public. Public tags do not require tag template access to appear in ListTags API response. Additionally, you can search for a public tag by value with a simple search query in addition to using a ``tag:`` predicate.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. The resource name of the tag template in URL format. Note: The tag template itself and its child resources might not be stored in the location specified in its name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataplexTransferStatus => String.t() | nil,
          :displayName => String.t() | nil,
          :fields =>
            %{
              optional(String.t()) =>
                GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1TagTemplateField.t()
            }
            | nil,
          :isPubliclyReadable => boolean() | nil,
          :name => String.t() | nil
        }

  field(:dataplexTransferStatus)
  field(:displayName)

  field(:fields,
    as: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1TagTemplateField,
    type: :map
  )

  field(:isPubliclyReadable)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1TagTemplate do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1TagTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1TagTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
