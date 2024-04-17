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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec do
  @moduledoc """
  A specification for configuring the extractive content in a search response.

  ## Attributes

  *   `maxExtractiveAnswerCount` (*type:* `integer()`, *default:* `nil`) - The maximum number of extractive answers returned in each search result. An extractive answer is a verbatim answer extracted from the original document, which provides a precise and contextually relevant answer to the search query. If the number of matching answers is less than the `max_extractive_answer_count`, return all of the answers. Otherwise, return the `max_extractive_answer_count`. At most five answers are returned for each SearchResult.
  *   `maxExtractiveSegmentCount` (*type:* `integer()`, *default:* `nil`) - The max number of extractive segments returned in each search result. Only applied if the DataStore is set to DataStore.ContentConfig.CONTENT_REQUIRED or DataStore.solution_types is SOLUTION_TYPE_CHAT. An extractive segment is a text segment extracted from the original document that is relevant to the search query, and, in general, more verbose than an extractive answer. The segment could then be used as input for LLMs to generate summaries and answers. If the number of matching segments is less than `max_extractive_segment_count`, return all of the segments. Otherwise, return the `max_extractive_segment_count`.
  *   `numNextSegments` (*type:* `integer()`, *default:* `nil`) - Return at most `num_next_segments` segments after each selected segments.
  *   `numPreviousSegments` (*type:* `integer()`, *default:* `nil`) - Specifies whether to also include the adjacent from each selected segments. Return at most `num_previous_segments` segments before each selected segments.
  *   `returnExtractiveSegmentScore` (*type:* `boolean()`, *default:* `nil`) - Specifies whether to return the confidence score from the extractive segments in each search result. This feature is available only for new or allowlisted data stores. To allowlist your data store, contact your Customer Engineer. The default value is `false`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxExtractiveAnswerCount => integer() | nil,
          :maxExtractiveSegmentCount => integer() | nil,
          :numNextSegments => integer() | nil,
          :numPreviousSegments => integer() | nil,
          :returnExtractiveSegmentScore => boolean() | nil
        }

  field(:maxExtractiveAnswerCount)
  field(:maxExtractiveSegmentCount)
  field(:numNextSegments)
  field(:numPreviousSegments)
  field(:returnExtractiveSegmentScore)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
