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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentSignals do
  @moduledoc """
  A message representing the signals associated with an argument. NEXT ID TO USE: 62 For //depot/google3/logs/proto/knowledge/interpretation/intent_query.proto in the "ThenChange", fields under Argument.signals in the serving proto are stored directly under Argument on the logging side. For example, see http://google3/nlp/semantic_parsing/data_management/logs/web_logs/semantic_logging_converters/semantic_logging_request_argument_converter.cc?l=58&rcl=322925428. LINT.IfChange

  ## Attributes

  *   `gaiaId` (*type:* `String.t`, *default:* `nil`) - The gaia id for the entity (person or plus page).
  *   `expressionStatus` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingExpressionStatus.t`, *default:* `nil`) - Status indicating whether the user has completely expressed the semantics of the argument.
  *   `deprecatedSupportingMid` (*type:* `list(String.t)`, *default:* `nil`) - A list of mids that "support" this argument in voting, i.e., results that support these mids will be treated as if they support the argument. This field has been deprecated in favor of related_entity. b/27363861
  *   `onDeviceAnnotationSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryOnDeviceAnnotationSignals.t`, *default:* `nil`) - Additional signals for on-device annotations.
  *   `ungroundedValueType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersValueType.t`, *default:* `nil`) - Type of ungrounded argument. It is exclusively used when simple_value.ungrounded_value is populated.
  *   `isIntentgenAnnotation` (*type:* `boolean()`, *default:* `nil`) - Whether this argument was annotated by Intentgen QUIK model (go/intentgen-quik)
  *   `locationClassificationScore` (*type:* `float()`, *default:* `nil`) - Confidence score of this argument being a location.
  *   `allowedFuzzyMatch` (*type:* `boolean()`, *default:* `nil`) - For this argument, backend performed fuzzy match.
  *   `isEvalDataHeuristic` (*type:* `boolean()`, *default:* `nil`) - Set when the eval_data was not derived at parsing time, but heuristically determined by matching the ArgumentValue to an annotation/query fragment.
  *   `supportTransferSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQuerySupportTransferSignals.t`, *default:* `nil`) - Support Transfer signals for this entity.
  *   `deprecatedFreebaseType` (*type:* `list(String.t)`, *default:* `nil`) - If the literal.obj_type of the argument value is ID (Entity), this represents freebase types of the entity in this argument.
  *   `rawQueryText` (*type:* `String.t`, *default:* `nil`) - A copy of the span of canonical (raw) parser input text corresponding to this annotation.
  *   `isEnum` (*type:* `boolean()`, *default:* `nil`) - Set when the argument has an enum value - a normalized_string_type from the intent catalog.
  *   `supportTransferRules` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.LogsSemanticInterpretationIntentQuerySupportTransferRule.t)`, *default:* `nil`) - go/stbr supportthis is an
  *   `qrefInterpretationIndex` (*type:* `integer()`, *default:* `nil`) - The index of the QueryJoin interpretation from which this annotation is taken. We copy over the value given by nlp.semantic_parsing.annotators.QrefAnnotator. The value will be "-1" if the annotation is coming from low confidence Qref annotations. NOTE - this is generated from as QRef's interetation_number.
  *   `relatednessSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryRelatednessSignals.t`, *default:* `nil`) - Relatedness Matrix signals about this argument, e.g., query_popularity.
  *   `locationType` (*type:* `String.t`, *default:* `nil`) - The type category for the location stored in this Argument, if it exists.
  *   `mergedImpliedEntity` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryImpliedEntity.t)`, *default:* `nil`) - List of QRef implied entities merged into this entity during parsing. Clients should not rely on the order, as it is derivation-dependent.
  *   `multipleHorizontalListSelectionMatches` (*type:* `boolean()`, *default:* `nil`) - Whether there were multiple equally good matches from horizontal_list_selection.
  *   `midEquivalentToCollection` (*type:* `String.t`, *default:* `nil`) - For collection arguments, it is useful to save what was the original mid that qref annotated. For example, if the collection is /collection/films, we'll have the mid for /en/film here (/m/02vxn).
  *   `saftSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQuerySaftSignals.t`, *default:* `nil`) - Signals derived from SAFT.
  *   `relatedEntity` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingRelatedEntity.t)`, *default:* `nil`) - List of entities that are semantically related to the argument as well as details of the relationship.
  *   `personalEntity` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntity.t)`, *default:* `nil`) - Personal entities are compound entities made up of entities and their attributes, where the entities can be compound too. E.g., "my father's mother" can have a summary node annotation of "Mother(Father(Myself))"
  *   `resolvedFromPronoun` (*type:* `boolean()`, *default:* `nil`) - Whether this argument was resolved from a pronoun mention in the query. Eg: [how old was obama when *he* became president]
  *   `chainId` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.LocalsearchChainId.t)`, *default:* `nil`) - One or more ChainIds from a ChainAnnotation whose "organization_mid" matches the MID. As of 2021-01 multiple chain_ids may be specified if the organization for MID controls multiple chains. See go/chains-lckp-robust-triggering for motivation.
  *   `addedByCloseAnswers` (*type:* `boolean()`, *default:* `nil`) - Whether this argument was added by CloseAnswers in Postref. This bit is used to mark the corresponding interpretation/intent query as such by setting is_close_interpretation bit.
  *   `location` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePointProto.t`, *default:* `nil`) - Entity location information (latitude/longitude) from freebase.
  *   `groundingSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryGroundingSignals.t`, *default:* `nil`) - 
  *   `mediaEntitySignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryMediaEntitySignals.t`, *default:* `nil`) - Signals about the media entity for this argument.
  *   `collectionMembership` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCollectionMembership.t)`, *default:* `nil`) - If the literal.obj_type of the argument value is ID (Entity), this represents the collection that the entity in this argument is a member of.
  *   `locationMarkersSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryLocationMarkersSignals.t`, *default:* `nil`) - The usual semantic role associated with the signal from lightweight tokens attached to this argument span.
  *   `source` (*type:* `String.t`, *default:* `nil`) - What added this argument.
  *   `clusterInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityViewsExtractionClusterInfo.t`, *default:* `nil`) - If the literal.obj_type of the argument value is ID (Entity), this stores cluster scoring information for that entity, if the entity belongs to a cluster.
  *   `qrefConfidenceScore` (*type:* `number()`, *default:* `nil`) - The QRef confidence score for an entity argument.
  *   `isGenieAnnotation` (*type:* `boolean()`, *default:* `nil`) - Whether this annotation was propagated as part of a Genie rewrite (go/genie-aqua).
  *   `resolvedFromContext` (*type:* `boolean()`, *default:* `nil`) - Whether this argument was resolved through context from a previous query. Examples: obama -> "he" is resolved from the Obama entity starbucks -> Q2 is resolved from the list of shops
  *   `valueSource` (*type:* `String.t`, *default:* `nil`) - What added the argument value.
  *   `webrefListSource` (*type:* `String.t`, *default:* `nil`) - This represents which list entities index refers to.
  *   `isDefaultValue` (*type:* `boolean()`, *default:* `nil`) - If true, the value of the argument is populated with the default value specified by the system if the value can't be inferred from the input query. In IntentConfig case, the default value is specified by using IntentConfig.slot.default_value.
  *   `parsedDueToExperiment` (*type:* `list(String.t)`, *default:* `nil`) - Experiment ID for experiments that were used to parse this FunctionCall. Empty indicates no experiments used.
  *   `isNimbleAnnotation` (*type:* `boolean()`, *default:* `nil`) - Whether this argument was annotated by nimble (go/nimble-annotator)
  *   `fromSymbolAnnotation` (*type:* `boolean()`, *default:* `nil`) - Whether the argument entity comes from a graphic symbol annotation. This is later used as a heuristic for poor web result quality.
  *   `entityNumber` (*type:* `integer()`, *default:* `nil`) - Signals about what other entities this entity implies / is implied by. This is useful for grounding. Example: b/138388207: suppressing song intents if the artist entity doesn't link to the song title. This value specifies the order of annotations in a QRef annotation chain so they can refer to each other.
  *   `webrefEntitiesIndex` (*type:* `integer()`, *default:* `nil`) - Webref entity index for this argument, necessary for interpreting the relationship structure, and the list to index into. Specifically we need this to understand qref implications since they edges are represented with entity indexes.
  *   `entityRelationship` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotationEntityRelationship.t)`, *default:* `nil`) - Signals about what other entities this entity implies / is implied by. This is useful for grounding. Example: b/138388207: suppressing song intents if the artist entity doesn't link to the song title.
  *   `muninSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryMuninSignals.t`, *default:* `nil`) - Signals derived from Munin Function call annotations.
  *   `shoppingIds` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryShoppingIds.t`, *default:* `nil`) - Equivalent shopping ids for the argument.
  *   `responseMeaningSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryResponseMeaningSignalsResponseMeaningSignals.t`, *default:* `nil`) - 
  *   `contextResolution` (*type:* `String.t`, *default:* `nil`) - How this argument was resolved through context from a previous query. Examples: obama -> "he" is resolved from the Obama entity starbucks -> Q2 is resolved from the list of shops (Attentional Entities)
  *   `annotationLayerSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryAnnotationLayerSignals.t`, *default:* `nil`) - Signals to facilitate orchestration of TUIG annotations.
  *   `annotatedRelationship` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.LogsSemanticInterpretationIntentQueryWebrefEntityRelationship.t)`, *default:* `nil`) - Relationships between entities
  *   `resultSupport` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.UniversalsearchNewPackerKnowledgeResultSupport.t)`, *default:* `nil`) - The list of result supports for this Argument.
  *   `isAUngroundedTypeOf` (*type:* `String.t`, *default:* `nil`) - If the argument is entity, the ungrounded type the entity is. For example, the entity argument is /m/0p83l (Jasmine), the value of this field should be "Plant" if it is present.
  *   `oysterId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t`, *default:* `nil`) - The oyster feature id. NOTE: As of Mar 2017, the cell ID field of the feature ID might not be set. See http://b/35447230#comment10
  *   `provenance` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenance.t)`, *default:* `nil`) - Information about where the value of this argument came from. For example, it could have been explicitly provided in the query, pulled in from the previous state, or pulled from attentional entities.
  *   `fromManualSymbolAnnotation` (*type:* `boolean()`, *default:* `nil`) - Whether the argument entity comes from a manual graphic symbol annotation. This is later used as a heuristic for poor web result quality.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gaiaId => String.t() | nil,
          :expressionStatus =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingExpressionStatus.t() | nil,
          :deprecatedSupportingMid => list(String.t()) | nil,
          :onDeviceAnnotationSignals =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryOnDeviceAnnotationSignals.t()
            | nil,
          :ungroundedValueType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersValueType.t() | nil,
          :isIntentgenAnnotation => boolean() | nil,
          :locationClassificationScore => float() | nil,
          :allowedFuzzyMatch => boolean() | nil,
          :isEvalDataHeuristic => boolean() | nil,
          :supportTransferSignals =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQuerySupportTransferSignals.t()
            | nil,
          :deprecatedFreebaseType => list(String.t()) | nil,
          :rawQueryText => String.t() | nil,
          :isEnum => boolean() | nil,
          :supportTransferRules =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.LogsSemanticInterpretationIntentQuerySupportTransferRule.t()
            )
            | nil,
          :qrefInterpretationIndex => integer() | nil,
          :relatednessSignals =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryRelatednessSignals.t()
            | nil,
          :locationType => String.t() | nil,
          :mergedImpliedEntity =>
            list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryImpliedEntity.t())
            | nil,
          :multipleHorizontalListSelectionMatches => boolean() | nil,
          :midEquivalentToCollection => String.t() | nil,
          :saftSignals =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQuerySaftSignals.t() | nil,
          :relatedEntity =>
            list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingRelatedEntity.t()) | nil,
          :personalEntity =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntity.t()
            )
            | nil,
          :resolvedFromPronoun => boolean() | nil,
          :chainId => list(GoogleApi.ContentWarehouse.V1.Model.LocalsearchChainId.t()) | nil,
          :addedByCloseAnswers => boolean() | nil,
          :location => GoogleApi.ContentWarehouse.V1.Model.GeostorePointProto.t() | nil,
          :groundingSignals =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryGroundingSignals.t()
            | nil,
          :mediaEntitySignals =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryMediaEntitySignals.t()
            | nil,
          :collectionMembership =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCollectionMembership.t()
            )
            | nil,
          :locationMarkersSignals =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryLocationMarkersSignals.t()
            | nil,
          :source => String.t() | nil,
          :clusterInfo =>
            GoogleApi.ContentWarehouse.V1.Model.QualityViewsExtractionClusterInfo.t() | nil,
          :qrefConfidenceScore => number() | nil,
          :isGenieAnnotation => boolean() | nil,
          :resolvedFromContext => boolean() | nil,
          :valueSource => String.t() | nil,
          :webrefListSource => String.t() | nil,
          :isDefaultValue => boolean() | nil,
          :parsedDueToExperiment => list(String.t()) | nil,
          :isNimbleAnnotation => boolean() | nil,
          :fromSymbolAnnotation => boolean() | nil,
          :entityNumber => integer() | nil,
          :webrefEntitiesIndex => integer() | nil,
          :entityRelationship =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotationEntityRelationship.t()
            )
            | nil,
          :muninSignals =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryMuninSignals.t() | nil,
          :shoppingIds =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryShoppingIds.t() | nil,
          :responseMeaningSignals =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryResponseMeaningSignalsResponseMeaningSignals.t()
            | nil,
          :contextResolution => String.t() | nil,
          :annotationLayerSignals =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryAnnotationLayerSignals.t()
            | nil,
          :annotatedRelationship =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.LogsSemanticInterpretationIntentQueryWebrefEntityRelationship.t()
            )
            | nil,
          :resultSupport =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.UniversalsearchNewPackerKnowledgeResultSupport.t()
            )
            | nil,
          :isAUngroundedTypeOf => String.t() | nil,
          :oysterId => GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t() | nil,
          :provenance =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenance.t()
            )
            | nil,
          :fromManualSymbolAnnotation => boolean() | nil
        }

  field(:gaiaId)

  field(:expressionStatus,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingExpressionStatus
  )

  field(:deprecatedSupportingMid, type: :list)

  field(:onDeviceAnnotationSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryOnDeviceAnnotationSignals
  )

  field(:ungroundedValueType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersValueType)
  field(:isIntentgenAnnotation)
  field(:locationClassificationScore)
  field(:allowedFuzzyMatch)
  field(:isEvalDataHeuristic)

  field(:supportTransferSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQuerySupportTransferSignals
  )

  field(:deprecatedFreebaseType, type: :list)
  field(:rawQueryText)
  field(:isEnum)

  field(:supportTransferRules,
    as:
      GoogleApi.ContentWarehouse.V1.Model.LogsSemanticInterpretationIntentQuerySupportTransferRule,
    type: :list
  )

  field(:qrefInterpretationIndex)

  field(:relatednessSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryRelatednessSignals
  )

  field(:locationType)

  field(:mergedImpliedEntity,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryImpliedEntity,
    type: :list
  )

  field(:multipleHorizontalListSelectionMatches)
  field(:midEquivalentToCollection)

  field(:saftSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQuerySaftSignals
  )

  field(:relatedEntity,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingRelatedEntity,
    type: :list
  )

  field(:personalEntity,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntity,
    type: :list
  )

  field(:resolvedFromPronoun)
  field(:chainId, as: GoogleApi.ContentWarehouse.V1.Model.LocalsearchChainId, type: :list)
  field(:addedByCloseAnswers)
  field(:location, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePointProto)

  field(:groundingSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryGroundingSignals
  )

  field(:mediaEntitySignals,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryMediaEntitySignals
  )

  field(:collectionMembership,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCollectionMembership,
    type: :list
  )

  field(:locationMarkersSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryLocationMarkersSignals
  )

  field(:source)
  field(:clusterInfo, as: GoogleApi.ContentWarehouse.V1.Model.QualityViewsExtractionClusterInfo)
  field(:qrefConfidenceScore)
  field(:isGenieAnnotation)
  field(:resolvedFromContext)
  field(:valueSource)
  field(:webrefListSource)
  field(:isDefaultValue)
  field(:parsedDueToExperiment, type: :list)
  field(:isNimbleAnnotation)
  field(:fromSymbolAnnotation)
  field(:entityNumber)
  field(:webrefEntitiesIndex)

  field(:entityRelationship,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotationEntityRelationship,
    type: :list
  )

  field(:muninSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryMuninSignals
  )

  field(:shoppingIds,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryShoppingIds
  )

  field(:responseMeaningSignals,
    as:
      GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryResponseMeaningSignalsResponseMeaningSignals
  )

  field(:contextResolution)

  field(:annotationLayerSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryAnnotationLayerSignals
  )

  field(:annotatedRelationship,
    as:
      GoogleApi.ContentWarehouse.V1.Model.LogsSemanticInterpretationIntentQueryWebrefEntityRelationship,
    type: :list
  )

  field(:resultSupport,
    as: GoogleApi.ContentWarehouse.V1.Model.UniversalsearchNewPackerKnowledgeResultSupport,
    type: :list
  )

  field(:isAUngroundedTypeOf)
  field(:oysterId, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto)

  field(:provenance,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenance,
    type: :list
  )

  field(:fromManualSymbolAnnotation)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentSignals do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentSignals.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
