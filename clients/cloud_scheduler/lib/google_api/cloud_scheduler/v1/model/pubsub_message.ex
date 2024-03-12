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

defmodule GoogleApi.CloudScheduler.V1.Model.PubsubMessage do
  @moduledoc """
  A message that is published by publishers and consumed by subscribers. The message must contain either a non-empty data field or at least one attribute. Note that client libraries represent this object differently depending on the language. See the corresponding [client library documentation](https://cloud.google.com/pubsub/docs/reference/libraries) for more information. See [quotas and limits] (https://cloud.google.com/pubsub/quotas) for more information about message limits.

  ## Attributes

  *   `attributes` (*type:* `map()`, *default:* `nil`) - Optional. Attributes for this message. If this field is empty, the message must contain non-empty data. This can be used to filter messages on the subscription.
  *   `data` (*type:* `String.t`, *default:* `nil`) - Optional. The message data field. If this field is empty, the message must contain at least one attribute.
  *   `messageId` (*type:* `String.t`, *default:* `nil`) - ID of this message, assigned by the server when the message is published. Guaranteed to be unique within the topic. This value may be read by a subscriber that receives a `PubsubMessage` via a `Pull` call or a push delivery. It must not be populated by the publisher in a `Publish` call.
  *   `orderingKey` (*type:* `String.t`, *default:* `nil`) - Optional. If non-empty, identifies related messages for which publish order should be respected. If a `Subscription` has `enable_message_ordering` set to `true`, messages published with the same non-empty `ordering_key` value will be delivered to subscribers in the order in which they are received by the Pub/Sub system. All `PubsubMessage`s published in a given `PublishRequest` must specify the same `ordering_key` value. For more information, see [ordering messages](https://cloud.google.com/pubsub/docs/ordering).
  *   `publishTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the message was published, populated by the server when it receives the `Publish` call. It must not be populated by the publisher in a `Publish` call.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes => map() | nil,
          :data => String.t() | nil,
          :messageId => String.t() | nil,
          :orderingKey => String.t() | nil,
          :publishTime => DateTime.t() | nil
        }

  field(:attributes, type: :map)
  field(:data)
  field(:messageId)
  field(:orderingKey)
  field(:publishTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudScheduler.V1.Model.PubsubMessage do
  def decode(value, options) do
    GoogleApi.CloudScheduler.V1.Model.PubsubMessage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudScheduler.V1.Model.PubsubMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
