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

defmodule GoogleApi.CloudFunctions.V1.Model.GoogleCloudFunctionsV2alphaOperationMetadata do
  @moduledoc """
  Represents the metadata of the long-running operation.

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - API version used to start the operation.
  *   `cancelRequested` (*type:* `boolean()`, *default:* `nil`) - Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the operation was created.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the operation finished running.
  *   `requestResource` (*type:* `map()`, *default:* `nil`) - The original request that started the operation.
  *   `stages` (*type:* `list(GoogleApi.CloudFunctions.V1.Model.GoogleCloudFunctionsV2alphaStage.t)`, *default:* `nil`) - Mechanism for reporting in-progress stages
  *   `statusDetail` (*type:* `String.t`, *default:* `nil`) - Human-readable status of the operation, if any.
  *   `target` (*type:* `String.t`, *default:* `nil`) - Server-defined resource path for the target of the operation.
  *   `verb` (*type:* `String.t`, *default:* `nil`) - Name of the verb executed by the operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t() | nil,
          :cancelRequested => boolean() | nil,
          :createTime => DateTime.t() | nil,
          :endTime => DateTime.t() | nil,
          :requestResource => map() | nil,
          :stages =>
            list(GoogleApi.CloudFunctions.V1.Model.GoogleCloudFunctionsV2alphaStage.t()) | nil,
          :statusDetail => String.t() | nil,
          :target => String.t() | nil,
          :verb => String.t() | nil
        }

  field(:apiVersion)
  field(:cancelRequested)
  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:requestResource, type: :map)

  field(:stages,
    as: GoogleApi.CloudFunctions.V1.Model.GoogleCloudFunctionsV2alphaStage,
    type: :list
  )

  field(:statusDetail)
  field(:target)
  field(:verb)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudFunctions.V1.Model.GoogleCloudFunctionsV2alphaOperationMetadata do
  def decode(value, options) do
    GoogleApi.CloudFunctions.V1.Model.GoogleCloudFunctionsV2alphaOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudFunctions.V1.Model.GoogleCloudFunctionsV2alphaOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
