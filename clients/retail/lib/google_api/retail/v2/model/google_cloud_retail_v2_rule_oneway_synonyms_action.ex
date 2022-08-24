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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleOnewaySynonymsAction do
  @moduledoc """
  Maps a set of terms to a set of synonyms. Set of synonyms will be treated as synonyms of each query term only. `query_terms` will not be treated as synonyms of each other. Example: "sneakers" will use a synonym of "shoes". "shoes" will not use a synonym of "sneakers".

  ## Attributes

  *   `onewayTerms` (*type:* `list(String.t)`, *default:* `nil`) - Will be [deprecated = true] post migration;
  *   `queryTerms` (*type:* `list(String.t)`, *default:* `nil`) - Terms from the search query. Will treat synonyms as their synonyms. Not themselves synonyms of the synonyms. Can specify up to 100 terms.
  *   `synonyms` (*type:* `list(String.t)`, *default:* `nil`) - Defines a set of synonyms. Cannot contain duplicates. Can specify up to 100 synonyms.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :onewayTerms => list(String.t()) | nil,
          :queryTerms => list(String.t()) | nil,
          :synonyms => list(String.t()) | nil
        }

  field(:onewayTerms, type: :list)
  field(:queryTerms, type: :list)
  field(:synonyms, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleOnewaySynonymsAction do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleOnewaySynonymsAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleOnewaySynonymsAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end