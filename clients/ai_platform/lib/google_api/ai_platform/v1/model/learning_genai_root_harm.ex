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

defmodule GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarm do
  @moduledoc """


  ## Attributes

  *   `contextualDangerous` (*type:* `boolean()`, *default:* `nil`) - Please do not use, this is still under development.
  *   `csam` (*type:* `boolean()`, *default:* `nil`) - 
  *   `fringe` (*type:* `boolean()`, *default:* `nil`) - 
  *   `grailImageHarmType` (*type:* `GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarmGrailImageHarmType.t`, *default:* `nil`) - 
  *   `grailTextHarmType` (*type:* `GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarmGrailTextHarmType.t`, *default:* `nil`) - 
  *   `imageChild` (*type:* `boolean()`, *default:* `nil`) - 
  *   `imageCsam` (*type:* `boolean()`, *default:* `nil`) - 
  *   `imagePedo` (*type:* `boolean()`, *default:* `nil`) - 
  *   `imagePorn` (*type:* `boolean()`, *default:* `nil`) - Image signals
  *   `imageViolence` (*type:* `boolean()`, *default:* `nil`) - 
  *   `pqc` (*type:* `boolean()`, *default:* `nil`) - 
  *   `safetycat` (*type:* `GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarmSafetyCatCategories.t`, *default:* `nil`) - 
  *   `spii` (*type:* `GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarmSpiiFilter.t`, *default:* `nil`) - Spii Filter uses buckets http://google3/google/privacy/dlp/v2/storage.proto;l=77;rcl=584719820 to classify the input. LMRoot converts the bucket into double score. For example the score for "POSSIBLE" is 3 / 5 = 0.6 .
  *   `threshold` (*type:* `float()`, *default:* `nil`) - 
  *   `videoFrameChild` (*type:* `boolean()`, *default:* `nil`) - 
  *   `videoFrameCsam` (*type:* `boolean()`, *default:* `nil`) - 
  *   `videoFramePedo` (*type:* `boolean()`, *default:* `nil`) - 
  *   `videoFramePorn` (*type:* `boolean()`, *default:* `nil`) - Video frame signals
  *   `videoFrameViolence` (*type:* `boolean()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contextualDangerous => boolean() | nil,
          :csam => boolean() | nil,
          :fringe => boolean() | nil,
          :grailImageHarmType =>
            GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarmGrailImageHarmType.t() | nil,
          :grailTextHarmType =>
            GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarmGrailTextHarmType.t() | nil,
          :imageChild => boolean() | nil,
          :imageCsam => boolean() | nil,
          :imagePedo => boolean() | nil,
          :imagePorn => boolean() | nil,
          :imageViolence => boolean() | nil,
          :pqc => boolean() | nil,
          :safetycat =>
            GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarmSafetyCatCategories.t() | nil,
          :spii => GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarmSpiiFilter.t() | nil,
          :threshold => float() | nil,
          :videoFrameChild => boolean() | nil,
          :videoFrameCsam => boolean() | nil,
          :videoFramePedo => boolean() | nil,
          :videoFramePorn => boolean() | nil,
          :videoFrameViolence => boolean() | nil
        }

  field(:contextualDangerous)
  field(:csam)
  field(:fringe)

  field(:grailImageHarmType,
    as: GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarmGrailImageHarmType
  )

  field(:grailTextHarmType,
    as: GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarmGrailTextHarmType
  )

  field(:imageChild)
  field(:imageCsam)
  field(:imagePedo)
  field(:imagePorn)
  field(:imageViolence)
  field(:pqc)
  field(:safetycat, as: GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarmSafetyCatCategories)
  field(:spii, as: GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarmSpiiFilter)
  field(:threshold)
  field(:videoFrameChild)
  field(:videoFrameCsam)
  field(:videoFramePedo)
  field(:videoFramePorn)
  field(:videoFrameViolence)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarm do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarm.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.LearningGenaiRootHarm do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
