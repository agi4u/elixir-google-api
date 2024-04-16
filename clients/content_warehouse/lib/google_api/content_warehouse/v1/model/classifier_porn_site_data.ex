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

defmodule GoogleApi.ContentWarehouse.V1.Model.ClassifierPornSiteData do
  @moduledoc """
  Next ID: 53

  ## Attributes

  *   `avgPedoPageScore` (*type:* `number()`, *default:* `nil`) - The average pedo page score for the site.
  *   `finalPedoSiteScore` (*type:* `number()`, *default:* `nil`) - 
  *   `numberOfPages` (*type:* `String.t`, *default:* `nil`) - The number of pages that were used to compute the scores and ratios.
  *   `numberOfPedoPages` (*type:* `String.t`, *default:* `nil`) - The number of pages with pedo restrict.
  *   `site` (*type:* `String.t`, *default:* `nil`) - Sitechunk used to compute the signals. The field is present only for data created after December 2022.
  *   `sitePornRatio` (*type:* `number()`, *default:* `nil`) - The ratio of porn/softporn of the site this page belongs to.
  *   `siteSoftpornRatio` (*type:* `number()`, *default:* `nil`) - 
  *   `versionedscore` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ClassifierPornSiteDataVersionedScore.t)`, *default:* `nil`) - 
  *   `violenceScore` (*type:* `number()`, *default:* `nil`) - The cubic mean aggregation of violence page scores in the site.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :avgPedoPageScore => number() | nil,
          :finalPedoSiteScore => number() | nil,
          :numberOfPages => String.t() | nil,
          :numberOfPedoPages => String.t() | nil,
          :site => String.t() | nil,
          :sitePornRatio => number() | nil,
          :siteSoftpornRatio => number() | nil,
          :versionedscore =>
            list(GoogleApi.ContentWarehouse.V1.Model.ClassifierPornSiteDataVersionedScore.t())
            | nil,
          :violenceScore => number() | nil
        }

  field(:avgPedoPageScore)
  field(:finalPedoSiteScore)
  field(:numberOfPages)
  field(:numberOfPedoPages)
  field(:site)
  field(:sitePornRatio)
  field(:siteSoftpornRatio)

  field(:versionedscore,
    as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornSiteDataVersionedScore,
    type: :list
  )

  field(:violenceScore)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornSiteData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ClassifierPornSiteData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornSiteData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
