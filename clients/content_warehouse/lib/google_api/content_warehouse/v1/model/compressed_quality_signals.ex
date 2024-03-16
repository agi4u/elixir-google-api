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

defmodule GoogleApi.ContentWarehouse.V1.Model.CompressedQualitySignals do
  @moduledoc """
  A message containing per doc signals that are compressed and included in Mustang and TeraGoogle. For TeraGoogle, this message is included in perdocdata which means it can be used in preliminary scoring. CAREFUL: For TeraGoogle, this data resides in very limited serving memory (Flash storage) for a huge number of documents. Next id: 42

  ## Attributes

  *   `productReviewPPromotePage` (*type:* `integer()`, *default:* `nil`) - 
  *   `experimentalQstarDeltaSignal` (*type:* `number()`, *default:* `nil`) - This field is *not* propagated to shards. It is meant to be populated at serving time using one of the versions present in the `experimental_nsr_team_wsj_data` field above (using the `ExperimentalNsrTeamDataOverridesParams` opti to populate it; see http://source/search?q=ExperimentalNsrTeamDataOverridesParams%20file:ascorer.proto). The purpose of this field is to be read by an experimental Q* component, in order to quickly run LEs with new delta components. See go/0DayLEs for details.
  *   `productReviewPDemoteSite` (*type:* `integer()`, *default:* `nil`) - Product review demotion/promotion confidences. (Times 1000 and floored)
  *   `experimentalQstarSiteSignal` (*type:* `number()`, *default:* `nil`) - This field is *not* propagated to shards. It is meant to be populated at serving time using one of the versions present in the `experimental_nsr_team_wsj_data` field above (using the `ExperimentalNsrTeamDataOverridesParams` opti to populate it; see http://source/search?q=ExperimentalNsrTeamDataOverridesParams%20file:ascorer.proto). The purpose of this field is to be read by an experimental Q* component, in order to quickly run LEs with new site components. See go/0DayLEs for details.
  *   `exactMatchDomainDemotion` (*type:* `integer()`, *default:* `nil`) - Page quality signals converted from fields in proto QualityBoost in quality/q2/proto/quality-boost.proto. To save indexing space, we convert the float values in [0, 1] to integers in range [0, 1023] (use 10 bits). exact_match_domain_demotion: converted from QualityBoost.emd.boost.
  *   `nsrVersionedData` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NSRVersionedItem.t)`, *default:* `nil`) - Versioned NSR score to be used in continuous evaluation of the upcoming NSR version and assess quality impact on various slices.
  *   `nsrConfidence` (*type:* `integer()`, *default:* `nil`) - NSR confidence score: converted from quality_nsr.NsrData.
  *   `lowQuality` (*type:* `integer()`, *default:* `nil`) - S2V low quality score: converted from quality_nsr.NsrData, applied in Qstar. See quality_nsr::util::ConvertNsrDataToLowQuality.
  *   `navDemotion` (*type:* `integer()`, *default:* `nil`) - nav_demotion: converted from QualityBoost.nav_demoted.boost.
  *   `pqData` (*type:* `integer()`, *default:* `nil`) - Encoded page-level PQ signals.
  *   `siteAuthority` (*type:* `integer()`, *default:* `nil`) - site_authority: converted from quality_nsr.SiteAuthority, applied in Qstar.
  *   `crapsNewUrlSignals` (*type:* `String.t`, *default:* `nil`) - For craps_[url|pattern]_signals, please avoid accessing these fields directly, even in minor ways like checking has_craps_*. Instead, please use methods from quality/navboost/craps/craps-lossy-compression.h or talk to dice-team.
  *   `babyPandaV2Demotion` (*type:* `integer()`, *default:* `nil`) - New BabyPanda demotion, applied on top of Panda. This is meant to replace |baby_panda_demotion|.
  *   `authorityPromotion` (*type:* `integer()`, *default:* `nil`) - authority promotion: converted from QualityBoost.authority.boost
  *   `productReviewPUhqPage` (*type:* `integer()`, *default:* `nil`) - The possibility of a page being a high quality review page.
  *   `crapsAbsoluteHostSignals` (*type:* `integer()`, *default:* `nil`) - Impressions, unsquashed, host level, not to be used with compressed ratios. Not to be used in Pattern Data.
  *   `productReviewPPromoteSite` (*type:* `integer()`, *default:* `nil`) - 
  *   `nsrOverrideBid` (*type:* `number()`, *default:* `nil`) - NSR override bid, used in Q* for emergency overrides.
  *   `babyPandaDemotion` (*type:* `integer()`, *default:* `nil`) - baby_panda_demotion: converted from QualityBoost.rendered.boost.
  *   `serpDemotion` (*type:* `integer()`, *default:* `nil`) - serp demotion: applied in Qstar.
  *   `anchorMismatchDemotion` (*type:* `integer()`, *default:* `nil`) - anchor_mismatch_demotion: converted from QualityBoost.mismatched.boost.
  *   `crapsNewHostSignals` (*type:* `String.t`, *default:* `nil`) - 
  *   `experimentalQstarSignal` (*type:* `number()`, *default:* `nil`) - This field is *not* propagated to shards. It is meant to be populated at serving time using one of the versions present in the `experimental_nsr_team_wsj_data` field above (using the `ExperimentalNsrTeamDataOverridesParams` opti to populate it; see http://source/search?q=ExperimentalNsrTeamDataOverridesParams%20file:ascorer.proto). The purpose of this field is to be read by an experimental Q* component, in order to quickly run LEs with new components. See go/0DayLEs for details.
  *   `pairwiseqScoringData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.PairwiseQScoringData.t`, *default:* `nil`) - PairwiseQ data for QTJ. This field is *not* propagated to shards, but is populated at serving time by go/web-signal-joins. See b/175762140
  *   `topicEmbeddingsVersionedData` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.QualityAuthorityTopicEmbeddingsVersionedItem.t)`, *default:* `nil`) - Versioned TopicEmbeddings data to be populated later into superroot / used directly in scorers.
  *   `scamness` (*type:* `integer()`, *default:* `nil`) - Scam model score. Used as one of the web page quality qstar signals. Value range from 0 to 1023.
  *   `crapsUnscaledIpPriorBadFraction` (*type:* `integer()`, *default:* `nil`) - 
  *   `pandaDemotion` (*type:* `integer()`, *default:* `nil`) - This is the encoding of Panda fields in the proto SiteQualityFeatures in quality/q2/proto/site_quality_features.proto. The encoding/decoding is performed using functions from quality_coati::coati_util.
  *   `unauthoritativeScore` (*type:* `integer()`, *default:* `nil`) - Unauthoritative score. Used as one of the web page quality qstar signals.
  *   `experimentalNsrTeamWsjData` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamWSJData.t)`, *default:* `nil`) - This field is *not* propagated to shards, but it's populated at serving time by go/web-signal-joins (see b/207344056). See go/0DayLEs for details. This is only meant to be used during LEs, it should *not* be used for launches.
  *   `experimentalNsrTeamData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamData.t`, *default:* `nil`) - This field is *not* propagated to shards, but it's populated at serving time by go/web-signal-joins (see b/207344056). See go/0DayLEs for details. This is only meant to be used during LEs, it should *not* be used for launches.
  *   `productReviewPReviewPage` (*type:* `integer()`, *default:* `nil`) - Fields product_review_p_review_page and product_review_p_uhq_page are for promoting/demoting HQ/LQ review pages in NGS. See go/pr-boosts for details. The possibility of a page being a review page.
  *   `pqDataProto` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityNsrPQData.t`, *default:* `nil`) - Stripped page-level signals, not present in the encoded field 'pq_data'.
  *   `pairwiseqVersionedData` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.PairwiseQVersionedItem.t)`, *default:* `nil`) - Versioned PairwiseQ score to be used in continuous evaluation of the upcoming PairwiseQ versions and assess quality impact on various slices.
  *   `crapsNewPatternSignals` (*type:* `String.t`, *default:* `nil`) - 
  *   `vlqNsr` (*type:* `integer()`, *default:* `nil`) - NSR for low-quality videos, converted from quality_nsr.NsrData.vlq_nsr.
  *   `productReviewPDemotePage` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :productReviewPPromotePage => integer() | nil,
          :experimentalQstarDeltaSignal => number() | nil,
          :productReviewPDemoteSite => integer() | nil,
          :experimentalQstarSiteSignal => number() | nil,
          :exactMatchDomainDemotion => integer() | nil,
          :nsrVersionedData =>
            list(GoogleApi.ContentWarehouse.V1.Model.NSRVersionedItem.t()) | nil,
          :nsrConfidence => integer() | nil,
          :lowQuality => integer() | nil,
          :navDemotion => integer() | nil,
          :pqData => integer() | nil,
          :siteAuthority => integer() | nil,
          :crapsNewUrlSignals => String.t() | nil,
          :babyPandaV2Demotion => integer() | nil,
          :authorityPromotion => integer() | nil,
          :productReviewPUhqPage => integer() | nil,
          :crapsAbsoluteHostSignals => integer() | nil,
          :productReviewPPromoteSite => integer() | nil,
          :nsrOverrideBid => number() | nil,
          :babyPandaDemotion => integer() | nil,
          :serpDemotion => integer() | nil,
          :anchorMismatchDemotion => integer() | nil,
          :crapsNewHostSignals => String.t() | nil,
          :experimentalQstarSignal => number() | nil,
          :pairwiseqScoringData =>
            GoogleApi.ContentWarehouse.V1.Model.PairwiseQScoringData.t() | nil,
          :topicEmbeddingsVersionedData =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.QualityAuthorityTopicEmbeddingsVersionedItem.t()
            )
            | nil,
          :scamness => integer() | nil,
          :crapsUnscaledIpPriorBadFraction => integer() | nil,
          :pandaDemotion => integer() | nil,
          :unauthoritativeScore => integer() | nil,
          :experimentalNsrTeamWsjData =>
            list(GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamWSJData.t())
            | nil,
          :experimentalNsrTeamData =>
            GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamData.t() | nil,
          :productReviewPReviewPage => integer() | nil,
          :pqDataProto => GoogleApi.ContentWarehouse.V1.Model.QualityNsrPQData.t() | nil,
          :pairwiseqVersionedData =>
            list(GoogleApi.ContentWarehouse.V1.Model.PairwiseQVersionedItem.t()) | nil,
          :crapsNewPatternSignals => String.t() | nil,
          :vlqNsr => integer() | nil,
          :productReviewPDemotePage => integer() | nil
        }

  field(:productReviewPPromotePage)
  field(:experimentalQstarDeltaSignal)
  field(:productReviewPDemoteSite)
  field(:experimentalQstarSiteSignal)
  field(:exactMatchDomainDemotion)
  field(:nsrVersionedData, as: GoogleApi.ContentWarehouse.V1.Model.NSRVersionedItem, type: :list)
  field(:nsrConfidence)
  field(:lowQuality)
  field(:navDemotion)
  field(:pqData)
  field(:siteAuthority)
  field(:crapsNewUrlSignals)
  field(:babyPandaV2Demotion)
  field(:authorityPromotion)
  field(:productReviewPUhqPage)
  field(:crapsAbsoluteHostSignals)
  field(:productReviewPPromoteSite)
  field(:nsrOverrideBid)
  field(:babyPandaDemotion)
  field(:serpDemotion)
  field(:anchorMismatchDemotion)
  field(:crapsNewHostSignals)
  field(:experimentalQstarSignal)
  field(:pairwiseqScoringData, as: GoogleApi.ContentWarehouse.V1.Model.PairwiseQScoringData)

  field(:topicEmbeddingsVersionedData,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityAuthorityTopicEmbeddingsVersionedItem,
    type: :list
  )

  field(:scamness)
  field(:crapsUnscaledIpPriorBadFraction)
  field(:pandaDemotion)
  field(:unauthoritativeScore)

  field(:experimentalNsrTeamWsjData,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamWSJData,
    type: :list
  )

  field(:experimentalNsrTeamData,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamData
  )

  field(:productReviewPReviewPage)
  field(:pqDataProto, as: GoogleApi.ContentWarehouse.V1.Model.QualityNsrPQData)

  field(:pairwiseqVersionedData,
    as: GoogleApi.ContentWarehouse.V1.Model.PairwiseQVersionedItem,
    type: :list
  )

  field(:crapsNewPatternSignals)
  field(:vlqNsr)
  field(:productReviewPDemotePage)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.CompressedQualitySignals do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CompressedQualitySignals.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.CompressedQualitySignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
