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

defmodule GoogleApi.AIPlatform.V1.Model.LanguageLabsAidaTrustRecitationProtoDocAttribution do
  @moduledoc """
  The proto defines the attribution information for a document using whatever fields are most applicable for that document's datasource. For example, a Wikipedia article's attribution is in the form of its article title, a website is in the form of a URL, and a Github repo is in the form of a repo name. Next id: 30

  ## Attributes

  *   `amarnaId` (*type:* `String.t`, *default:* `nil`) - 
  *   `arxivId` (*type:* `String.t`, *default:* `nil`) - 
  *   `author` (*type:* `String.t`, *default:* `nil`) - 
  *   `bibkey` (*type:* `String.t`, *default:* `nil`) - 
  *   `biorxivId` (*type:* `String.t`, *default:* `nil`) - ID of the paper in bioarxiv like ddoi.org/{biorxiv_id} eg: https://doi.org/10.1101/343517
  *   `bookTitle` (*type:* `String.t`, *default:* `nil`) - 
  *   `bookVolumeId` (*type:* `String.t`, *default:* `nil`) - The Oceanographers full-view books dataset uses a 'volume id' as the unique ID of a book. There is a deterministic function from a volume id to a URL under the books.google.com domain. Marked as 'optional' since a volume ID of zero is potentially possible and we want to distinguish that from the volume ID not being set.
  *   `category` (*type:* `String.t`, *default:* `nil`) - 
  *   `conversationId` (*type:* `String.t`, *default:* `nil`) - 
  *   `dataset` (*type:* `String.t`, *default:* `nil`) - The dataset this document comes from.
  *   `filepath` (*type:* `String.t`, *default:* `nil`) - 
  *   `geminiId` (*type:* `String.t`, *default:* `nil`) - 
  *   `gnewsArticleTitle` (*type:* `String.t`, *default:* `nil`) - 
  *   `goodallExampleId` (*type:* `String.t`, *default:* `nil`) - 
  *   `isOptOut` (*type:* `boolean()`, *default:* `nil`) - Whether the document is opted out.
  *   `isPrompt` (*type:* `boolean()`, *default:* `nil`) - 
  *   `lamdaExampleId` (*type:* `String.t`, *default:* `nil`) - 
  *   `license` (*type:* `String.t`, *default:* `nil`) - 
  *   `meenaConversationId` (*type:* `String.t`, *default:* `nil`) - 
  *   `naturalLanguageCode` (*type:* `String.t`, *default:* `nil`) - Natural (not programming) language of the document. Language code as defined by http://www.unicode.org/reports/tr35/#Identifiers and https://tools.ietf.org/html/bcp47. Currently applicable to full-view books. Use docinfo-util.h to set & read language fields. See go/iii.
  *   `noAttribution` (*type:* `boolean()`, *default:* `nil`) - True if this doc has no attribution information available. We use an explicit field for this instead of just implicitly leaving all the DocAttribution fields blank to distinguish a case where a bug/oversight has left the attribution information empty vs when we really have no attribution information available.
  *   `podcastUtteranceId` (*type:* `String.t`, *default:* `nil`) - 
  *   `publicationDate` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleTypeDate.t`, *default:* `nil`) - 
  *   `qualityScoreExperimentOnly` (*type:* `float()`, *default:* `nil`) - This field is for opt-out experiment only, MUST never be used during actual production/serving. 
  *   `repo` (*type:* `String.t`, *default:* `nil`) - Github repository
  *   `url` (*type:* `String.t`, *default:* `nil`) - URL of a webdoc
  *   `volumeId` (*type:* `String.t`, *default:* `nil`) - 
  *   `wikipediaArticleTitle` (*type:* `String.t`, *default:* `nil`) - Wikipedia article title. The Wikipedia TFDS dataset includes article titles but not URLs. While a URL is to the best of our knowledge a deterministic function of the title, we store the original title to reflect the information in the original dataset.
  *   `youtubeVideoId` (*type:* `String.t`, *default:* `nil`) - The unique video id from Youtube. Example: AkoGsW52Ir0
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amarnaId => String.t() | nil,
          :arxivId => String.t() | nil,
          :author => String.t() | nil,
          :bibkey => String.t() | nil,
          :biorxivId => String.t() | nil,
          :bookTitle => String.t() | nil,
          :bookVolumeId => String.t() | nil,
          :category => String.t() | nil,
          :conversationId => String.t() | nil,
          :dataset => String.t() | nil,
          :filepath => String.t() | nil,
          :geminiId => String.t() | nil,
          :gnewsArticleTitle => String.t() | nil,
          :goodallExampleId => String.t() | nil,
          :isOptOut => boolean() | nil,
          :isPrompt => boolean() | nil,
          :lamdaExampleId => String.t() | nil,
          :license => String.t() | nil,
          :meenaConversationId => String.t() | nil,
          :naturalLanguageCode => String.t() | nil,
          :noAttribution => boolean() | nil,
          :podcastUtteranceId => String.t() | nil,
          :publicationDate => GoogleApi.AIPlatform.V1.Model.GoogleTypeDate.t() | nil,
          :qualityScoreExperimentOnly => float() | nil,
          :repo => String.t() | nil,
          :url => String.t() | nil,
          :volumeId => String.t() | nil,
          :wikipediaArticleTitle => String.t() | nil,
          :youtubeVideoId => String.t() | nil
        }

  field(:amarnaId)
  field(:arxivId)
  field(:author)
  field(:bibkey)
  field(:biorxivId)
  field(:bookTitle)
  field(:bookVolumeId)
  field(:category)
  field(:conversationId)
  field(:dataset)
  field(:filepath)
  field(:geminiId)
  field(:gnewsArticleTitle)
  field(:goodallExampleId)
  field(:isOptOut)
  field(:isPrompt)
  field(:lamdaExampleId)
  field(:license)
  field(:meenaConversationId)
  field(:naturalLanguageCode)
  field(:noAttribution)
  field(:podcastUtteranceId)
  field(:publicationDate, as: GoogleApi.AIPlatform.V1.Model.GoogleTypeDate)
  field(:qualityScoreExperimentOnly)
  field(:repo)
  field(:url)
  field(:volumeId)
  field(:wikipediaArticleTitle)
  field(:youtubeVideoId)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.LanguageLabsAidaTrustRecitationProtoDocAttribution do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.LanguageLabsAidaTrustRecitationProtoDocAttribution.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.LanguageLabsAidaTrustRecitationProtoDocAttribution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
