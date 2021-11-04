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

defmodule GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1Operation do
  @moduledoc """
  Contains an operation for a resource loosely based on the JSON-PATCH format with support for: * Custom filters for describing partial array patch. * Extended path values for describing nested arrays. * Custom fields for describing the resource for which the operation is being described. * Allows extension to custom operations not natively supported by RFC6902. See https://tools.ietf.org/html/rfc6902 for details on the original RFC.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Type of this operation. Contains one of 'add', 'remove', 'replace', 'move', 'copy', 'test' and custom operations. This field is case-insensitive and always populated.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Path to the target field being operated on. If the operation is at the resource level, then path should be "/". This field is always populated.
  *   `pathFilters` (*type:* `map()`, *default:* `nil`) - Set of filters to apply if `path` refers to array elements or nested array elements in order to narrow down to a single unique element that is being tested/modified. This is intended to be an exact match per filter. To perform advanced matching, use path_value_matchers. * Example: ``` { "/versions/*/name" : "it-123" "/versions/*/targetSize/percent": 20 } ``` * Example: ``` { "/bindings/*/role": "roles/owner" "/bindings/*/condition" : null } ``` * Example: ``` { "/bindings/*/role": "roles/owner" "/bindings/*/members/*" : ["x@example.com", "y@example.com"] } ``` When both path_filters and path_value_matchers are set, an implicit AND must be performed.
  *   `pathValueMatchers` (*type:* `%{optional(String.t) => GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1ValueMatcher.t}`, *default:* `nil`) - Similar to path_filters, this contains set of filters to apply if `path` field refers to array elements. This is meant to support value matching beyond exact match. To perform exact match, use path_filters. When both path_filters and path_value_matchers are set, an implicit AND must be performed.
  *   `resource` (*type:* `String.t`, *default:* `nil`) - Contains the fully qualified resource name. This field is always populated. ex: //cloudresourcemanager.googleapis.com/projects/foo.
  *   `resourceType` (*type:* `String.t`, *default:* `nil`) - Type of GCP resource being modified/tested. This field is always populated. Example: cloudresourcemanager.googleapis.com/Project, compute.googleapis.com/Instance
  *   `sourcePath` (*type:* `String.t`, *default:* `nil`) - Can be set with action 'copy' or 'move' to indicate the source field within resource or source_resource, ignored if provided for other operation types.
  *   `sourceResource` (*type:* `String.t`, *default:* `nil`) - Can be set with action 'copy' to copy resource configuration across different resources of the same type. Example: A resource clone can be done via action = 'copy', path = "/", from = "/", source_resource = and resource_name = . This field is empty for all other values of `action`.
  *   `value` (*type:* `any()`, *default:* `nil`) - Value for the `path` field. Will be set for actions:'add'/'replace'. Maybe set for action: 'test'. Either this or `value_matcher` will be set for 'test' operation. An exact match must be performed.
  *   `valueMatcher` (*type:* `GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1ValueMatcher.t`, *default:* `nil`) - Can be set for action 'test' for advanced matching for the value of 'path' field. Either this or `value` will be set for 'test' operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :path => String.t() | nil,
          :pathFilters => map() | nil,
          :pathValueMatchers =>
            %{
              optional(String.t()) =>
                GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1ValueMatcher.t()
            }
            | nil,
          :resource => String.t() | nil,
          :resourceType => String.t() | nil,
          :sourcePath => String.t() | nil,
          :sourceResource => String.t() | nil,
          :value => any() | nil,
          :valueMatcher =>
            GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1ValueMatcher.t() | nil
        }

  field(:action)
  field(:path)
  field(:pathFilters, type: :map)

  field(:pathValueMatchers,
    as: GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1ValueMatcher,
    type: :map
  )

  field(:resource)
  field(:resourceType)
  field(:sourcePath)
  field(:sourceResource)
  field(:value)
  field(:valueMatcher, as: GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1ValueMatcher)
end

defimpl Poison.Decoder, for: GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1Operation do
  def decode(value, options) do
    GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1Operation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1Operation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
