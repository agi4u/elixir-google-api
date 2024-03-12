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

defmodule GoogleApi.CloudTasks.V2beta2.Model.HeaderOverride do
  @moduledoc """
  Wraps the Header object.

  ## Attributes

  *   `header` (*type:* `GoogleApi.CloudTasks.V2beta2.Model.Header.t`, *default:* `nil`) - Header embodying a key and a value. Do not put business sensitive or personally identifying data in the HTTP Header Override Configuration or other similar fields in accordance with Section 12 (Resource Fields) of the [Service Specific Terms](https://cloud.google.com/terms/service-terms).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :header => GoogleApi.CloudTasks.V2beta2.Model.Header.t() | nil
        }

  field(:header, as: GoogleApi.CloudTasks.V2beta2.Model.Header)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.HeaderOverride do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.HeaderOverride.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.HeaderOverride do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
