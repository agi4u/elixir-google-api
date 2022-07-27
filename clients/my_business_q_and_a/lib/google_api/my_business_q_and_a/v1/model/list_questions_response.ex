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

defmodule GoogleApi.MyBusinessQAndA.V1.Model.ListQuestionsResponse do
  @moduledoc """
  Response message for QuestionsAndAnswers.ListQuestions

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If the number of questions exceeds the requested max page size, this field is populated with a token to fetch the next page of questions on a subsequent call. If there are no more questions, this field is not present in the response.
  *   `questions` (*type:* `list(GoogleApi.MyBusinessQAndA.V1.Model.Question.t)`, *default:* `nil`) - The requested questions,
  *   `totalSize` (*type:* `integer()`, *default:* `nil`) - The total number of questions posted for this location across all pages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :questions => list(GoogleApi.MyBusinessQAndA.V1.Model.Question.t()) | nil,
          :totalSize => integer() | nil
        }

  field(:nextPageToken)
  field(:questions, as: GoogleApi.MyBusinessQAndA.V1.Model.Question, type: :list)
  field(:totalSize)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessQAndA.V1.Model.ListQuestionsResponse do
  def decode(value, options) do
    GoogleApi.MyBusinessQAndA.V1.Model.ListQuestionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessQAndA.V1.Model.ListQuestionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end