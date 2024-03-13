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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MergeVersionAliasesRequest do
  @moduledoc """
  Request message for ModelService.MergeVersionAliases.

  ## Attributes

  *   `versionAliases` (*type:* `list(String.t)`, *default:* `nil`) - Required. The set of version aliases to merge. The alias should be at most 128 characters, and match `a-z{0,126}[a-z-0-9]`. Add the `-` prefix to an alias means removing that alias from the version. `-` is NOT counted in the 128 characters. Example: `-golden` means removing the `golden` alias from the version. There is NO ordering in aliases, which means 1) The aliases returned from GetModel API might not have the exactly same order from this MergeVersionAliases API. 2) Adding and deleting the same alias in the request is not recommended, and the 2 operations will be cancelled out.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :versionAliases => list(String.t()) | nil
        }

  field(:versionAliases, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MergeVersionAliasesRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MergeVersionAliasesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MergeVersionAliasesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
