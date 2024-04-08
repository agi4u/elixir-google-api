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

defmodule GoogleApi.AndroidManagement.V1.Model.ExtensionConfig do
  @moduledoc """
  Configuration to enable an app as an extension app, with the capability of interacting with Android Device Policy offline. For Android versions 13 and above, extension apps are exempt from battery restrictions so will not be placed into the restricted App Standby Bucket (https://developer.android.com/topic/performance/appstandby#restricted-bucket). Extensions apps are also protected against users clearing their data or force-closing the application, although admins can continue to use the clear app data command on extension apps if needed for Android 13 and above.

  ## Attributes

  *   `notificationReceiver` (*type:* `String.t`, *default:* `nil`) - Fully qualified class name of the receiver service class for Android Device Policy to notify the extension app of any local command status updates.
  *   `signingKeyFingerprintsSha256` (*type:* `list(String.t)`, *default:* `nil`) - Hex-encoded SHA-256 hash of the signing certificate of the extension app. Only hexadecimal string representations of 64 characters are valid.If not specified, the signature for the corresponding package name is obtained from the Play Store instead.If this list is empty, the signature of the extension app on the device must match the signature obtained from the Play Store for the app to be able to communicate with Android Device Policy.If this list is not empty, the signature of the extension app on the device must match one of the entries in this list for the app to be able to communicate with Android Device Policy.In production use cases, it is recommended to leave this empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :notificationReceiver => String.t() | nil,
          :signingKeyFingerprintsSha256 => list(String.t()) | nil
        }

  field(:notificationReceiver)
  field(:signingKeyFingerprintsSha256, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ExtensionConfig do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ExtensionConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ExtensionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
