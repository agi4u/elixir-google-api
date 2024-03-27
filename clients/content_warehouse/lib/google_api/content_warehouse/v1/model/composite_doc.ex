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

defmodule GoogleApi.ContentWarehouse.V1.Model.CompositeDoc do
  @moduledoc """
  Protocol record used for collecting together all information about a document. Please consult go/dj-explorer for two basic questions about `CompositeDoc`: - Where should I look up certain information (e.g: pagerank, language)? - What does each field in CompositeDoc mean and who should I contact if I have questions? To add a new field into CompositeDoc, or change existing field's size significantly, please file a ticket at go/dj-new-field, fill in necessary information and get approved by docjoin-access@ team. Next id: 194

  ## Attributes

  *   `localizedvariations` (*type:* `GoogleApi.ContentWarehouse.V1.Model.CompositeDocLocalizedVariations.t`, *default:* `nil`) - 
  *   `localizedAlternateName` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.IndexingConverterLocalizedAlternateName.t)`, *default:* `nil`) - Localized alternate names are similar to alternate names, except that it is associated with a language different from its canonical. This is the subset of webmaster-provided localized alternate names being in the dup cluster of this document. Used during serving for swapping in the URL based on regional and language preferences of the user.
  *   `forwardingdup` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.CompositeDocForwardingDup.t)`, *default:* `nil`) - 
  *   `perDocData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.PerDocData.t`, *default:* `nil`) - 
  *   `accessRequirements` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingPrivacyAccessAccessRequirements.t`, *default:* `nil`) - Contains necessary information to enforce row level Docjoin access control.
  *   `properties` (*type:* `GoogleApi.ContentWarehouse.V1.Model.DocProperties.t`, *default:* `nil`) - 
  *   `badSslCertificate` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingBadSSLCertificate.t`, *default:* `nil`) - This field is present iff the page has a bad SSL certificate itself or in its redirect chain.
  *   `extradup` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.CompositeDocExtraDup.t)`, *default:* `nil`) - 
  *   `subindexid` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `ptoken` (*type:* `GoogleApi.ContentWarehouse.V1.Model.PtokenPToken.t`, *default:* `nil`) - Contains information necessary to perform policy decision on the usage of the data assosiated with this cdoc.
  *   `richcontentData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentData.t`, *default:* `nil`) - If present, indicates that some content was inserted, deleted, or replaced in the document's content (in CompositeDoc::doc::Content::Representation), and stores information about what was inserted, deleted, or replaced.
  *   `scaledIndyRank` (*type:* `integer()`, *default:* `nil`) - to copy to per-doc
  *   `cseId` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.QualityProseCSEUrlInfo.t)`, *default:* `nil`) - 
  *   `indexingIntermediate` (*type:* `String.t`, *default:* `nil`) - Serialized indexing intermediate data.
  *   `docVideos` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryVideoProperties.t)`, *default:* `nil`) - Info about videos embedded in the document.
  *   `indexinginfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.CompositeDocIndexingInfo.t`, *default:* `nil`) - 
  *   `localinfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.LocalWWWInfo.t`, *default:* `nil`) - 
  *   `storageRowTimestampMicros` (*type:* `String.t`, *default:* `nil`) - Row timestamp in CDoc storage.
  *   `partialUpdateInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.CompositeDocPartialUpdateInfo.t`, *default:* `nil`) - Only present in partial cdocs.
  *   `additionalchecksums` (*type:* `GoogleApi.ContentWarehouse.V1.Model.CompositeDocAdditionalChecksums.t`, *default:* `nil`) - 
  *   `anchors` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Anchors.t`, *default:* `nil`) - Mark as non-personal since no personal fields will be populated in `anchors.link_additional_info` and `anchors.additional_info`. For more details of Search personal data, see go/dma52-search-cdoc-fields.
  *   `registrationinfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RegistrationInfo.t`, *default:* `nil`) - Information about the most recent creation and expiration of this domain. It's extracted from domainedge signal.
  *   `docAttachments` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t`, *default:* `nil`) - A generic container to hold document annotations and signals. For a full list of extensions live today, see go/wde.
  *   `docinfoPassthroughAttachments` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t`, *default:* `nil`) - This message set is used for data pushed into the index using the signals framework that is never to be used in Mustang or TG Continuum scoring/snippeting code. Any protocol buffer stored in this message set is automatically returned in a docinfo response - it ends up in the "info" message set in the WWWSnippetResponse, so it can be used in post-doc twiddlers and for display in GWS with no code changes in Mustang or Teragoogle.
  *   `docImages` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ImageData.t)`, *default:* `nil`) - Info about "selected" images associated with the document for which we (already) have ImageData. For each image URL, some fixed number of documents are selected as web referrers for the image URL, and within those selected documents, we say the image is "selected". Within the remaining documents, we say the image is "rejected". Note that this distinction is slightly different from selected for indexing. Only images within doc_images where is_indexed_by_imagesearch is true will be selected for indexing. You can find the rejected images at composite_doc.doc_attachments().get(). You can find images that are selected, but for which we have no ImageData (yet) at composite_doc.image_indexing_info().selected_not_indexed_image_link()
  *   `includedcontent` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.CompositeDocIncludedContent.t)`, *default:* `nil`) - 
  *   `porninfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ClassifierPornDocumentData.t`, *default:* `nil`) - Porn related data used for image and web search porn classification as well as for diagnostics purposes.
  *   `urldate` (*type:* `String.t`, *default:* `nil`) - Date in the url extracted by quality/snippets/urldate/date-in-url.cc This is given as midnight GMT on the date in question.
  *   `embeddedContentInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedContentInfo.t`, *default:* `nil`) - Data produced by the embedded-content system. This is a thin message, containing only embedded_links_info data for the embedder and JavaScript/CSS embedded links (the embedded-content bigtable also contains snapshots, compressed document trees and all embedded link types). Provided using the index signal API.
  *   `richsnippet` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RichsnippetsPageMap.t`, *default:* `nil`) - rich snippet extracted from the content of a document.
  *   `qualitysignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.CompositeDocQualitySignals.t`, *default:* `nil`) - 
  *   `anchorStats` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorStatistics.t`, *default:* `nil`) - Mark as non-personal since it's an aggregation of anchors. For more details of Search personal data, see go/dma52-search-cdoc-fields.
  *   `alternatename` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.CompositeDocAlternateName.t)`, *default:* `nil`) - 
  *   `dataVersion` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerDataVersion.t`, *default:* `nil`) - Contains the tracking version of various data fields in CompositeDoc.
  *   `syntacticDate` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityTimebasedSyntacticDate.t`, *default:* `nil`) - 
  *   `url` (*type:* `String.t`, *default:* `nil`) - WARNING!!! "url" field in CompositeDoc is optional, and is usually missing: e.g., Docjoin CompositeDoc's don't have CompositeDoc::url. has_url() checking is often useful. So don't rely on CompositeDoc::url unless you're sure otherwise. Usually you want to use CompositeDoc::doc::url instead.
  *   `docjoinsOnSpannerCommitTimestampMicros` (*type:* `String.t`, *default:* `nil`) - The commit timestamp of a CDoc update to Docjoins on Spanner.
  *   `ContentChecksum96` (*type:* `String.t`, *default:* `nil`) - Visible content checksum as computed by repository::parsehandler::checksum::Checksum96bitsParseHandler. The value is a Fprint96 in "key format" (i.e., by Fprint96::AsKey()).
  *   `liveexperimentinfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.CompositeDocLiveExperimentInfo.t`, *default:* `nil`) - 
  *   `labelData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityLabelsGoogleLabelData.t`, *default:* `nil`) - This field associates a document to particular labels and assigns confidence values to them.
  *   `sitemap` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Sitemap.t`, *default:* `nil`) - Sitelinks: a collection of interesting links a user might be interested in, given they are interested in this document. WARNING: this is different from the crawler Sitemaps (see SitemapsSignals in the attachments).
  *   `robotsinfolist` (*type:* `GoogleApi.ContentWarehouse.V1.Model.CompositeDocRobotsInfoList.t`, *default:* `nil`) - 
  *   `doc` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GDocumentBase.t`, *default:* `nil`) - 
  *   `csePagerankCutoff` (*type:* `integer()`, *default:* `nil`) - URL should only be selected for CSE Index if it's pagerank is higher than cse_pagerank_cutoff.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :localizedvariations =>
            GoogleApi.ContentWarehouse.V1.Model.CompositeDocLocalizedVariations.t() | nil,
          :localizedAlternateName =>
            list(GoogleApi.ContentWarehouse.V1.Model.IndexingConverterLocalizedAlternateName.t())
            | nil,
          :forwardingdup =>
            list(GoogleApi.ContentWarehouse.V1.Model.CompositeDocForwardingDup.t()) | nil,
          :perDocData => GoogleApi.ContentWarehouse.V1.Model.PerDocData.t() | nil,
          :accessRequirements =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingPrivacyAccessAccessRequirements.t() | nil,
          :properties => GoogleApi.ContentWarehouse.V1.Model.DocProperties.t() | nil,
          :badSslCertificate =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingBadSSLCertificate.t() | nil,
          :extradup => list(GoogleApi.ContentWarehouse.V1.Model.CompositeDocExtraDup.t()) | nil,
          :subindexid => list(String.t()) | nil,
          :ptoken => GoogleApi.ContentWarehouse.V1.Model.PtokenPToken.t() | nil,
          :richcontentData =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentData.t() | nil,
          :scaledIndyRank => integer() | nil,
          :cseId => list(GoogleApi.ContentWarehouse.V1.Model.QualityProseCSEUrlInfo.t()) | nil,
          :indexingIntermediate => String.t() | nil,
          :docVideos =>
            list(GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryVideoProperties.t()) | nil,
          :indexinginfo => GoogleApi.ContentWarehouse.V1.Model.CompositeDocIndexingInfo.t() | nil,
          :localinfo => GoogleApi.ContentWarehouse.V1.Model.LocalWWWInfo.t() | nil,
          :storageRowTimestampMicros => String.t() | nil,
          :partialUpdateInfo =>
            GoogleApi.ContentWarehouse.V1.Model.CompositeDocPartialUpdateInfo.t() | nil,
          :additionalchecksums =>
            GoogleApi.ContentWarehouse.V1.Model.CompositeDocAdditionalChecksums.t() | nil,
          :anchors => GoogleApi.ContentWarehouse.V1.Model.Anchors.t() | nil,
          :registrationinfo => GoogleApi.ContentWarehouse.V1.Model.RegistrationInfo.t() | nil,
          :docAttachments => GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t() | nil,
          :docinfoPassthroughAttachments =>
            GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t() | nil,
          :docImages => list(GoogleApi.ContentWarehouse.V1.Model.ImageData.t()) | nil,
          :includedcontent =>
            list(GoogleApi.ContentWarehouse.V1.Model.CompositeDocIncludedContent.t()) | nil,
          :porninfo => GoogleApi.ContentWarehouse.V1.Model.ClassifierPornDocumentData.t() | nil,
          :urldate => String.t() | nil,
          :embeddedContentInfo =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedContentInfo.t()
            | nil,
          :richsnippet => GoogleApi.ContentWarehouse.V1.Model.RichsnippetsPageMap.t() | nil,
          :qualitysignals =>
            GoogleApi.ContentWarehouse.V1.Model.CompositeDocQualitySignals.t() | nil,
          :anchorStats =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorStatistics.t() | nil,
          :alternatename =>
            list(GoogleApi.ContentWarehouse.V1.Model.CompositeDocAlternateName.t()) | nil,
          :dataVersion =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerDataVersion.t() | nil,
          :syntacticDate =>
            GoogleApi.ContentWarehouse.V1.Model.QualityTimebasedSyntacticDate.t() | nil,
          :url => String.t() | nil,
          :docjoinsOnSpannerCommitTimestampMicros => String.t() | nil,
          :ContentChecksum96 => String.t() | nil,
          :liveexperimentinfo =>
            GoogleApi.ContentWarehouse.V1.Model.CompositeDocLiveExperimentInfo.t() | nil,
          :labelData =>
            GoogleApi.ContentWarehouse.V1.Model.QualityLabelsGoogleLabelData.t() | nil,
          :sitemap => GoogleApi.ContentWarehouse.V1.Model.Sitemap.t() | nil,
          :robotsinfolist =>
            GoogleApi.ContentWarehouse.V1.Model.CompositeDocRobotsInfoList.t() | nil,
          :doc => GoogleApi.ContentWarehouse.V1.Model.GDocumentBase.t() | nil,
          :csePagerankCutoff => integer() | nil
        }

  field(:localizedvariations,
    as: GoogleApi.ContentWarehouse.V1.Model.CompositeDocLocalizedVariations
  )

  field(:localizedAlternateName,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingConverterLocalizedAlternateName,
    type: :list
  )

  field(:forwardingdup,
    as: GoogleApi.ContentWarehouse.V1.Model.CompositeDocForwardingDup,
    type: :list
  )

  field(:perDocData, as: GoogleApi.ContentWarehouse.V1.Model.PerDocData)

  field(:accessRequirements,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingPrivacyAccessAccessRequirements
  )

  field(:properties, as: GoogleApi.ContentWarehouse.V1.Model.DocProperties)
  field(:badSslCertificate, as: GoogleApi.ContentWarehouse.V1.Model.IndexingBadSSLCertificate)
  field(:extradup, as: GoogleApi.ContentWarehouse.V1.Model.CompositeDocExtraDup, type: :list)
  field(:subindexid, type: :list)
  field(:ptoken, as: GoogleApi.ContentWarehouse.V1.Model.PtokenPToken)

  field(:richcontentData, as: GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentData)

  field(:scaledIndyRank)
  field(:cseId, as: GoogleApi.ContentWarehouse.V1.Model.QualityProseCSEUrlInfo, type: :list)
  field(:indexingIntermediate)

  field(:docVideos,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryVideoProperties,
    type: :list
  )

  field(:indexinginfo, as: GoogleApi.ContentWarehouse.V1.Model.CompositeDocIndexingInfo)
  field(:localinfo, as: GoogleApi.ContentWarehouse.V1.Model.LocalWWWInfo)
  field(:storageRowTimestampMicros)
  field(:partialUpdateInfo, as: GoogleApi.ContentWarehouse.V1.Model.CompositeDocPartialUpdateInfo)

  field(:additionalchecksums,
    as: GoogleApi.ContentWarehouse.V1.Model.CompositeDocAdditionalChecksums
  )

  field(:anchors, as: GoogleApi.ContentWarehouse.V1.Model.Anchors)
  field(:registrationinfo, as: GoogleApi.ContentWarehouse.V1.Model.RegistrationInfo)
  field(:docAttachments, as: GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet)

  field(:docinfoPassthroughAttachments,
    as: GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet
  )

  field(:docImages, as: GoogleApi.ContentWarehouse.V1.Model.ImageData, type: :list)

  field(:includedcontent,
    as: GoogleApi.ContentWarehouse.V1.Model.CompositeDocIncludedContent,
    type: :list
  )

  field(:porninfo, as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornDocumentData)
  field(:urldate)

  field(:embeddedContentInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedContentInfo
  )

  field(:richsnippet, as: GoogleApi.ContentWarehouse.V1.Model.RichsnippetsPageMap)
  field(:qualitysignals, as: GoogleApi.ContentWarehouse.V1.Model.CompositeDocQualitySignals)
  field(:anchorStats, as: GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorStatistics)

  field(:alternatename,
    as: GoogleApi.ContentWarehouse.V1.Model.CompositeDocAlternateName,
    type: :list
  )

  field(:dataVersion, as: GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerDataVersion)
  field(:syntacticDate, as: GoogleApi.ContentWarehouse.V1.Model.QualityTimebasedSyntacticDate)
  field(:url)
  field(:docjoinsOnSpannerCommitTimestampMicros)
  field(:ContentChecksum96)

  field(:liveexperimentinfo,
    as: GoogleApi.ContentWarehouse.V1.Model.CompositeDocLiveExperimentInfo
  )

  field(:labelData, as: GoogleApi.ContentWarehouse.V1.Model.QualityLabelsGoogleLabelData)
  field(:sitemap, as: GoogleApi.ContentWarehouse.V1.Model.Sitemap)
  field(:robotsinfolist, as: GoogleApi.ContentWarehouse.V1.Model.CompositeDocRobotsInfoList)
  field(:doc, as: GoogleApi.ContentWarehouse.V1.Model.GDocumentBase)
  field(:csePagerankCutoff)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.CompositeDoc do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CompositeDoc.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.CompositeDoc do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
