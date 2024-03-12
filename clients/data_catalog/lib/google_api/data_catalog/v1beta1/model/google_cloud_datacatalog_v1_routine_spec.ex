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

defmodule GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1RoutineSpec do
  @moduledoc """
  Specification that applies to a routine. Valid only for entries with the `ROUTINE` type.

  ## Attributes

  *   `bigqueryRoutineSpec` (*type:* `GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1BigQueryRoutineSpec.t`, *default:* `nil`) - Fields specific for BigQuery routines.
  *   `definitionBody` (*type:* `String.t`, *default:* `nil`) - The body of the routine.
  *   `language` (*type:* `String.t`, *default:* `nil`) - The language the routine is written in. The exact value depends on the source system. For BigQuery routines, possible values are: * `SQL` * `JAVASCRIPT`
  *   `returnType` (*type:* `String.t`, *default:* `nil`) - Return type of the argument. The exact value depends on the source system and the language.
  *   `routineArguments` (*type:* `list(GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1RoutineSpecArgument.t)`, *default:* `nil`) - Arguments of the routine.
  *   `routineType` (*type:* `String.t`, *default:* `nil`) - The type of the routine.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigqueryRoutineSpec =>
            GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1BigQueryRoutineSpec.t()
            | nil,
          :definitionBody => String.t() | nil,
          :language => String.t() | nil,
          :returnType => String.t() | nil,
          :routineArguments =>
            list(
              GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1RoutineSpecArgument.t()
            )
            | nil,
          :routineType => String.t() | nil
        }

  field(:bigqueryRoutineSpec,
    as: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1BigQueryRoutineSpec
  )

  field(:definitionBody)
  field(:language)
  field(:returnType)

  field(:routineArguments,
    as: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1RoutineSpecArgument,
    type: :list
  )

  field(:routineType)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1RoutineSpec do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1RoutineSpec.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1RoutineSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
