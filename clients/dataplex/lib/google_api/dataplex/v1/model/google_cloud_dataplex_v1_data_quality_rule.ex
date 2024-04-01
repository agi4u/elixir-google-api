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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRule do
  @moduledoc """
  A rule captures data quality intent about a data source.

  ## Attributes

  *   `column` (*type:* `String.t`, *default:* `nil`) - Optional. The unnested column which this rule is evaluated against.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the rule. The maximum length is 1,024 characters.
  *   `dimension` (*type:* `String.t`, *default:* `nil`) - Required. The dimension a rule belongs to. Results are also aggregated at the dimension level. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "INTEGRITY"
  *   `ignoreNull` (*type:* `boolean()`, *default:* `nil`) - Optional. Rows with null values will automatically fail a rule, unless ignore_null is true. In that case, such null rows are trivially considered passing.This field is only valid for the following type of rules: RangeExpectation RegexExpectation SetExpectation UniquenessExpectation
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. A mutable name for the rule. The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-). The maximum length is 63 characters. Must start with a letter. Must end with a number or a letter.
  *   `nonNullExpectation` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleNonNullExpectation.t`, *default:* `nil`) - Row-level rule which evaluates whether each column value is null.
  *   `rangeExpectation` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRangeExpectation.t`, *default:* `nil`) - Row-level rule which evaluates whether each column value lies between a specified range.
  *   `regexExpectation` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRegexExpectation.t`, *default:* `nil`) - Row-level rule which evaluates whether each column value matches a specified regex.
  *   `rowConditionExpectation` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation.t`, *default:* `nil`) - Row-level rule which evaluates whether each row in a table passes the specified condition.
  *   `setExpectation` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleSetExpectation.t`, *default:* `nil`) - Row-level rule which evaluates whether each column value is contained by a specified set.
  *   `sqlAssertion` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleSqlAssertion.t`, *default:* `nil`) - Aggregate rule which evaluates the number of rows returned for the provided statement.
  *   `statisticRangeExpectation` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation.t`, *default:* `nil`) - Aggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  *   `tableConditionExpectation` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation.t`, *default:* `nil`) - Aggregate rule which evaluates whether the provided expression is true for a table.
  *   `threshold` (*type:* `float()`, *default:* `nil`) - Optional. The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of 0.0, 1.0.0 indicates default value (i.e. 1.0).This field is only valid for row-level type rules.
  *   `uniquenessExpectation` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation.t`, *default:* `nil`) - Row-level rule which evaluates whether each column value is unique.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :column => String.t() | nil,
          :description => String.t() | nil,
          :dimension => String.t() | nil,
          :ignoreNull => boolean() | nil,
          :name => String.t() | nil,
          :nonNullExpectation =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleNonNullExpectation.t()
            | nil,
          :rangeExpectation =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRangeExpectation.t()
            | nil,
          :regexExpectation =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRegexExpectation.t()
            | nil,
          :rowConditionExpectation =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation.t()
            | nil,
          :setExpectation =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleSetExpectation.t()
            | nil,
          :sqlAssertion =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleSqlAssertion.t() | nil,
          :statisticRangeExpectation =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation.t()
            | nil,
          :tableConditionExpectation =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation.t()
            | nil,
          :threshold => float() | nil,
          :uniquenessExpectation =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation.t()
            | nil
        }

  field(:column)
  field(:description)
  field(:dimension)
  field(:ignoreNull)
  field(:name)

  field(:nonNullExpectation,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleNonNullExpectation
  )

  field(:rangeExpectation,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRangeExpectation
  )

  field(:regexExpectation,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRegexExpectation
  )

  field(:rowConditionExpectation,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation
  )

  field(:setExpectation,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleSetExpectation
  )

  field(:sqlAssertion,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleSqlAssertion
  )

  field(:statisticRangeExpectation,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation
  )

  field(:tableConditionExpectation,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation
  )

  field(:threshold)

  field(:uniquenessExpectation,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRule do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
