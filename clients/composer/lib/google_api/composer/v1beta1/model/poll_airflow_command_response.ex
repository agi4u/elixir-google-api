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

defmodule GoogleApi.Composer.V1beta1.Model.PollAirflowCommandResponse do
  @moduledoc """
  Response to PollAirflowCommandRequest.

  ## Attributes

  *   `exitInfo` (*type:* `GoogleApi.Composer.V1beta1.Model.ExitInfo.t`, *default:* `nil`) - The result exit status of the command.
  *   `output` (*type:* `list(GoogleApi.Composer.V1beta1.Model.Line.t)`, *default:* `nil`) - Output from the command execution. It may not contain the full output and the caller may need to poll for more lines.
  *   `outputEnd` (*type:* `boolean()`, *default:* `nil`) - Whether the command execution has finished and there is no more output.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exitInfo => GoogleApi.Composer.V1beta1.Model.ExitInfo.t() | nil,
          :output => list(GoogleApi.Composer.V1beta1.Model.Line.t()) | nil,
          :outputEnd => boolean() | nil
        }

  field(:exitInfo, as: GoogleApi.Composer.V1beta1.Model.ExitInfo)
  field(:output, as: GoogleApi.Composer.V1beta1.Model.Line, type: :list)
  field(:outputEnd)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1beta1.Model.PollAirflowCommandResponse do
  def decode(value, options) do
    GoogleApi.Composer.V1beta1.Model.PollAirflowCommandResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1beta1.Model.PollAirflowCommandResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
