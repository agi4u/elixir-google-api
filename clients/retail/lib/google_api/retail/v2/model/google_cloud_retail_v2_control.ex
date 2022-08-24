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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Control do
  @moduledoc """
  Configures dynamic metadata that can be linked to a ServingConfig and affect search or recommendation results at serving time.

  ## Attributes

  *   `associatedServingConfigIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. List of serving configuration ids that are associated with this control in the same Catalog. Note the association is managed via the ServingConfig, this is an output only denormalized view.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The human readable control display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is thrown.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*`
  *   `rule` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Rule.t`, *default:* `nil`) - A rule control - a condition-action pair. Enacts a set action when the condition is triggered. For example: Boost "gShoe" when query full matches "Running Shoes".
  *   `searchSolutionUseCase` (*type:* `list(String.t)`, *default:* `nil`) - Specifies the use case for the control. Affects what condition fields can be set. Only settable by search controls. Will default to SEARCH_SOLUTION_USE_CASE_SEARCH if not specified. Currently only allow one search_solution_use_case per control.
  *   `solutionTypes` (*type:* `list(String.t)`, *default:* `nil`) - Required. Immutable. The solution types that the control is used for. Currently we support setting only one type of solution at creation time. Only `SOLUTION_TYPE_SEARCH` value is supported at the moment. If no solution type is provided at creation time, will default to SOLUTION_TYPE_SEARCH.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :associatedServingConfigIds => list(String.t()) | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :rule => GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Rule.t() | nil,
          :searchSolutionUseCase => list(String.t()) | nil,
          :solutionTypes => list(String.t()) | nil
        }

  field(:associatedServingConfigIds, type: :list)
  field(:displayName)
  field(:name)
  field(:rule, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Rule)
  field(:searchSolutionUseCase, type: :list)
  field(:solutionTypes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Control do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Control.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Control do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end