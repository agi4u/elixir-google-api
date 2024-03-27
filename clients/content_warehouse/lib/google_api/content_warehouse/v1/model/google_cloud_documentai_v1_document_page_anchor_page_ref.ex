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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef do
  @moduledoc """
  Represents a weak reference to a page element within a document.

  ## Attributes

  *   `boundingPoly` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1BoundingPoly.t`, *default:* `nil`) - Optional. Identifies the bounding polygon of a layout element on the page. If `layout_type` is set, the bounding polygon must be exactly the same to the layout element it's referring to.
  *   `confidence` (*type:* `number()`, *default:* `nil`) - Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.
  *   `layoutId` (*type:* `String.t`, *default:* `nil`) - Optional. Deprecated. Use PageRef.bounding_poly instead.
  *   `layoutType` (*type:* `String.t`, *default:* `nil`) - Optional. The type of the layout element that is being referenced if any.
  *   `page` (*type:* `String.t`, *default:* `nil`) - Required. Index into the Document.pages element, for example using `Document.pages` to locate the related page element. This field is skipped when its value is the default `0`. See https://developers.google.com/protocol-buffers/docs/proto3#json.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingPoly =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1BoundingPoly.t() | nil,
          :confidence => number() | nil,
          :layoutId => String.t() | nil,
          :layoutType => String.t() | nil,
          :page => String.t() | nil
        }

  field(:boundingPoly, as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1BoundingPoly)

  field(:confidence)
  field(:layoutId)
  field(:layoutType)
  field(:page)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
