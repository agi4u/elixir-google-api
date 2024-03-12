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

defmodule GoogleApi.BigQuery.V2.Model.SparkOptions do
  @moduledoc """
  Options for a user-defined Spark routine.

  ## Attributes

  *   `archiveUris` (*type:* `list(String.t)`, *default:* `nil`) - Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  *   `connection` (*type:* `String.t`, *default:* `nil`) - Fully qualified name of the user-provided Spark connection object. Format: ```"projects/{project_id}/locations/{location_id}/connections/{connection_id}"```
  *   `containerImage` (*type:* `String.t`, *default:* `nil`) - Custom container image for the runtime environment.
  *   `fileUris` (*type:* `list(String.t)`, *default:* `nil`) - Files to be placed in the working directory of each executor. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  *   `jarUris` (*type:* `list(String.t)`, *default:* `nil`) - JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  *   `mainClass` (*type:* `String.t`, *default:* `nil`) - The fully qualified name of a class in jar_uris, for example, com.example.wordcount. Exactly one of main_class and main_jar_uri field should be set for Java/Scala language type.
  *   `mainFileUri` (*type:* `String.t`, *default:* `nil`) - The main file/jar URI of the Spark application. Exactly one of the definition_body field and the main_file_uri field must be set for Python. Exactly one of main_class and main_file_uri field should be set for Java/Scala language type.
  *   `properties` (*type:* `map()`, *default:* `nil`) - Configuration properties as a set of key/value pairs, which will be passed on to the Spark application. For more information, see [Apache Spark](https://spark.apache.org/docs/latest/index.html) and the [procedure option list](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#procedure_option_list).
  *   `pyFileUris` (*type:* `list(String.t)`, *default:* `nil`) - Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: `.py`, `.egg`, and `.zip`. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  *   `runtimeVersion` (*type:* `String.t`, *default:* `nil`) - Runtime version. If not specified, the default runtime version is used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :archiveUris => list(String.t()) | nil,
          :connection => String.t() | nil,
          :containerImage => String.t() | nil,
          :fileUris => list(String.t()) | nil,
          :jarUris => list(String.t()) | nil,
          :mainClass => String.t() | nil,
          :mainFileUri => String.t() | nil,
          :properties => map() | nil,
          :pyFileUris => list(String.t()) | nil,
          :runtimeVersion => String.t() | nil
        }

  field(:archiveUris, type: :list)
  field(:connection)
  field(:containerImage)
  field(:fileUris, type: :list)
  field(:jarUris, type: :list)
  field(:mainClass)
  field(:mainFileUri)
  field(:properties, type: :map)
  field(:pyFileUris, type: :list)
  field(:runtimeVersion)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.SparkOptions do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.SparkOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.SparkOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
