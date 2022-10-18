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

defmodule GoogleApi.SecurityCenter.V1.Model.Access do
  @moduledoc """
  Represents an access event.

  ## Attributes

  *   `callerIp` (*type:* `String.t`, *default:* `nil`) - Caller's IP address, such as "1.1.1.1".
  *   `callerIpGeo` (*type:* `GoogleApi.SecurityCenter.V1.Model.Geolocation.t`, *default:* `nil`) - The caller IP's geolocation, which identifies where the call came from.
  *   `methodName` (*type:* `String.t`, *default:* `nil`) - The method that the service account called, e.g. "SetIamPolicy".
  *   `principalEmail` (*type:* `String.t`, *default:* `nil`) - Associated email, such as "foo@google.com". The email address of the authenticated user (or service account on behalf of third party principal) making the request. For third party identity callers, the `principal_subject` field is populated instead of this field. For privacy reasons, the principal email address is sometimes redacted. For more information, see [Caller identities in audit logs](https://cloud.google.com/logging/docs/audit#user-id).
  *   `principalSubject` (*type:* `String.t`, *default:* `nil`) - A string representing the principal_subject associated with the identity. As compared to `principal_email`, supports principals that aren't associated with email addresses, such as third party principals. For most identities, the format will be `principal://iam.googleapis.com/{identity pool name}/subjects/{subject}` except for some GKE identities (GKE_WORKLOAD, FREEFORM, GKE_HUB_WORKLOAD) that are still in the legacy format `serviceAccount:{identity pool name}[{subject}]`
  *   `serviceAccountDelegationInfo` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.ServiceAccountDelegationInfo.t)`, *default:* `nil`) - Identity delegation history of an authenticated service account that makes the request. It contains information on the real authorities that try to access GCP resources by delegating on a service account. When multiple authorities are present, they are guaranteed to be sorted based on the original ordering of the identity delegation events.
  *   `serviceAccountKeyName` (*type:* `String.t`, *default:* `nil`) - The name of the service account key used to create or exchange credentials for authenticating the service account making the request. This is a scheme-less URI full resource name. For example: "//iam.googleapis.com/projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}" 
  *   `serviceName` (*type:* `String.t`, *default:* `nil`) - This is the API service that the service account made a call to, e.g. "iam.googleapis.com"
  *   `userAgentFamily` (*type:* `String.t`, *default:* `nil`) - What kind of user agent is associated, e.g. operating system shells, embedded or stand-alone applications, etc.
  *   `userName` (*type:* `String.t`, *default:* `nil`) - A string representing a username. This is likely not an IAM principal. For instance, this may be the system user name if the finding is VM-related, or this may be some type of application login user name, depending on the type of finding.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :callerIp => String.t() | nil,
          :callerIpGeo => GoogleApi.SecurityCenter.V1.Model.Geolocation.t() | nil,
          :methodName => String.t() | nil,
          :principalEmail => String.t() | nil,
          :principalSubject => String.t() | nil,
          :serviceAccountDelegationInfo =>
            list(GoogleApi.SecurityCenter.V1.Model.ServiceAccountDelegationInfo.t()) | nil,
          :serviceAccountKeyName => String.t() | nil,
          :serviceName => String.t() | nil,
          :userAgentFamily => String.t() | nil,
          :userName => String.t() | nil
        }

  field(:callerIp)
  field(:callerIpGeo, as: GoogleApi.SecurityCenter.V1.Model.Geolocation)
  field(:methodName)
  field(:principalEmail)
  field(:principalSubject)

  field(:serviceAccountDelegationInfo,
    as: GoogleApi.SecurityCenter.V1.Model.ServiceAccountDelegationInfo,
    type: :list
  )

  field(:serviceAccountKeyName)
  field(:serviceName)
  field(:userAgentFamily)
  field(:userName)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.Access do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.Access.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.Access do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
