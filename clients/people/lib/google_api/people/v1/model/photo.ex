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

defmodule GoogleApi.People.V1.Model.Photo do
  @moduledoc """
  A person's photo. A picture shown next to the person's name to help others recognize the person.

  ## Attributes

  *   `default` (*type:* `boolean()`, *default:* `nil`) - True if the photo is a default photo; false if the photo is a user-provided photo.
  *   `metadata` (*type:* `GoogleApi.People.V1.Model.FieldMetadata.t`, *default:* `nil`) - Metadata about the photo.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The URL of the photo. You can change the desired size by appending a query parameter `sz={size}` at the end of the url, where {size} is the size in pixels. Example: https://lh3.googleusercontent.com/-T_wVWLlmg7w/AAAAAAAAAAI/AAAAAAAABa8/00gzXvDBYqw/s100/photo.jpg?sz=50
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :default => boolean(),
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t(),
          :url => String.t()
        }

  field(:default)
  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Photo do
  def decode(value, options) do
    GoogleApi.People.V1.Model.Photo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.Photo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
