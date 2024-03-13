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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1HyperparameterTuningJob do
  @moduledoc """
  Represents a HyperparameterTuningJob. A HyperparameterTuningJob has a Study specification and multiple CustomJobs with identical CustomJob specification.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the HyperparameterTuningJob was created.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the HyperparameterTuningJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  *   `encryptionSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t`, *default:* `nil`) - Customer-managed encryption key options for a HyperparameterTuningJob. If this is set, then all resources created by the HyperparameterTuningJob will be encrypted with the provided encryption key.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the HyperparameterTuningJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  *   `error` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus.t`, *default:* `nil`) - Output only. Only populated when job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels with user-defined metadata to organize HyperparameterTuningJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  *   `maxFailedTrialCount` (*type:* `integer()`, *default:* `nil`) - The number of failed Trials that need to be seen before failing the HyperparameterTuningJob. If set to 0, Vertex AI decides how many Trials must fail before the whole job fails.
  *   `maxTrialCount` (*type:* `integer()`, *default:* `nil`) - Required. The desired total number of Trials.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the HyperparameterTuningJob.
  *   `parallelTrialCount` (*type:* `integer()`, *default:* `nil`) - Required. The desired number of Trials to run in parallel.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the HyperparameterTuningJob for the first time entered the `JOB_STATE_RUNNING` state.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The detailed state of the job.
  *   `studySpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StudySpec.t`, *default:* `nil`) - Required. Study configuration of the HyperparameterTuningJob.
  *   `trialJobSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJobSpec.t`, *default:* `nil`) - Required. The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  *   `trials` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Trial.t)`, *default:* `nil`) - Output only. Trials of the HyperparameterTuningJob.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the HyperparameterTuningJob was most recently updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :encryptionSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t() | nil,
          :endTime => DateTime.t() | nil,
          :error => GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus.t() | nil,
          :labels => map() | nil,
          :maxFailedTrialCount => integer() | nil,
          :maxTrialCount => integer() | nil,
          :name => String.t() | nil,
          :parallelTrialCount => integer() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :studySpec => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StudySpec.t() | nil,
          :trialJobSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJobSpec.t() | nil,
          :trials => list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Trial.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:displayName)
  field(:encryptionSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec)
  field(:endTime, as: DateTime)
  field(:error, as: GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus)
  field(:labels, type: :map)
  field(:maxFailedTrialCount)
  field(:maxTrialCount)
  field(:name)
  field(:parallelTrialCount)
  field(:startTime, as: DateTime)
  field(:state)
  field(:studySpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StudySpec)
  field(:trialJobSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJobSpec)
  field(:trials, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Trial, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1HyperparameterTuningJob do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1HyperparameterTuningJob.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1HyperparameterTuningJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
