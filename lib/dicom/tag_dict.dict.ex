defmodule Dicom.TagDict.Dict do
  @by_tag %{
    0x0000 => %{
      0x0000 => %{
        keyword: :CommandGroupLength,
        name: "Command Group Length",
        vr: :UL
      },
      0x0002 => %{
        keyword: :AffectedSOPClassUID,
        name: "Affected SOP Class UID",
        vr: :UI
      },
      0x0003 => %{
        keyword: :RequestedSOPClassUID,
        name: "Requested SOP Class UID",
        vr: :UI
      },
      0x0100 => %{
        keyword: :CommandField,
        name: "Command Field",
        vr: :US
      },
      0x0110 => %{
        keyword: :MessageID,
        name: "Message ID",
        vr: :US
      },
      0x0120 => %{
        keyword: :MessageIDBeingRespondedTo,
        name: "Message ID Being Responded To",
        vr: :US
      },
      0x0600 => %{
        keyword: :MoveDestination,
        name: "Move Destination",
        vr: :AE
      },
      0x0700 => %{
        keyword: :Priority,
        name: "Priority",
        vr: :US
      },
      0x0800 => %{
        keyword: :CommandDataSetType,
        name: "Command Data Set Type",
        vr: :US
      },
      0x0900 => %{
        keyword: :Status,
        name: "Status",
        vr: :US
      },
      0x0901 => %{
        keyword: :OffendingElement,
        name: "Offending Element",
        vr: :AT
      },
      0x0902 => %{
        keyword: :ErrorComment,
        name: "Error Comment",
        vr: :LO
      },
      0x0903 => %{
        keyword: :ErrorID,
        name: "Error ID",
        vr: :US
      },
      0x1000 => %{
        keyword: :AffectedSOPInstanceUID,
        name: "Affected SOP Instance UID",
        vr: :UI
      },
      0x1001 => %{
        keyword: :RequestedSOPInstanceUID,
        name: "Requested SOP Instance UID",
        vr: :UI
      },
      0x1002 => %{
        keyword: :EventTypeID,
        name: "Event Type ID",
        vr: :US
      },
      0x1005 => %{
        keyword: :AttributeIdentifierList,
        name: "Attribute Identifier List",
        vr: :AT
      },
      0x1008 => %{
        keyword: :ActionTypeID,
        name: "Action Type ID",
        vr: :US
      },
      0x1020 => %{
        keyword: :NumberOfRemainingSuboperations,
        name: "Number of Remaining Sub-operations",
        vr: :US
      },
      0x1021 => %{
        keyword: :NumberOfCompletedSuboperations,
        name: "Number of Completed Sub-operations",
        vr: :US
      },
      0x1022 => %{
        keyword: :NumberOfFailedSuboperations,
        name: "Number of Failed Sub-operations",
        vr: :US
      },
      0x1023 => %{
        keyword: :NumberOfWarningSuboperations,
        name: "Number of Warning Sub-operations",
        vr: :US
      },
      0x1030 => %{
        keyword: :MoveOriginatorApplicationEntityTitle,
        name: "Move Originator Application Entity Title",
        vr: :AE
      },
      0x1031 => %{
        keyword: :MoveOriginatorMessageID,
        name: "Move Originator Message ID",
        vr: :US
      }
    },
    0x0002 => %{
      0x0000 => %{
        keyword: :FileMetaInformationGroupLength,
        name: "File Meta Information Group Length",
        vr: :UL
      },
      0x0001 => %{
        keyword: :FileMetaInformationVersion,
        name: "File Meta Information Version",
        vr: :OB
      },
      0x0002 => %{
        keyword: :MediaStorageSOPClassUID,
        name: "Media Storage SOP Class UID",
        vr: :UI
      },
      0x0003 => %{
        keyword: :MediaStorageSOPInstanceUID,
        name: "Media Storage SOP Instance UID",
        vr: :UI
      },
      0x0010 => %{
        keyword: :TransferSyntaxUID,
        name: "Transfer Syntax UID",
        vr: :UI
      },
      0x0012 => %{
        keyword: :ImplementationClassUID,
        name: "Implementation Class UID",
        vr: :UI
      },
      0x0013 => %{
        keyword: :ImplementationVersionName,
        name: "Implementation Version Name",
        vr: :SH
      },
      0x0016 => %{
        keyword: :SourceApplicationEntityTitle,
        name: "Source Application Entity Title",
        vr: :AE
      },
      0x0017 => %{
        keyword: :SendingApplicationEntityTitle,
        name: "Sending Application Entity Title",
        vr: :AE
      },
      0x0018 => %{
        keyword: :ReceivingApplicationEntityTitle,
        name: "Receiving Application Entity Title",
        vr: :AE
      },
      0x0026 => %{
        keyword: :SourcePresentationAddress,
        name: "Source Presentation Address",
        vr: :UR
      },
      0x0027 => %{
        keyword: :SendingPresentationAddress,
        name: "Sending Presentation Address",
        vr: :UR
      },
      0x0028 => %{
        keyword: :ReceivingPresentationAddress,
        name: "Receiving Presentation Address",
        vr: :UR
      },
      0x0031 => %{
        keyword: :RTVMetaInformationVersion,
        name: "RTV Meta Information Version",
        vr: :OB
      },
      0x0032 => %{
        keyword: :RTVCommunicationSOPClassUID,
        name: "RTV Communication SOP Class UID",
        vr: :UI
      },
      0x0033 => %{
        keyword: :RTVCommunicationSOPInstanceUID,
        name: "RTV Communication SOP Instance UID",
        vr: :UI
      },
      0x0035 => %{
        keyword: :RTVSourceIdentifier,
        name: "RTV Source Identifier",
        vr: :OB
      },
      0x0036 => %{
        keyword: :RTVFlowIdentifier,
        name: "RTV Flow Identifier",
        vr: :OB
      },
      0x0037 => %{
        keyword: :RTVFlowRTPSamplingRate,
        name: "RTV Flow RTP Sampling Rate",
        vr: :UL
      },
      0x0038 => %{
        keyword: :RTVFlowActualFrameDuration,
        name: "RTV Flow Actual Frame Duration",
        vr: :FD
      },
      0x0100 => %{
        keyword: :PrivateInformationCreatorUID,
        name: "Private Information Creator UID",
        vr: :UI
      },
      0x0102 => %{
        keyword: :PrivateInformation,
        name: "Private Information",
        vr: :OB
      }
    },
    0x0004 => %{
      0x1130 => %{
        keyword: :FileSetID,
        name: "File-set ID",
        vr: :CS
      },
      0x1141 => %{
        keyword: :FileSetDescriptorFileID,
        name: "File-set Descriptor File ID",
        vr: :CS
      },
      0x1142 => %{
        keyword: :SpecificCharacterSetOfFileSetDescriptorFile,
        name: "Specific Character Set of File-set Descriptor File",
        vr: :CS
      },
      0x1200 => %{
        keyword: :OffsetOfTheFirstDirectoryRecordOfTheRootDirectoryEntity,
        name: "Offset of the First Directory Record of the Root Directory Entity",
        vr: :UL
      },
      0x1202 => %{
        keyword: :OffsetOfTheLastDirectoryRecordOfTheRootDirectoryEntity,
        name: "Offset of the Last Directory Record of the Root Directory Entity",
        vr: :UL
      },
      0x1212 => %{
        keyword: :FileSetConsistencyFlag,
        name: "File-set Consistency Flag",
        vr: :US
      },
      0x1220 => %{
        keyword: :DirectoryRecordSequence,
        name: "Directory Record Sequence",
        vr: :SQ
      },
      0x1400 => %{
        keyword: :OffsetOfTheNextDirectoryRecord,
        name: "Offset of the Next Directory Record",
        vr: :UL
      },
      0x1410 => %{
        keyword: :RecordInUseFlag,
        name: "Record In-use Flag",
        vr: :US
      },
      0x1420 => %{
        keyword: :OffsetOfReferencedLowerLevelDirectoryEntity,
        name: "Offset of Referenced Lower-Level Directory Entity",
        vr: :UL
      },
      0x1430 => %{
        keyword: :DirectoryRecordType,
        name: "Directory Record Type",
        vr: :CS
      },
      0x1432 => %{
        keyword: :PrivateRecordUID,
        name: "Private Record UID",
        vr: :UI
      },
      0x1500 => %{
        keyword: :ReferencedFileID,
        name: "Referenced File ID",
        vr: :CS
      },
      0x1504 => %{
        keyword: :MRDRDirectoryRecordOffset,
        name: "MRDR Directory Record Offset",
        vr: :UL
      },
      0x1510 => %{
        keyword: :ReferencedSOPClassUIDInFile,
        name: "Referenced SOP Class UID in File",
        vr: :UI
      },
      0x1511 => %{
        keyword: :ReferencedSOPInstanceUIDInFile,
        name: "Referenced SOP Instance UID in File",
        vr: :UI
      },
      0x1512 => %{
        keyword: :ReferencedTransferSyntaxUIDInFile,
        name: "Referenced Transfer Syntax UID in File",
        vr: :UI
      },
      0x151A => %{
        keyword: :ReferencedRelatedGeneralSOPClassUIDInFile,
        name: "Referenced Related General SOP Class UID in File",
        vr: :UI
      },
      0x1600 => %{
        keyword: :NumberOfReferences,
        name: "Number of References",
        vr: :UL
      }
    },
    0x0006 => %{
      0x0001 => %{
        keyword: :CurrentFrameFunctionalGroupsSequence,
        name: "Current Frame Functional Groups Sequence",
        vr: :SQ
      }
    },
    0x0008 => %{
      0x0001 => %{
        keyword: :LengthToEnd,
        name: "Length to End",
        vr: :UL
      },
      0x0005 => %{
        keyword: :SpecificCharacterSet,
        name: "Specific Character Set",
        vr: :CS
      },
      0x0006 => %{
        keyword: :LanguageCodeSequence,
        name: "Language Code Sequence",
        vr: :SQ
      },
      0x0008 => %{
        keyword: :ImageType,
        name: "Image Type",
        vr: :CS
      },
      0x0010 => %{
        keyword: :RecognitionCode,
        name: "Recognition Code",
        vr: :SH
      },
      0x0012 => %{
        keyword: :InstanceCreationDate,
        name: "Instance Creation Date",
        vr: :DA
      },
      0x0013 => %{
        keyword: :InstanceCreationTime,
        name: "Instance Creation Time",
        vr: :TM
      },
      0x0014 => %{
        keyword: :InstanceCreatorUID,
        name: "Instance Creator UID",
        vr: :UI
      },
      0x0015 => %{
        keyword: :InstanceCoercionDateTime,
        name: "Instance Coercion DateTime",
        vr: :DT
      },
      0x0016 => %{
        keyword: :SOPClassUID,
        name: "SOP Class UID",
        vr: :UI
      },
      0x0017 => %{
        keyword: :AcquisitionUID,
        name: "Acquisition UID",
        vr: :UI
      },
      0x0018 => %{
        keyword: :SOPInstanceUID,
        name: "SOP Instance UID",
        vr: :UI
      },
      0x0019 => %{
        keyword: :PyramidUID,
        name: "Pyramid UID",
        vr: :UI
      },
      0x001A => %{
        keyword: :RelatedGeneralSOPClassUID,
        name: "Related General SOP Class UID",
        vr: :UI
      },
      0x001B => %{
        keyword: :OriginalSpecializedSOPClassUID,
        name: "Original Specialized SOP Class UID",
        vr: :UI
      },
      0x001C => %{
        keyword: :SyntheticData,
        name: "Synthetic Data",
        vr: :CS
      },
      0x0020 => %{
        keyword: :StudyDate,
        name: "Study Date",
        vr: :DA
      },
      0x0021 => %{
        keyword: :SeriesDate,
        name: "Series Date",
        vr: :DA
      },
      0x0022 => %{
        keyword: :AcquisitionDate,
        name: "Acquisition Date",
        vr: :DA
      },
      0x0023 => %{
        keyword: :ContentDate,
        name: "Content Date",
        vr: :DA
      },
      0x0024 => %{
        keyword: :OverlayDate,
        name: "Overlay Date",
        vr: :DA
      },
      0x0025 => %{
        keyword: :CurveDate,
        name: "Curve Date",
        vr: :DA
      },
      0x002A => %{
        keyword: :AcquisitionDateTime,
        name: "Acquisition DateTime",
        vr: :DT
      },
      0x0030 => %{
        keyword: :StudyTime,
        name: "Study Time",
        vr: :TM
      },
      0x0031 => %{
        keyword: :SeriesTime,
        name: "Series Time",
        vr: :TM
      },
      0x0032 => %{
        keyword: :AcquisitionTime,
        name: "Acquisition Time",
        vr: :TM
      },
      0x0033 => %{
        keyword: :ContentTime,
        name: "Content Time",
        vr: :TM
      },
      0x0034 => %{
        keyword: :OverlayTime,
        name: "Overlay Time",
        vr: :TM
      },
      0x0035 => %{
        keyword: :CurveTime,
        name: "Curve Time",
        vr: :TM
      },
      0x0040 => %{
        keyword: :DataSetType,
        name: "Data Set Type",
        vr: :US
      },
      0x0041 => %{
        keyword: :DataSetSubtype,
        name: "Data Set Subtype",
        vr: :LO
      },
      0x0042 => %{
        keyword: :NuclearMedicineSeriesType,
        name: "Nuclear Medicine Series Type",
        vr: :CS
      },
      0x0050 => %{
        keyword: :AccessionNumber,
        name: "Accession Number",
        vr: :SH
      },
      0x0051 => %{
        keyword: :IssuerOfAccessionNumberSequence,
        name: "Issuer of Accession Number Sequence",
        vr: :SQ
      },
      0x0052 => %{
        keyword: :QueryRetrieveLevel,
        name: "Query/Retrieve Level",
        vr: :CS
      },
      0x0053 => %{
        keyword: :QueryRetrieveView,
        name: "Query/Retrieve View",
        vr: :CS
      },
      0x0054 => %{
        keyword: :RetrieveAETitle,
        name: "Retrieve AE Title",
        vr: :AE
      },
      0x0055 => %{
        keyword: :StationAETitle,
        name: "Station AE Title",
        vr: :AE
      },
      0x0056 => %{
        keyword: :InstanceAvailability,
        name: "Instance Availability",
        vr: :CS
      },
      0x0058 => %{
        keyword: :FailedSOPInstanceUIDList,
        name: "Failed SOP Instance UID List",
        vr: :UI
      },
      0x0060 => %{
        keyword: :Modality,
        name: "Modality",
        vr: :CS
      },
      0x0061 => %{
        keyword: :ModalitiesInStudy,
        name: "Modalities in Study",
        vr: :CS
      },
      0x0062 => %{
        keyword: :SOPClassesInStudy,
        name: "SOP Classes in Study",
        vr: :UI
      },
      0x0063 => %{
        keyword: :AnatomicRegionsInStudyCodeSequence,
        name: "Anatomic Regions in Study Code Sequence",
        vr: :SQ
      },
      0x0064 => %{
        keyword: :ConversionType,
        name: "Conversion Type",
        vr: :CS
      },
      0x0068 => %{
        keyword: :PresentationIntentType,
        name: "Presentation Intent Type",
        vr: :CS
      },
      0x0070 => %{
        keyword: :Manufacturer,
        name: "Manufacturer",
        vr: :LO
      },
      0x0080 => %{
        keyword: :InstitutionName,
        name: "Institution Name",
        vr: :LO
      },
      0x0081 => %{
        keyword: :InstitutionAddress,
        name: "Institution Address",
        vr: :ST
      },
      0x0082 => %{
        keyword: :InstitutionCodeSequence,
        name: "Institution Code Sequence",
        vr: :SQ
      },
      0x0090 => %{
        keyword: :ReferringPhysicianName,
        name: "Referring Physician's Name",
        vr: :PN
      },
      0x0092 => %{
        keyword: :ReferringPhysicianAddress,
        name: "Referring Physician's Address",
        vr: :ST
      },
      0x0094 => %{
        keyword: :ReferringPhysicianTelephoneNumbers,
        name: "Referring Physician's Telephone Numbers",
        vr: :SH
      },
      0x0096 => %{
        keyword: :ReferringPhysicianIdentificationSequence,
        name: "Referring Physician Identification Sequence",
        vr: :SQ
      },
      0x009C => %{
        keyword: :ConsultingPhysicianName,
        name: "Consulting Physician's Name",
        vr: :PN
      },
      0x009D => %{
        keyword: :ConsultingPhysicianIdentificationSequence,
        name: "Consulting Physician Identification Sequence",
        vr: :SQ
      },
      0x0100 => %{
        keyword: :CodeValue,
        name: "Code Value",
        vr: :SH
      },
      0x0101 => %{
        keyword: :ExtendedCodeValue,
        name: "Extended Code Value",
        vr: :LO
      },
      0x0102 => %{
        keyword: :CodingSchemeDesignator,
        name: "Coding Scheme Designator",
        vr: :SH
      },
      0x0103 => %{
        keyword: :CodingSchemeVersion,
        name: "Coding Scheme Version",
        vr: :SH
      },
      0x0104 => %{
        keyword: :CodeMeaning,
        name: "Code Meaning",
        vr: :LO
      },
      0x0105 => %{
        keyword: :MappingResource,
        name: "Mapping Resource",
        vr: :CS
      },
      0x0106 => %{
        keyword: :ContextGroupVersion,
        name: "Context Group Version",
        vr: :DT
      },
      0x0107 => %{
        keyword: :ContextGroupLocalVersion,
        name: "Context Group Local Version",
        vr: :DT
      },
      0x0108 => %{
        keyword: :ExtendedCodeMeaning,
        name: "Extended Code Meaning",
        vr: :LT
      },
      0x0109 => %{
        keyword: :CodingSchemeResourcesSequence,
        name: "Coding Scheme Resources Sequence",
        vr: :SQ
      },
      0x010A => %{
        keyword: :CodingSchemeURLType,
        name: "Coding Scheme URL Type",
        vr: :CS
      },
      0x010B => %{
        keyword: :ContextGroupExtensionFlag,
        name: "Context Group Extension Flag",
        vr: :CS
      },
      0x010C => %{
        keyword: :CodingSchemeUID,
        name: "Coding Scheme UID",
        vr: :UI
      },
      0x010D => %{
        keyword: :ContextGroupExtensionCreatorUID,
        name: "Context Group Extension Creator UID",
        vr: :UI
      },
      0x010E => %{
        keyword: :CodingSchemeURL,
        name: "Coding Scheme URL",
        vr: :UR
      },
      0x010F => %{
        keyword: :ContextIdentifier,
        name: "Context Identifier",
        vr: :CS
      },
      0x0110 => %{
        keyword: :CodingSchemeIdentificationSequence,
        name: "Coding Scheme Identification Sequence",
        vr: :SQ
      },
      0x0112 => %{
        keyword: :CodingSchemeRegistry,
        name: "Coding Scheme Registry",
        vr: :LO
      },
      0x0114 => %{
        keyword: :CodingSchemeExternalID,
        name: "Coding Scheme External ID",
        vr: :ST
      },
      0x0115 => %{
        keyword: :CodingSchemeName,
        name: "Coding Scheme Name",
        vr: :ST
      },
      0x0116 => %{
        keyword: :CodingSchemeResponsibleOrganization,
        name: "Coding Scheme Responsible Organization",
        vr: :ST
      },
      0x0117 => %{
        keyword: :ContextUID,
        name: "Context UID",
        vr: :UI
      },
      0x0118 => %{
        keyword: :MappingResourceUID,
        name: "Mapping Resource UID",
        vr: :UI
      },
      0x0119 => %{
        keyword: :LongCodeValue,
        name: "Long Code Value",
        vr: :UC
      },
      0x0120 => %{
        keyword: :URNCodeValue,
        name: "URN Code Value",
        vr: :UR
      },
      0x0121 => %{
        keyword: :EquivalentCodeSequence,
        name: "Equivalent Code Sequence",
        vr: :SQ
      },
      0x0122 => %{
        keyword: :MappingResourceName,
        name: "Mapping Resource Name",
        vr: :LO
      },
      0x0123 => %{
        keyword: :ContextGroupIdentificationSequence,
        name: "Context Group Identification Sequence",
        vr: :SQ
      },
      0x0124 => %{
        keyword: :MappingResourceIdentificationSequence,
        name: "Mapping Resource Identification Sequence",
        vr: :SQ
      },
      0x0201 => %{
        keyword: :TimezoneOffsetFromUTC,
        name: "Timezone Offset From UTC",
        vr: :SH
      },
      0x0220 => %{
        keyword: :ResponsibleGroupCodeSequence,
        name: "Responsible Group Code Sequence",
        vr: :SQ
      },
      0x0221 => %{
        keyword: :EquipmentModality,
        name: "Equipment Modality",
        vr: :CS
      },
      0x0222 => %{
        keyword: :ManufacturerRelatedModelGroup,
        name: "Manufacturer's Related Model Group",
        vr: :LO
      },
      0x0300 => %{
        keyword: :PrivateDataElementCharacteristicsSequence,
        name: "Private Data Element Characteristics Sequence",
        vr: :SQ
      },
      0x0301 => %{
        keyword: :PrivateGroupReference,
        name: "Private Group Reference",
        vr: :US
      },
      0x0302 => %{
        keyword: :PrivateCreatorReference,
        name: "Private Creator Reference",
        vr: :LO
      },
      0x0303 => %{
        keyword: :BlockIdentifyingInformationStatus,
        name: "Block Identifying Information Status",
        vr: :CS
      },
      0x0304 => %{
        keyword: :NonidentifyingPrivateElements,
        name: "Nonidentifying Private Elements",
        vr: :US
      },
      0x0305 => %{
        keyword: :DeidentificationActionSequence,
        name: "Deidentification Action Sequence",
        vr: :SQ
      },
      0x0306 => %{
        keyword: :IdentifyingPrivateElements,
        name: "Identifying Private Elements",
        vr: :US
      },
      0x0307 => %{
        keyword: :DeidentificationAction,
        name: "Deidentification Action",
        vr: :CS
      },
      0x0308 => %{
        keyword: :PrivateDataElement,
        name: "Private Data Element",
        vr: :US
      },
      0x0309 => %{
        keyword: :PrivateDataElementValueMultiplicity,
        name: "Private Data Element Value Multiplicity",
        vr: :UL
      },
      0x030A => %{
        keyword: :PrivateDataElementValueRepresentation,
        name: "Private Data Element Value Representation",
        vr: :CS
      },
      0x030B => %{
        keyword: :PrivateDataElementNumberOfItems,
        name: "Private Data Element Number of Items",
        vr: :UL
      },
      0x030C => %{
        keyword: :PrivateDataElementName,
        name: "Private Data Element Name",
        vr: :UC
      },
      0x030D => %{
        keyword: :PrivateDataElementKeyword,
        name: "Private Data Element Keyword",
        vr: :UC
      },
      0x030E => %{
        keyword: :PrivateDataElementDescription,
        name: "Private Data Element Description",
        vr: :UT
      },
      0x030F => %{
        keyword: :PrivateDataElementEncoding,
        name: "Private Data Element Encoding",
        vr: :UT
      },
      0x0310 => %{
        keyword: :PrivateDataElementDefinitionSequence,
        name: "Private Data Element Definition Sequence",
        vr: :SQ
      },
      0x0400 => %{
        keyword: :ScopeOfInventorySequence,
        name: "Scope of Inventory Sequence",
        vr: :SQ
      },
      0x0401 => %{
        keyword: :InventoryPurpose,
        name: "Inventory Purpose",
        vr: :LT
      },
      0x0402 => %{
        keyword: :InventoryInstanceDescription,
        name: "Inventory Instance Description",
        vr: :LT
      },
      0x0403 => %{
        keyword: :InventoryLevel,
        name: "Inventory Level",
        vr: :CS
      },
      0x0404 => %{
        keyword: :ItemInventoryDateTime,
        name: "Item Inventory DateTime",
        vr: :DT
      },
      0x0405 => %{
        keyword: :RemovedFromOperationalUse,
        name: "Removed from Operational Use",
        vr: :CS
      },
      0x0406 => %{
        keyword: :ReasonForRemovalCodeSequence,
        name: "Reason for Removal Code Sequence",
        vr: :SQ
      },
      0x0407 => %{
        keyword: :StoredInstanceBaseURI,
        name: "Stored Instance Base URI",
        vr: :UR
      },
      0x0408 => %{
        keyword: :FolderAccessURI,
        name: "Folder Access URI",
        vr: :UR
      },
      0x0409 => %{
        keyword: :FileAccessURI,
        name: "File Access URI",
        vr: :UR
      },
      0x040A => %{
        keyword: :ContainerFileType,
        name: "Container File Type",
        vr: :CS
      },
      0x040B => %{
        keyword: :FilenameInContainer,
        name: "Filename in Container",
        vr: :UR
      },
      0x040C => %{
        keyword: :FileOffsetInContainer,
        name: "File Offset in Container",
        vr: :UV
      },
      0x040D => %{
        keyword: :FileLengthInContainer,
        name: "File Length in Container",
        vr: :UV
      },
      0x040E => %{
        keyword: :StoredInstanceTransferSyntaxUID,
        name: "Stored Instance Transfer Syntax UID",
        vr: :UI
      },
      0x040F => %{
        keyword: :ExtendedMatchingMechanisms,
        name: "Extended Matching Mechanisms",
        vr: :CS
      },
      0x0410 => %{
        keyword: :RangeMatchingSequence,
        name: "Range Matching Sequence",
        vr: :SQ
      },
      0x0411 => %{
        keyword: :ListOfUIDMatchingSequence,
        name: "List of UID Matching Sequence",
        vr: :SQ
      },
      0x0412 => %{
        keyword: :EmptyValueMatchingSequence,
        name: "Empty Value Matching Sequence",
        vr: :SQ
      },
      0x0413 => %{
        keyword: :GeneralMatchingSequence,
        name: "General Matching Sequence",
        vr: :SQ
      },
      0x0414 => %{
        keyword: :RequestedStatusInterval,
        name: "Requested Status Interval",
        vr: :US
      },
      0x0415 => %{
        keyword: :RetainInstances,
        name: "Retain Instances",
        vr: :CS
      },
      0x0416 => %{
        keyword: :ExpirationDateTime,
        name: "Expiration DateTime",
        vr: :DT
      },
      0x0417 => %{
        keyword: :TransactionStatus,
        name: "Transaction Status",
        vr: :CS
      },
      0x0418 => %{
        keyword: :TransactionStatusComment,
        name: "Transaction Status Comment",
        vr: :LT
      },
      0x0419 => %{
        keyword: :FileSetAccessSequence,
        name: "File Set Access Sequence",
        vr: :SQ
      },
      0x041A => %{
        keyword: :FileAccessSequence,
        name: "File Access Sequence",
        vr: :SQ
      },
      0x041B => %{
        keyword: :RecordKey,
        name: "Record Key",
        vr: :OB
      },
      0x041C => %{
        keyword: :PriorRecordKey,
        name: "Prior Record Key",
        vr: :OB
      },
      0x041D => %{
        keyword: :MetadataSequence,
        name: "Metadata Sequence",
        vr: :SQ
      },
      0x041E => %{
        keyword: :UpdatedMetadataSequence,
        name: "Updated Metadata Sequence",
        vr: :SQ
      },
      0x041F => %{
        keyword: :StudyUpdateDateTime,
        name: "Study Update DateTime",
        vr: :DT
      },
      0x0420 => %{
        keyword: :InventoryAccessEndPointsSequence,
        name: "Inventory Access End Points Sequence",
        vr: :SQ
      },
      0x0421 => %{
        keyword: :StudyAccessEndPointsSequence,
        name: "Study Access End Points Sequence",
        vr: :SQ
      },
      0x0422 => %{
        keyword: :IncorporatedInventoryInstanceSequence,
        name: "Incorporated Inventory Instance Sequence",
        vr: :SQ
      },
      0x0423 => %{
        keyword: :InventoriedStudiesSequence,
        name: "Inventoried Studies Sequence",
        vr: :SQ
      },
      0x0424 => %{
        keyword: :InventoriedSeriesSequence,
        name: "Inventoried Series Sequence",
        vr: :SQ
      },
      0x0425 => %{
        keyword: :InventoriedInstancesSequence,
        name: "Inventoried Instances Sequence",
        vr: :SQ
      },
      0x0426 => %{
        keyword: :InventoryCompletionStatus,
        name: "Inventory Completion Status",
        vr: :CS
      },
      0x0427 => %{
        keyword: :NumberOfStudyRecordsInInstance,
        name: "Number of Study Records in Instance",
        vr: :UL
      },
      0x0428 => %{
        keyword: :TotalNumberOfStudyRecords,
        name: "Total Number of Study Records",
        vr: :UV
      },
      0x0429 => %{
        keyword: :MaximumNumberOfRecords,
        name: "Maximum Number of Records",
        vr: :UV
      },
      0x1000 => %{
        keyword: :NetworkID,
        name: "Network ID",
        vr: :AE
      },
      0x1010 => %{
        keyword: :StationName,
        name: "Station Name",
        vr: :SH
      },
      0x1030 => %{
        keyword: :StudyDescription,
        name: "Study Description",
        vr: :LO
      },
      0x1032 => %{
        keyword: :ProcedureCodeSequence,
        name: "Procedure Code Sequence",
        vr: :SQ
      },
      0x103E => %{
        keyword: :SeriesDescription,
        name: "Series Description",
        vr: :LO
      },
      0x103F => %{
        keyword: :SeriesDescriptionCodeSequence,
        name: "Series Description Code Sequence",
        vr: :SQ
      },
      0x1040 => %{
        keyword: :InstitutionalDepartmentName,
        name: "Institutional Department Name",
        vr: :LO
      },
      0x1041 => %{
        keyword: :InstitutionalDepartmentTypeCodeSequence,
        name: "Institutional Department Type Code Sequence",
        vr: :SQ
      },
      0x1048 => %{
        keyword: :PhysiciansOfRecord,
        name: "Physician(s) of Record",
        vr: :PN
      },
      0x1049 => %{
        keyword: :PhysiciansOfRecordIdentificationSequence,
        name: "Physician(s) of Record Identification Sequence",
        vr: :SQ
      },
      0x1050 => %{
        keyword: :PerformingPhysicianName,
        name: "Performing Physician's Name",
        vr: :PN
      },
      0x1052 => %{
        keyword: :PerformingPhysicianIdentificationSequence,
        name: "Performing Physician Identification Sequence",
        vr: :SQ
      },
      0x1060 => %{
        keyword: :NameOfPhysiciansReadingStudy,
        name: "Name of Physician(s) Reading Study",
        vr: :PN
      },
      0x1062 => %{
        keyword: :PhysiciansReadingStudyIdentificationSequence,
        name: "Physician(s) Reading Study Identification Sequence",
        vr: :SQ
      },
      0x1070 => %{
        keyword: :OperatorsName,
        name: "Operators' Name",
        vr: :PN
      },
      0x1072 => %{
        keyword: :OperatorIdentificationSequence,
        name: "Operator Identification Sequence",
        vr: :SQ
      },
      0x1080 => %{
        keyword: :AdmittingDiagnosesDescription,
        name: "Admitting Diagnoses Description",
        vr: :LO
      },
      0x1084 => %{
        keyword: :AdmittingDiagnosesCodeSequence,
        name: "Admitting Diagnoses Code Sequence",
        vr: :SQ
      },
      0x1088 => %{
        keyword: :PyramidDescription,
        name: "Pyramid Description",
        vr: :LO
      },
      0x1090 => %{
        keyword: :ManufacturerModelName,
        name: "Manufacturer's Model Name",
        vr: :LO
      },
      0x1100 => %{
        keyword: :ReferencedResultsSequence,
        name: "Referenced Results Sequence",
        vr: :SQ
      },
      0x1110 => %{
        keyword: :ReferencedStudySequence,
        name: "Referenced Study Sequence",
        vr: :SQ
      },
      0x1111 => %{
        keyword: :ReferencedPerformedProcedureStepSequence,
        name: "Referenced Performed Procedure Step Sequence",
        vr: :SQ
      },
      0x1112 => %{
        keyword: :ReferencedInstancesBySOPClassSequence,
        name: "Referenced Instances by SOP Class Sequence",
        vr: :SQ
      },
      0x1115 => %{
        keyword: :ReferencedSeriesSequence,
        name: "Referenced Series Sequence",
        vr: :SQ
      },
      0x1120 => %{
        keyword: :ReferencedPatientSequence,
        name: "Referenced Patient Sequence",
        vr: :SQ
      },
      0x1125 => %{
        keyword: :ReferencedVisitSequence,
        name: "Referenced Visit Sequence",
        vr: :SQ
      },
      0x1130 => %{
        keyword: :ReferencedOverlaySequence,
        name: "Referenced Overlay Sequence",
        vr: :SQ
      },
      0x1134 => %{
        keyword: :ReferencedStereometricInstanceSequence,
        name: "Referenced Stereometric Instance Sequence",
        vr: :SQ
      },
      0x113A => %{
        keyword: :ReferencedWaveformSequence,
        name: "Referenced Waveform Sequence",
        vr: :SQ
      },
      0x1140 => %{
        keyword: :ReferencedImageSequence,
        name: "Referenced Image Sequence",
        vr: :SQ
      },
      0x1145 => %{
        keyword: :ReferencedCurveSequence,
        name: "Referenced Curve Sequence",
        vr: :SQ
      },
      0x114A => %{
        keyword: :ReferencedInstanceSequence,
        name: "Referenced Instance Sequence",
        vr: :SQ
      },
      0x114B => %{
        keyword: :ReferencedRealWorldValueMappingInstanceSequence,
        name: "Referenced Real World Value Mapping Instance Sequence",
        vr: :SQ
      },
      0x114C => %{
        keyword: :ReferencedSegmentationSequence,
        name: "Referenced Segmentation Sequence",
        vr: :SQ
      },
      0x1150 => %{
        keyword: :ReferencedSOPClassUID,
        name: "Referenced SOP Class UID",
        vr: :UI
      },
      0x1155 => %{
        keyword: :ReferencedSOPInstanceUID,
        name: "Referenced SOP Instance UID",
        vr: :UI
      },
      0x1156 => %{
        keyword: :DefinitionSourceSequence,
        name: "Definition Source Sequence",
        vr: :SQ
      },
      0x115A => %{
        keyword: :SOPClassesSupported,
        name: "SOP Classes Supported",
        vr: :UI
      },
      0x1160 => %{
        keyword: :ReferencedFrameNumber,
        name: "Referenced Frame Number",
        vr: :IS
      },
      0x1161 => %{
        keyword: :SimpleFrameList,
        name: "Simple Frame List",
        vr: :UL
      },
      0x1162 => %{
        keyword: :CalculatedFrameList,
        name: "Calculated Frame List",
        vr: :UL
      },
      0x1163 => %{
        keyword: :TimeRange,
        name: "Time Range",
        vr: :FD
      },
      0x1164 => %{
        keyword: :FrameExtractionSequence,
        name: "Frame Extraction Sequence",
        vr: :SQ
      },
      0x1167 => %{
        keyword: :MultiFrameSourceSOPInstanceUID,
        name: "Multi-frame Source SOP Instance UID",
        vr: :UI
      },
      0x1190 => %{
        keyword: :RetrieveURL,
        name: "Retrieve URL",
        vr: :UR
      },
      0x1195 => %{
        keyword: :TransactionUID,
        name: "Transaction UID",
        vr: :UI
      },
      0x1196 => %{
        keyword: :WarningReason,
        name: "Warning Reason",
        vr: :US
      },
      0x1197 => %{
        keyword: :FailureReason,
        name: "Failure Reason",
        vr: :US
      },
      0x1198 => %{
        keyword: :FailedSOPSequence,
        name: "Failed SOP Sequence",
        vr: :SQ
      },
      0x1199 => %{
        keyword: :ReferencedSOPSequence,
        name: "Referenced SOP Sequence",
        vr: :SQ
      },
      0x119A => %{
        keyword: :OtherFailuresSequence,
        name: "Other Failures Sequence",
        vr: :SQ
      },
      0x119B => %{
        keyword: :FailedStudySequence,
        name: "Failed Study Sequence",
        vr: :SQ
      },
      0x1200 => %{
        keyword: :StudiesContainingOtherReferencedInstancesSequence,
        name: "Studies Containing Other Referenced Instances Sequence",
        vr: :SQ
      },
      0x1250 => %{
        keyword: :RelatedSeriesSequence,
        name: "Related Series Sequence",
        vr: :SQ
      },
      0x2110 => %{
        keyword: :LossyImageCompressionRetired,
        name: "Lossy Image Compression (Retired)",
        vr: :CS
      },
      0x2111 => %{
        keyword: :DerivationDescription,
        name: "Derivation Description",
        vr: :ST
      },
      0x2112 => %{
        keyword: :SourceImageSequence,
        name: "Source Image Sequence",
        vr: :SQ
      },
      0x2120 => %{
        keyword: :StageName,
        name: "Stage Name",
        vr: :SH
      },
      0x2122 => %{
        keyword: :StageNumber,
        name: "Stage Number",
        vr: :IS
      },
      0x2124 => %{
        keyword: :NumberOfStages,
        name: "Number of Stages",
        vr: :IS
      },
      0x2127 => %{
        keyword: :ViewName,
        name: "View Name",
        vr: :SH
      },
      0x2128 => %{
        keyword: :ViewNumber,
        name: "View Number",
        vr: :IS
      },
      0x2129 => %{
        keyword: :NumberOfEventTimers,
        name: "Number of Event Timers",
        vr: :IS
      },
      0x212A => %{
        keyword: :NumberOfViewsInStage,
        name: "Number of Views in Stage",
        vr: :IS
      },
      0x2130 => %{
        keyword: :EventElapsedTimes,
        name: "Event Elapsed Time(s)",
        vr: :DS
      },
      0x2132 => %{
        keyword: :EventTimerNames,
        name: "Event Timer Name(s)",
        vr: :LO
      },
      0x2133 => %{
        keyword: :EventTimerSequence,
        name: "Event Timer Sequence",
        vr: :SQ
      },
      0x2134 => %{
        keyword: :EventTimeOffset,
        name: "Event Time Offset",
        vr: :FD
      },
      0x2135 => %{
        keyword: :EventCodeSequence,
        name: "Event Code Sequence",
        vr: :SQ
      },
      0x2142 => %{
        keyword: :StartTrim,
        name: "Start Trim",
        vr: :IS
      },
      0x2143 => %{
        keyword: :StopTrim,
        name: "Stop Trim",
        vr: :IS
      },
      0x2144 => %{
        keyword: :RecommendedDisplayFrameRate,
        name: "Recommended Display Frame Rate",
        vr: :IS
      },
      0x2200 => %{
        keyword: :TransducerPosition,
        name: "Transducer Position",
        vr: :CS
      },
      0x2204 => %{
        keyword: :TransducerOrientation,
        name: "Transducer Orientation",
        vr: :CS
      },
      0x2208 => %{
        keyword: :AnatomicStructure,
        name: "Anatomic Structure",
        vr: :CS
      },
      0x2218 => %{
        keyword: :AnatomicRegionSequence,
        name: "Anatomic Region Sequence",
        vr: :SQ
      },
      0x2220 => %{
        keyword: :AnatomicRegionModifierSequence,
        name: "Anatomic Region Modifier Sequence",
        vr: :SQ
      },
      0x2228 => %{
        keyword: :PrimaryAnatomicStructureSequence,
        name: "Primary Anatomic Structure Sequence",
        vr: :SQ
      },
      0x2229 => %{
        keyword: :AnatomicStructureSpaceOrRegionSequence,
        name: "Anatomic Structure, Space or Region Sequence",
        vr: :SQ
      },
      0x2230 => %{
        keyword: :PrimaryAnatomicStructureModifierSequence,
        name: "Primary Anatomic Structure Modifier Sequence",
        vr: :SQ
      },
      0x2240 => %{
        keyword: :TransducerPositionSequence,
        name: "Transducer Position Sequence",
        vr: :SQ
      },
      0x2242 => %{
        keyword: :TransducerPositionModifierSequence,
        name: "Transducer Position Modifier Sequence",
        vr: :SQ
      },
      0x2244 => %{
        keyword: :TransducerOrientationSequence,
        name: "Transducer Orientation Sequence",
        vr: :SQ
      },
      0x2246 => %{
        keyword: :TransducerOrientationModifierSequence,
        name: "Transducer Orientation Modifier Sequence",
        vr: :SQ
      },
      0x2251 => %{
        keyword: :AnatomicStructureSpaceOrRegionCodeSequenceTrial,
        name: "Anatomic Structure Space Or Region Code Sequence (Trial)",
        vr: :SQ
      },
      0x2253 => %{
        keyword: :AnatomicPortalOfEntranceCodeSequenceTrial,
        name: "Anatomic Portal Of Entrance Code Sequence (Trial)",
        vr: :SQ
      },
      0x2255 => %{
        keyword: :AnatomicApproachDirectionCodeSequenceTrial,
        name: "Anatomic Approach Direction Code Sequence (Trial)",
        vr: :SQ
      },
      0x2256 => %{
        keyword: :AnatomicPerspectiveDescriptionTrial,
        name: "Anatomic Perspective Description (Trial)",
        vr: :ST
      },
      0x2257 => %{
        keyword: :AnatomicPerspectiveCodeSequenceTrial,
        name: "Anatomic Perspective Code Sequence (Trial)",
        vr: :SQ
      },
      0x2258 => %{
        keyword: :AnatomicLocationOfExaminingInstrumentDescriptionTrial,
        name: "Anatomic Location Of Examining Instrument Description (Trial)",
        vr: :ST
      },
      0x2259 => %{
        keyword: :AnatomicLocationOfExaminingInstrumentCodeSequenceTrial,
        name: "Anatomic Location Of Examining Instrument Code Sequence (Trial)",
        vr: :SQ
      },
      0x225A => %{
        keyword: :AnatomicStructureSpaceOrRegionModifierCodeSequenceTrial,
        name: "Anatomic Structure Space Or Region Modifier Code Sequence (Trial)",
        vr: :SQ
      },
      0x225C => %{
        keyword: :OnAxisBackgroundAnatomicStructureCodeSequenceTrial,
        name: "On Axis Background Anatomic Structure Code Sequence (Trial)",
        vr: :SQ
      },
      0x3001 => %{
        keyword: :AlternateRepresentationSequence,
        name: "Alternate Representation Sequence",
        vr: :SQ
      },
      0x3002 => %{
        keyword: :AvailableTransferSyntaxUID,
        name: "Available Transfer Syntax UID",
        vr: :UI
      },
      0x3010 => %{
        keyword: :IrradiationEventUID,
        name: "Irradiation Event UID",
        vr: :UI
      },
      0x3011 => %{
        keyword: :SourceIrradiationEventSequence,
        name: "Source Irradiation Event Sequence",
        vr: :SQ
      },
      0x3012 => %{
        keyword: :RadiopharmaceuticalAdministrationEventUID,
        name: "Radiopharmaceutical Administration Event UID",
        vr: :UI
      },
      0x4000 => %{
        keyword: :IdentifyingComments,
        name: "Identifying Comments",
        vr: :LT
      },
      0x9007 => %{
        keyword: :FrameType,
        name: "Frame Type",
        vr: :CS
      },
      0x9092 => %{
        keyword: :ReferencedImageEvidenceSequence,
        name: "Referenced Image Evidence Sequence",
        vr: :SQ
      },
      0x9121 => %{
        keyword: :ReferencedRawDataSequence,
        name: "Referenced Raw Data Sequence",
        vr: :SQ
      },
      0x9123 => %{
        keyword: :CreatorVersionUID,
        name: "Creator-Version UID",
        vr: :UI
      },
      0x9124 => %{
        keyword: :DerivationImageSequence,
        name: "Derivation Image Sequence",
        vr: :SQ
      },
      0x9154 => %{
        keyword: :SourceImageEvidenceSequence,
        name: "Source Image Evidence Sequence",
        vr: :SQ
      },
      0x9205 => %{
        keyword: :PixelPresentation,
        name: "Pixel Presentation",
        vr: :CS
      },
      0x9206 => %{
        keyword: :VolumetricProperties,
        name: "Volumetric Properties",
        vr: :CS
      },
      0x9207 => %{
        keyword: :VolumeBasedCalculationTechnique,
        name: "Volume Based Calculation Technique",
        vr: :CS
      },
      0x9208 => %{
        keyword: :ComplexImageComponent,
        name: "Complex Image Component",
        vr: :CS
      },
      0x9209 => %{
        keyword: :AcquisitionContrast,
        name: "Acquisition Contrast",
        vr: :CS
      },
      0x9215 => %{
        keyword: :DerivationCodeSequence,
        name: "Derivation Code Sequence",
        vr: :SQ
      },
      0x9237 => %{
        keyword: :ReferencedPresentationStateSequence,
        name: "Referenced Presentation State Sequence",
        vr: :SQ
      },
      0x9410 => %{
        keyword: :ReferencedOtherPlaneSequence,
        name: "Referenced Other Plane Sequence",
        vr: :SQ
      },
      0x9458 => %{
        keyword: :FrameDisplaySequence,
        name: "Frame Display Sequence",
        vr: :SQ
      },
      0x9459 => %{
        keyword: :RecommendedDisplayFrameRateInFloat,
        name: "Recommended Display Frame Rate in Float",
        vr: :FL
      },
      0x9460 => %{
        keyword: :SkipFrameRangeFlag,
        name: "Skip Frame Range Flag",
        vr: :CS
      }
    },
    0x0010 => %{
      0x0010 => %{
        keyword: :PatientName,
        name: "Patient's Name",
        vr: :PN
      },
      0x0020 => %{
        keyword: :PatientID,
        name: "Patient ID",
        vr: :LO
      },
      0x0021 => %{
        keyword: :IssuerOfPatientID,
        name: "Issuer of Patient ID",
        vr: :LO
      },
      0x0022 => %{
        keyword: :TypeOfPatientID,
        name: "Type of Patient ID",
        vr: :CS
      },
      0x0024 => %{
        keyword: :IssuerOfPatientIDQualifiersSequence,
        name: "Issuer of Patient ID Qualifiers Sequence",
        vr: :SQ
      },
      0x0026 => %{
        keyword: :SourcePatientGroupIdentificationSequence,
        name: "Source Patient Group Identification Sequence",
        vr: :SQ
      },
      0x0027 => %{
        keyword: :GroupOfPatientsIdentificationSequence,
        name: "Group of Patients Identification Sequence",
        vr: :SQ
      },
      0x0028 => %{
        keyword: :SubjectRelativePositionInImage,
        name: "Subject Relative Position in Image",
        vr: :US
      },
      0x0030 => %{
        keyword: :PatientBirthDate,
        name: "Patient's Birth Date",
        vr: :DA
      },
      0x0032 => %{
        keyword: :PatientBirthTime,
        name: "Patient's Birth Time",
        vr: :TM
      },
      0x0033 => %{
        keyword: :PatientBirthDateInAlternativeCalendar,
        name: "Patient's Birth Date in Alternative Calendar",
        vr: :LO
      },
      0x0034 => %{
        keyword: :PatientDeathDateInAlternativeCalendar,
        name: "Patient's Death Date in Alternative Calendar",
        vr: :LO
      },
      0x0035 => %{
        keyword: :PatientAlternativeCalendar,
        name: "Patient's Alternative Calendar",
        vr: :CS
      },
      0x0040 => %{
        keyword: :PatientSex,
        name: "Patient's Sex",
        vr: :CS
      },
      0x0050 => %{
        keyword: :PatientInsurancePlanCodeSequence,
        name: "Patient's Insurance Plan Code Sequence",
        vr: :SQ
      },
      0x0101 => %{
        keyword: :PatientPrimaryLanguageCodeSequence,
        name: "Patient's Primary Language Code Sequence",
        vr: :SQ
      },
      0x0102 => %{
        keyword: :PatientPrimaryLanguageModifierCodeSequence,
        name: "Patient's Primary Language Modifier Code Sequence",
        vr: :SQ
      },
      0x0200 => %{
        keyword: :QualityControlSubject,
        name: "Quality Control Subject",
        vr: :CS
      },
      0x0201 => %{
        keyword: :QualityControlSubjectTypeCodeSequence,
        name: "Quality Control Subject Type Code Sequence",
        vr: :SQ
      },
      0x0212 => %{
        keyword: :StrainDescription,
        name: "Strain Description",
        vr: :UC
      },
      0x0213 => %{
        keyword: :StrainNomenclature,
        name: "Strain Nomenclature",
        vr: :LO
      },
      0x0214 => %{
        keyword: :StrainStockNumber,
        name: "Strain Stock Number",
        vr: :LO
      },
      0x0215 => %{
        keyword: :StrainSourceRegistryCodeSequence,
        name: "Strain Source Registry Code Sequence",
        vr: :SQ
      },
      0x0216 => %{
        keyword: :StrainStockSequence,
        name: "Strain Stock Sequence",
        vr: :SQ
      },
      0x0217 => %{
        keyword: :StrainSource,
        name: "Strain Source",
        vr: :LO
      },
      0x0218 => %{
        keyword: :StrainAdditionalInformation,
        name: "Strain Additional Information",
        vr: :UT
      },
      0x0219 => %{
        keyword: :StrainCodeSequence,
        name: "Strain Code Sequence",
        vr: :SQ
      },
      0x0221 => %{
        keyword: :GeneticModificationsSequence,
        name: "Genetic Modifications Sequence",
        vr: :SQ
      },
      0x0222 => %{
        keyword: :GeneticModificationsDescription,
        name: "Genetic Modifications Description",
        vr: :UC
      },
      0x0223 => %{
        keyword: :GeneticModificationsNomenclature,
        name: "Genetic Modifications Nomenclature",
        vr: :LO
      },
      0x0229 => %{
        keyword: :GeneticModificationsCodeSequence,
        name: "Genetic Modifications Code Sequence",
        vr: :SQ
      },
      0x1000 => %{
        keyword: :OtherPatientIDs,
        name: "Other Patient IDs",
        vr: :LO
      },
      0x1001 => %{
        keyword: :OtherPatientNames,
        name: "Other Patient Names",
        vr: :PN
      },
      0x1002 => %{
        keyword: :OtherPatientIDsSequence,
        name: "Other Patient IDs Sequence",
        vr: :SQ
      },
      0x1005 => %{
        keyword: :PatientBirthName,
        name: "Patient's Birth Name",
        vr: :PN
      },
      0x1010 => %{
        keyword: :PatientAge,
        name: "Patient's Age",
        vr: :AS
      },
      0x1020 => %{
        keyword: :PatientSize,
        name: "Patient's Size",
        vr: :DS
      },
      0x1021 => %{
        keyword: :PatientSizeCodeSequence,
        name: "Patient's Size Code Sequence",
        vr: :SQ
      },
      0x1022 => %{
        keyword: :PatientBodyMassIndex,
        name: "Patient's Body Mass Index",
        vr: :DS
      },
      0x1023 => %{
        keyword: :MeasuredAPDimension,
        name: "Measured AP Dimension",
        vr: :DS
      },
      0x1024 => %{
        keyword: :MeasuredLateralDimension,
        name: "Measured Lateral Dimension",
        vr: :DS
      },
      0x1030 => %{
        keyword: :PatientWeight,
        name: "Patient's Weight",
        vr: :DS
      },
      0x1040 => %{
        keyword: :PatientAddress,
        name: "Patient's Address",
        vr: :LO
      },
      0x1050 => %{
        keyword: :InsurancePlanIdentification,
        name: "Insurance Plan Identification",
        vr: :LO
      },
      0x1060 => %{
        keyword: :PatientMotherBirthName,
        name: "Patient's Mother's Birth Name",
        vr: :PN
      },
      0x1080 => %{
        keyword: :MilitaryRank,
        name: "Military Rank",
        vr: :LO
      },
      0x1081 => %{
        keyword: :BranchOfService,
        name: "Branch of Service",
        vr: :LO
      },
      0x1090 => %{
        keyword: :MedicalRecordLocator,
        name: "Medical Record Locator",
        vr: :LO
      },
      0x1100 => %{
        keyword: :ReferencedPatientPhotoSequence,
        name: "Referenced Patient Photo Sequence",
        vr: :SQ
      },
      0x2000 => %{
        keyword: :MedicalAlerts,
        name: "Medical Alerts",
        vr: :LO
      },
      0x2110 => %{
        keyword: :Allergies,
        name: "Allergies",
        vr: :LO
      },
      0x2150 => %{
        keyword: :CountryOfResidence,
        name: "Country of Residence",
        vr: :LO
      },
      0x2152 => %{
        keyword: :RegionOfResidence,
        name: "Region of Residence",
        vr: :LO
      },
      0x2154 => %{
        keyword: :PatientTelephoneNumbers,
        name: "Patient's Telephone Numbers",
        vr: :SH
      },
      0x2155 => %{
        keyword: :PatientTelecomInformation,
        name: "Patient's Telecom Information",
        vr: :LT
      },
      0x2160 => %{
        keyword: :EthnicGroup,
        name: "Ethnic Group",
        vr: :SH
      },
      0x2161 => %{
        keyword: :EthnicGroupCodeSequence,
        name: "Ethnic Group Code Sequence",
        vr: :SQ
      },
      0x2180 => %{
        keyword: :Occupation,
        name: "Occupation",
        vr: :SH
      },
      0x21A0 => %{
        keyword: :SmokingStatus,
        name: "Smoking Status",
        vr: :CS
      },
      0x21B0 => %{
        keyword: :AdditionalPatientHistory,
        name: "Additional Patient History",
        vr: :LT
      },
      0x21C0 => %{
        keyword: :PregnancyStatus,
        name: "Pregnancy Status",
        vr: :US
      },
      0x21D0 => %{
        keyword: :LastMenstrualDate,
        name: "Last Menstrual Date",
        vr: :DA
      },
      0x21F0 => %{
        keyword: :PatientReligiousPreference,
        name: "Patient's Religious Preference",
        vr: :LO
      },
      0x2201 => %{
        keyword: :PatientSpeciesDescription,
        name: "Patient Species Description",
        vr: :LO
      },
      0x2202 => %{
        keyword: :PatientSpeciesCodeSequence,
        name: "Patient Species Code Sequence",
        vr: :SQ
      },
      0x2203 => %{
        keyword: :PatientSexNeutered,
        name: "Patient's Sex Neutered",
        vr: :CS
      },
      0x2210 => %{
        keyword: :AnatomicalOrientationType,
        name: "Anatomical Orientation Type",
        vr: :CS
      },
      0x2292 => %{
        keyword: :PatientBreedDescription,
        name: "Patient Breed Description",
        vr: :LO
      },
      0x2293 => %{
        keyword: :PatientBreedCodeSequence,
        name: "Patient Breed Code Sequence",
        vr: :SQ
      },
      0x2294 => %{
        keyword: :BreedRegistrationSequence,
        name: "Breed Registration Sequence",
        vr: :SQ
      },
      0x2295 => %{
        keyword: :BreedRegistrationNumber,
        name: "Breed Registration Number",
        vr: :LO
      },
      0x2296 => %{
        keyword: :BreedRegistryCodeSequence,
        name: "Breed Registry Code Sequence",
        vr: :SQ
      },
      0x2297 => %{
        keyword: :ResponsiblePerson,
        name: "Responsible Person",
        vr: :PN
      },
      0x2298 => %{
        keyword: :ResponsiblePersonRole,
        name: "Responsible Person Role",
        vr: :CS
      },
      0x2299 => %{
        keyword: :ResponsibleOrganization,
        name: "Responsible Organization",
        vr: :LO
      },
      0x4000 => %{
        keyword: :PatientComments,
        name: "Patient Comments",
        vr: :LT
      },
      0x9431 => %{
        keyword: :ExaminedBodyThickness,
        name: "Examined Body Thickness",
        vr: :FL
      }
    },
    0x0012 => %{
      0x0010 => %{
        keyword: :ClinicalTrialSponsorName,
        name: "Clinical Trial Sponsor Name",
        vr: :LO
      },
      0x0020 => %{
        keyword: :ClinicalTrialProtocolID,
        name: "Clinical Trial Protocol ID",
        vr: :LO
      },
      0x0021 => %{
        keyword: :ClinicalTrialProtocolName,
        name: "Clinical Trial Protocol Name",
        vr: :LO
      },
      0x0022 => %{
        keyword: :IssuerOfClinicalTrialProtocolID,
        name: "Issuer of Clinical Trial Protocol ID",
        vr: :LO
      },
      0x0023 => %{
        keyword: :OtherClinicalTrialProtocolIDsSequence,
        name: "Other Clinical Trial Protocol IDs Sequence",
        vr: :SQ
      },
      0x0030 => %{
        keyword: :ClinicalTrialSiteID,
        name: "Clinical Trial Site ID",
        vr: :LO
      },
      0x0031 => %{
        keyword: :ClinicalTrialSiteName,
        name: "Clinical Trial Site Name",
        vr: :LO
      },
      0x0032 => %{
        keyword: :IssuerOfClinicalTrialSiteID,
        name: "Issuer of Clinical Trial Site ID",
        vr: :LO
      },
      0x0040 => %{
        keyword: :ClinicalTrialSubjectID,
        name: "Clinical Trial Subject ID",
        vr: :LO
      },
      0x0041 => %{
        keyword: :IssuerOfClinicalTrialSubjectID,
        name: "Issuer of Clinical Trial Subject ID",
        vr: :LO
      },
      0x0042 => %{
        keyword: :ClinicalTrialSubjectReadingID,
        name: "Clinical Trial Subject Reading ID",
        vr: :LO
      },
      0x0043 => %{
        keyword: :IssuerOfClinicalTrialSubjectReadingID,
        name: "Issuer of Clinical Trial Subject Reading ID",
        vr: :LO
      },
      0x0050 => %{
        keyword: :ClinicalTrialTimePointID,
        name: "Clinical Trial Time Point ID",
        vr: :LO
      },
      0x0051 => %{
        keyword: :ClinicalTrialTimePointDescription,
        name: "Clinical Trial Time Point Description",
        vr: :ST
      },
      0x0052 => %{
        keyword: :LongitudinalTemporalOffsetFromEvent,
        name: "Longitudinal Temporal Offset from Event",
        vr: :FD
      },
      0x0053 => %{
        keyword: :LongitudinalTemporalEventType,
        name: "Longitudinal Temporal Event Type",
        vr: :CS
      },
      0x0054 => %{
        keyword: :ClinicalTrialTimePointTypeCodeSequence,
        name: "Clinical Trial Time Point Type Code Sequence",
        vr: :SQ
      },
      0x0055 => %{
        keyword: :IssuerOfClinicalTrialTimePointID,
        name: "Issuer of Clinical Trial Time Point ID",
        vr: :LO
      },
      0x0060 => %{
        keyword: :ClinicalTrialCoordinatingCenterName,
        name: "Clinical Trial Coordinating Center Name",
        vr: :LO
      },
      0x0062 => %{
        keyword: :PatientIdentityRemoved,
        name: "Patient Identity Removed",
        vr: :CS
      },
      0x0063 => %{
        keyword: :DeidentificationMethod,
        name: "De-identification Method",
        vr: :LO
      },
      0x0064 => %{
        keyword: :DeidentificationMethodCodeSequence,
        name: "De-identification Method Code Sequence",
        vr: :SQ
      },
      0x0071 => %{
        keyword: :ClinicalTrialSeriesID,
        name: "Clinical Trial Series ID",
        vr: :LO
      },
      0x0072 => %{
        keyword: :ClinicalTrialSeriesDescription,
        name: "Clinical Trial Series Description",
        vr: :LO
      },
      0x0073 => %{
        keyword: :IssuerOfClinicalTrialSeriesID,
        name: "Issuer of Clinical Trial Series ID",
        vr: :LO
      },
      0x0081 => %{
        keyword: :ClinicalTrialProtocolEthicsCommitteeName,
        name: "Clinical Trial Protocol Ethics Committee Name",
        vr: :LO
      },
      0x0082 => %{
        keyword: :ClinicalTrialProtocolEthicsCommitteeApprovalNumber,
        name: "Clinical Trial Protocol Ethics Committee Approval Number",
        vr: :LO
      },
      0x0083 => %{
        keyword: :ConsentForClinicalTrialUseSequence,
        name: "Consent for Clinical Trial Use Sequence",
        vr: :SQ
      },
      0x0084 => %{
        keyword: :DistributionType,
        name: "Distribution Type",
        vr: :CS
      },
      0x0085 => %{
        keyword: :ConsentForDistributionFlag,
        name: "Consent for Distribution Flag",
        vr: :CS
      },
      0x0086 => %{
        keyword: :EthicsCommitteeApprovalEffectivenessStartDate,
        name: "Ethics Committee Approval Effectiveness Start Date",
        vr: :DA
      },
      0x0087 => %{
        keyword: :EthicsCommitteeApprovalEffectivenessEndDate,
        name: "Ethics Committee Approval Effectiveness End Date",
        vr: :DA
      }
    },
    0x0014 => %{
      0x0023 => %{
        keyword: :CADFileFormat,
        name: "CAD File Format",
        vr: :ST
      },
      0x0024 => %{
        keyword: :ComponentReferenceSystem,
        name: "Component Reference System",
        vr: :ST
      },
      0x0025 => %{
        keyword: :ComponentManufacturingProcedure,
        name: "Component Manufacturing Procedure",
        vr: :ST
      },
      0x0028 => %{
        keyword: :ComponentManufacturer,
        name: "Component Manufacturer",
        vr: :ST
      },
      0x0030 => %{
        keyword: :MaterialThickness,
        name: "Material Thickness",
        vr: :DS
      },
      0x0032 => %{
        keyword: :MaterialPipeDiameter,
        name: "Material Pipe Diameter",
        vr: :DS
      },
      0x0034 => %{
        keyword: :MaterialIsolationDiameter,
        name: "Material Isolation Diameter",
        vr: :DS
      },
      0x0042 => %{
        keyword: :MaterialGrade,
        name: "Material Grade",
        vr: :ST
      },
      0x0044 => %{
        keyword: :MaterialPropertiesDescription,
        name: "Material Properties Description",
        vr: :ST
      },
      0x0045 => %{
        keyword: :MaterialPropertiesFileFormatRetired,
        name: "Material Properties File Format (Retired)",
        vr: :ST
      },
      0x0046 => %{
        keyword: :MaterialNotes,
        name: "Material Notes",
        vr: :LT
      },
      0x0050 => %{
        keyword: :ComponentShape,
        name: "Component Shape",
        vr: :CS
      },
      0x0052 => %{
        keyword: :CurvatureType,
        name: "Curvature Type",
        vr: :CS
      },
      0x0054 => %{
        keyword: :OuterDiameter,
        name: "Outer Diameter",
        vr: :DS
      },
      0x0056 => %{
        keyword: :InnerDiameter,
        name: "Inner Diameter",
        vr: :DS
      },
      0x0100 => %{
        keyword: :ComponentWelderIDs,
        name: "Component Welder IDs",
        vr: :LO
      },
      0x0101 => %{
        keyword: :SecondaryApprovalStatus,
        name: "Secondary Approval Status",
        vr: :CS
      },
      0x0102 => %{
        keyword: :SecondaryReviewDate,
        name: "Secondary Review Date",
        vr: :DA
      },
      0x0103 => %{
        keyword: :SecondaryReviewTime,
        name: "Secondary Review Time",
        vr: :TM
      },
      0x0104 => %{
        keyword: :SecondaryReviewerName,
        name: "Secondary Reviewer Name",
        vr: :PN
      },
      0x0105 => %{
        keyword: :RepairID,
        name: "Repair ID",
        vr: :ST
      },
      0x0106 => %{
        keyword: :MultipleComponentApprovalSequence,
        name: "Multiple Component Approval Sequence",
        vr: :SQ
      },
      0x0107 => %{
        keyword: :OtherApprovalStatus,
        name: "Other Approval Status",
        vr: :CS
      },
      0x0108 => %{
        keyword: :OtherSecondaryApprovalStatus,
        name: "Other Secondary Approval Status",
        vr: :CS
      },
      0x0200 => %{
        keyword: :DataElementLabelSequence,
        name: "Data Element Label Sequence",
        vr: :SQ
      },
      0x0201 => %{
        keyword: :DataElementLabelItemSequence,
        name: "Data Element Label Item Sequence",
        vr: :SQ
      },
      0x0202 => %{
        keyword: :DataElement,
        name: "Data Element",
        vr: :AT
      },
      0x0203 => %{
        keyword: :DataElementName,
        name: "Data Element Name",
        vr: :LO
      },
      0x0204 => %{
        keyword: :DataElementDescription,
        name: "Data Element Description",
        vr: :LO
      },
      0x0205 => %{
        keyword: :DataElementConditionality,
        name: "Data Element Conditionality",
        vr: :CS
      },
      0x0206 => %{
        keyword: :DataElementMinimumCharacters,
        name: "Data Element Minimum Characters",
        vr: :IS
      },
      0x0207 => %{
        keyword: :DataElementMaximumCharacters,
        name: "Data Element Maximum Characters",
        vr: :IS
      },
      0x1010 => %{
        keyword: :ActualEnvironmentalConditions,
        name: "Actual Environmental Conditions",
        vr: :ST
      },
      0x1020 => %{
        keyword: :ExpiryDate,
        name: "Expiry Date",
        vr: :DA
      },
      0x1040 => %{
        keyword: :EnvironmentalConditions,
        name: "Environmental Conditions",
        vr: :ST
      },
      0x2002 => %{
        keyword: :EvaluatorSequence,
        name: "Evaluator Sequence",
        vr: :SQ
      },
      0x2004 => %{
        keyword: :EvaluatorNumber,
        name: "Evaluator Number",
        vr: :IS
      },
      0x2006 => %{
        keyword: :EvaluatorName,
        name: "Evaluator Name",
        vr: :PN
      },
      0x2008 => %{
        keyword: :EvaluationAttempt,
        name: "Evaluation Attempt",
        vr: :IS
      },
      0x2012 => %{
        keyword: :IndicationSequence,
        name: "Indication Sequence",
        vr: :SQ
      },
      0x2014 => %{
        keyword: :IndicationNumber,
        name: "Indication Number",
        vr: :IS
      },
      0x2016 => %{
        keyword: :IndicationLabel,
        name: "Indication Label",
        vr: :SH
      },
      0x2018 => %{
        keyword: :IndicationDescription,
        name: "Indication Description",
        vr: :ST
      },
      0x201A => %{
        keyword: :IndicationType,
        name: "Indication Type",
        vr: :CS
      },
      0x201C => %{
        keyword: :IndicationDisposition,
        name: "Indication Disposition",
        vr: :CS
      },
      0x201E => %{
        keyword: :IndicationROISequence,
        name: "Indication ROI Sequence",
        vr: :SQ
      },
      0x2030 => %{
        keyword: :IndicationPhysicalPropertySequence,
        name: "Indication Physical Property Sequence",
        vr: :SQ
      },
      0x2032 => %{
        keyword: :PropertyLabel,
        name: "Property Label",
        vr: :SH
      },
      0x2202 => %{
        keyword: :CoordinateSystemNumberOfAxes,
        name: "Coordinate System Number of Axes",
        vr: :IS
      },
      0x2204 => %{
        keyword: :CoordinateSystemAxesSequence,
        name: "Coordinate System Axes Sequence",
        vr: :SQ
      },
      0x2206 => %{
        keyword: :CoordinateSystemAxisDescription,
        name: "Coordinate System Axis Description",
        vr: :ST
      },
      0x2208 => %{
        keyword: :CoordinateSystemDataSetMapping,
        name: "Coordinate System Data Set Mapping",
        vr: :CS
      },
      0x220A => %{
        keyword: :CoordinateSystemAxisNumber,
        name: "Coordinate System Axis Number",
        vr: :IS
      },
      0x220C => %{
        keyword: :CoordinateSystemAxisType,
        name: "Coordinate System Axis Type",
        vr: :CS
      },
      0x220E => %{
        keyword: :CoordinateSystemAxisUnits,
        name: "Coordinate System Axis Units",
        vr: :CS
      },
      0x2210 => %{
        keyword: :CoordinateSystemAxisValues,
        name: "Coordinate System Axis Values",
        vr: :OB
      },
      0x2220 => %{
        keyword: :CoordinateSystemTransformSequence,
        name: "Coordinate System Transform Sequence",
        vr: :SQ
      },
      0x2222 => %{
        keyword: :TransformDescription,
        name: "Transform Description",
        vr: :ST
      },
      0x2224 => %{
        keyword: :TransformNumberOfAxes,
        name: "Transform Number of Axes",
        vr: :IS
      },
      0x2226 => %{
        keyword: :TransformOrderOfAxes,
        name: "Transform Order of Axes",
        vr: :IS
      },
      0x2228 => %{
        keyword: :TransformedAxisUnits,
        name: "Transformed Axis Units",
        vr: :CS
      },
      0x222A => %{
        keyword: :CoordinateSystemTransformRotationAndScaleMatrix,
        name: "Coordinate System Transform Rotation and Scale Matrix",
        vr: :DS
      },
      0x222C => %{
        keyword: :CoordinateSystemTransformTranslationMatrix,
        name: "Coordinate System Transform Translation Matrix",
        vr: :DS
      },
      0x3011 => %{
        keyword: :InternalDetectorFrameTime,
        name: "Internal Detector Frame Time",
        vr: :DS
      },
      0x3012 => %{
        keyword: :NumberOfFramesIntegrated,
        name: "Number of Frames Integrated",
        vr: :DS
      },
      0x3020 => %{
        keyword: :DetectorTemperatureSequence,
        name: "Detector Temperature Sequence",
        vr: :SQ
      },
      0x3022 => %{
        keyword: :SensorName,
        name: "Sensor Name",
        vr: :ST
      },
      0x3024 => %{
        keyword: :HorizontalOffsetOfSensor,
        name: "Horizontal Offset of Sensor",
        vr: :DS
      },
      0x3026 => %{
        keyword: :VerticalOffsetOfSensor,
        name: "Vertical Offset of Sensor",
        vr: :DS
      },
      0x3028 => %{
        keyword: :SensorTemperature,
        name: "Sensor Temperature",
        vr: :DS
      },
      0x3040 => %{
        keyword: :DarkCurrentSequence,
        name: "Dark Current Sequence",
        vr: :SQ
      },
      0x3050 => %{
        keyword: :DarkCurrentCounts,
        name: "Dark Current Counts",
        vr: :OB
      },
      0x3060 => %{
        keyword: :GainCorrectionReferenceSequence,
        name: "Gain Correction Reference Sequence",
        vr: :SQ
      },
      0x3070 => %{
        keyword: :AirCounts,
        name: "Air Counts",
        vr: :OB
      },
      0x3071 => %{
        keyword: :KVUsedInGainCalibration,
        name: "KV Used in Gain Calibration",
        vr: :DS
      },
      0x3072 => %{
        keyword: :MAUsedInGainCalibration,
        name: "MA Used in Gain Calibration",
        vr: :DS
      },
      0x3073 => %{
        keyword: :NumberOfFramesUsedForIntegration,
        name: "Number of Frames Used for Integration",
        vr: :DS
      },
      0x3074 => %{
        keyword: :FilterMaterialUsedInGainCalibration,
        name: "Filter Material Used in Gain Calibration",
        vr: :LO
      },
      0x3075 => %{
        keyword: :FilterThicknessUsedInGainCalibration,
        name: "Filter Thickness Used in Gain Calibration",
        vr: :DS
      },
      0x3076 => %{
        keyword: :DateOfGainCalibration,
        name: "Date of Gain Calibration",
        vr: :DA
      },
      0x3077 => %{
        keyword: :TimeOfGainCalibration,
        name: "Time of Gain Calibration",
        vr: :TM
      },
      0x3080 => %{
        keyword: :BadPixelImage,
        name: "Bad Pixel Image",
        vr: :OB
      },
      0x3099 => %{
        keyword: :CalibrationNotes,
        name: "Calibration Notes",
        vr: :LT
      },
      0x3100 => %{
        keyword: :LinearityCorrectionTechnique,
        name: "Linearity Correction Technique",
        vr: :LT
      },
      0x3101 => %{
        keyword: :BeamHardeningCorrectionTechnique,
        name: "Beam Hardening Correction Technique",
        vr: :LT
      },
      0x4002 => %{
        keyword: :PulserEquipmentSequence,
        name: "Pulser Equipment Sequence",
        vr: :SQ
      },
      0x4004 => %{
        keyword: :PulserType,
        name: "Pulser Type",
        vr: :CS
      },
      0x4006 => %{
        keyword: :PulserNotes,
        name: "Pulser Notes",
        vr: :LT
      },
      0x4008 => %{
        keyword: :ReceiverEquipmentSequence,
        name: "Receiver Equipment Sequence",
        vr: :SQ
      },
      0x400A => %{
        keyword: :AmplifierType,
        name: "Amplifier Type",
        vr: :CS
      },
      0x400C => %{
        keyword: :ReceiverNotes,
        name: "Receiver Notes",
        vr: :LT
      },
      0x400E => %{
        keyword: :PreAmplifierEquipmentSequence,
        name: "Pre-Amplifier Equipment Sequence",
        vr: :SQ
      },
      0x400F => %{
        keyword: :PreAmplifierNotes,
        name: "Pre-Amplifier Notes",
        vr: :LT
      },
      0x4010 => %{
        keyword: :TransmitTransducerSequence,
        name: "Transmit Transducer Sequence",
        vr: :SQ
      },
      0x4011 => %{
        keyword: :ReceiveTransducerSequence,
        name: "Receive Transducer Sequence",
        vr: :SQ
      },
      0x4012 => %{
        keyword: :NumberOfElements,
        name: "Number of Elements",
        vr: :US
      },
      0x4013 => %{
        keyword: :ElementShape,
        name: "Element Shape",
        vr: :CS
      },
      0x4014 => %{
        keyword: :ElementDimensionA,
        name: "Element Dimension A",
        vr: :DS
      },
      0x4015 => %{
        keyword: :ElementDimensionB,
        name: "Element Dimension B",
        vr: :DS
      },
      0x4016 => %{
        keyword: :ElementPitchA,
        name: "Element Pitch A",
        vr: :DS
      },
      0x4017 => %{
        keyword: :MeasuredBeamDimensionA,
        name: "Measured Beam Dimension A",
        vr: :DS
      },
      0x4018 => %{
        keyword: :MeasuredBeamDimensionB,
        name: "Measured Beam Dimension B",
        vr: :DS
      },
      0x4019 => %{
        keyword: :LocationOfMeasuredBeamDiameter,
        name: "Location of Measured Beam Diameter",
        vr: :DS
      },
      0x401A => %{
        keyword: :NominalFrequency,
        name: "Nominal Frequency",
        vr: :DS
      },
      0x401B => %{
        keyword: :MeasuredCenterFrequency,
        name: "Measured Center Frequency",
        vr: :DS
      },
      0x401C => %{
        keyword: :MeasuredBandwidth,
        name: "Measured Bandwidth",
        vr: :DS
      },
      0x401D => %{
        keyword: :ElementPitchB,
        name: "Element Pitch B",
        vr: :DS
      },
      0x4020 => %{
        keyword: :PulserSettingsSequence,
        name: "Pulser Settings Sequence",
        vr: :SQ
      },
      0x4022 => %{
        keyword: :PulseWidth,
        name: "Pulse Width",
        vr: :DS
      },
      0x4024 => %{
        keyword: :ExcitationFrequency,
        name: "Excitation Frequency",
        vr: :DS
      },
      0x4026 => %{
        keyword: :ModulationType,
        name: "Modulation Type",
        vr: :CS
      },
      0x4028 => %{
        keyword: :Damping,
        name: "Damping",
        vr: :DS
      },
      0x4030 => %{
        keyword: :ReceiverSettingsSequence,
        name: "Receiver Settings Sequence",
        vr: :SQ
      },
      0x4031 => %{
        keyword: :AcquiredSoundpathLength,
        name: "Acquired Soundpath Length",
        vr: :DS
      },
      0x4032 => %{
        keyword: :AcquisitionCompressionType,
        name: "Acquisition Compression Type",
        vr: :CS
      },
      0x4033 => %{
        keyword: :AcquisitionSampleSize,
        name: "Acquisition Sample Size",
        vr: :IS
      },
      0x4034 => %{
        keyword: :RectifierSmoothing,
        name: "Rectifier Smoothing",
        vr: :DS
      },
      0x4035 => %{
        keyword: :DACSequence,
        name: "DAC Sequence",
        vr: :SQ
      },
      0x4036 => %{
        keyword: :DACType,
        name: "DAC Type",
        vr: :CS
      },
      0x4038 => %{
        keyword: :DACGainPoints,
        name: "DAC Gain Points",
        vr: :DS
      },
      0x403A => %{
        keyword: :DACTimePoints,
        name: "DAC Time Points",
        vr: :DS
      },
      0x403C => %{
        keyword: :DACAmplitude,
        name: "DAC Amplitude",
        vr: :DS
      },
      0x4040 => %{
        keyword: :PreAmplifierSettingsSequence,
        name: "Pre-Amplifier Settings Sequence",
        vr: :SQ
      },
      0x4050 => %{
        keyword: :TransmitTransducerSettingsSequence,
        name: "Transmit Transducer Settings Sequence",
        vr: :SQ
      },
      0x4051 => %{
        keyword: :ReceiveTransducerSettingsSequence,
        name: "Receive Transducer Settings Sequence",
        vr: :SQ
      },
      0x4052 => %{
        keyword: :IncidentAngle,
        name: "Incident Angle",
        vr: :DS
      },
      0x4054 => %{
        keyword: :CouplingTechnique,
        name: "Coupling Technique",
        vr: :ST
      },
      0x4056 => %{
        keyword: :CouplingMedium,
        name: "Coupling Medium",
        vr: :ST
      },
      0x4057 => %{
        keyword: :CouplingVelocity,
        name: "Coupling Velocity",
        vr: :DS
      },
      0x4058 => %{
        keyword: :ProbeCenterLocationX,
        name: "Probe Center Location X",
        vr: :DS
      },
      0x4059 => %{
        keyword: :ProbeCenterLocationZ,
        name: "Probe Center Location Z",
        vr: :DS
      },
      0x405A => %{
        keyword: :SoundPathLength,
        name: "Sound Path Length",
        vr: :DS
      },
      0x405C => %{
        keyword: :DelayLawIdentifier,
        name: "Delay Law Identifier",
        vr: :ST
      },
      0x4060 => %{
        keyword: :GateSettingsSequence,
        name: "Gate Settings Sequence",
        vr: :SQ
      },
      0x4062 => %{
        keyword: :GateThreshold,
        name: "Gate Threshold",
        vr: :DS
      },
      0x4064 => %{
        keyword: :VelocityOfSound,
        name: "Velocity of Sound",
        vr: :DS
      },
      0x4070 => %{
        keyword: :CalibrationSettingsSequence,
        name: "Calibration Settings Sequence",
        vr: :SQ
      },
      0x4072 => %{
        keyword: :CalibrationProcedure,
        name: "Calibration Procedure",
        vr: :ST
      },
      0x4074 => %{
        keyword: :ProcedureVersion,
        name: "Procedure Version",
        vr: :SH
      },
      0x4076 => %{
        keyword: :ProcedureCreationDate,
        name: "Procedure Creation Date",
        vr: :DA
      },
      0x4078 => %{
        keyword: :ProcedureExpirationDate,
        name: "Procedure Expiration Date",
        vr: :DA
      },
      0x407A => %{
        keyword: :ProcedureLastModifiedDate,
        name: "Procedure Last Modified Date",
        vr: :DA
      },
      0x407C => %{
        keyword: :CalibrationTime,
        name: "Calibration Time",
        vr: :TM
      },
      0x407E => %{
        keyword: :CalibrationDate,
        name: "Calibration Date",
        vr: :DA
      },
      0x4080 => %{
        keyword: :ProbeDriveEquipmentSequence,
        name: "Probe Drive Equipment Sequence",
        vr: :SQ
      },
      0x4081 => %{
        keyword: :DriveType,
        name: "Drive Type",
        vr: :CS
      },
      0x4082 => %{
        keyword: :ProbeDriveNotes,
        name: "Probe Drive Notes",
        vr: :LT
      },
      0x4083 => %{
        keyword: :DriveProbeSequence,
        name: "Drive Probe Sequence",
        vr: :SQ
      },
      0x4084 => %{
        keyword: :ProbeInductance,
        name: "Probe Inductance",
        vr: :DS
      },
      0x4085 => %{
        keyword: :ProbeResistance,
        name: "Probe Resistance",
        vr: :DS
      },
      0x4086 => %{
        keyword: :ReceiveProbeSequence,
        name: "Receive Probe Sequence",
        vr: :SQ
      },
      0x4087 => %{
        keyword: :ProbeDriveSettingsSequence,
        name: "Probe Drive Settings Sequence",
        vr: :SQ
      },
      0x4088 => %{
        keyword: :BridgeResistors,
        name: "Bridge Resistors",
        vr: :DS
      },
      0x4089 => %{
        keyword: :ProbeOrientationAngle,
        name: "Probe Orientation Angle",
        vr: :DS
      },
      0x408B => %{
        keyword: :UserSelectedGainY,
        name: "User Selected Gain Y",
        vr: :DS
      },
      0x408C => %{
        keyword: :UserSelectedPhase,
        name: "User Selected Phase",
        vr: :DS
      },
      0x408D => %{
        keyword: :UserSelectedOffsetX,
        name: "User Selected Offset X",
        vr: :DS
      },
      0x408E => %{
        keyword: :UserSelectedOffsetY,
        name: "User Selected Offset Y",
        vr: :DS
      },
      0x4091 => %{
        keyword: :ChannelSettingsSequence,
        name: "Channel Settings Sequence",
        vr: :SQ
      },
      0x4092 => %{
        keyword: :ChannelThreshold,
        name: "Channel Threshold",
        vr: :DS
      },
      0x409A => %{
        keyword: :ScannerSettingsSequence,
        name: "Scanner Settings Sequence",
        vr: :SQ
      },
      0x409B => %{
        keyword: :ScanProcedure,
        name: "Scan Procedure",
        vr: :ST
      },
      0x409C => %{
        keyword: :TranslationRateX,
        name: "Translation Rate X",
        vr: :DS
      },
      0x409D => %{
        keyword: :TranslationRateY,
        name: "Translation Rate Y",
        vr: :DS
      },
      0x409F => %{
        keyword: :ChannelOverlap,
        name: "Channel Overlap",
        vr: :DS
      },
      0x40A0 => %{
        keyword: :ImageQualityIndicatorType,
        name: "Image Quality Indicator Type",
        vr: :LO
      },
      0x40A1 => %{
        keyword: :ImageQualityIndicatorMaterial,
        name: "Image Quality Indicator Material",
        vr: :LO
      },
      0x40A2 => %{
        keyword: :ImageQualityIndicatorSize,
        name: "Image Quality Indicator Size",
        vr: :LO
      },
      0x5002 => %{
        keyword: :LINACEnergy,
        name: "LINAC Energy",
        vr: :IS
      },
      0x5004 => %{
        keyword: :LINACOutput,
        name: "LINAC Output",
        vr: :IS
      },
      0x5100 => %{
        keyword: :ActiveAperture,
        name: "Active Aperture",
        vr: :US
      },
      0x5101 => %{
        keyword: :TotalAperture,
        name: "Total Aperture",
        vr: :DS
      },
      0x5102 => %{
        keyword: :ApertureElevation,
        name: "Aperture Elevation",
        vr: :DS
      },
      0x5103 => %{
        keyword: :MainLobeAngle,
        name: "Main Lobe Angle",
        vr: :DS
      },
      0x5104 => %{
        keyword: :MainRoofAngle,
        name: "Main Roof Angle",
        vr: :DS
      },
      0x5105 => %{
        keyword: :ConnectorType,
        name: "Connector Type",
        vr: :CS
      },
      0x5106 => %{
        keyword: :WedgeModelNumber,
        name: "Wedge Model Number",
        vr: :SH
      },
      0x5107 => %{
        keyword: :WedgeAngleFloat,
        name: "Wedge Angle Float",
        vr: :DS
      },
      0x5108 => %{
        keyword: :WedgeRoofAngle,
        name: "Wedge Roof Angle",
        vr: :DS
      },
      0x5109 => %{
        keyword: :WedgeElement1Position,
        name: "Wedge Element 1 Position",
        vr: :CS
      },
      0x510A => %{
        keyword: :WedgeMaterialVelocity,
        name: "Wedge Material Velocity",
        vr: :DS
      },
      0x510B => %{
        keyword: :WedgeMaterial,
        name: "Wedge Material",
        vr: :SH
      },
      0x510C => %{
        keyword: :WedgeOffsetZ,
        name: "Wedge Offset Z",
        vr: :DS
      },
      0x510D => %{
        keyword: :WedgeOriginOffsetX,
        name: "Wedge Origin Offset X",
        vr: :DS
      },
      0x510E => %{
        keyword: :WedgeTimeDelay,
        name: "Wedge Time Delay",
        vr: :DS
      },
      0x510F => %{
        keyword: :WedgeName,
        name: "Wedge Name",
        vr: :SH
      },
      0x5110 => %{
        keyword: :WedgeManufacturerName,
        name: "Wedge Manufacturer Name",
        vr: :SH
      },
      0x5111 => %{
        keyword: :WedgeDescription,
        name: "Wedge Description",
        vr: :LO
      },
      0x5112 => %{
        keyword: :NominalBeamAngle,
        name: "Nominal Beam Angle",
        vr: :DS
      },
      0x5113 => %{
        keyword: :WedgeOffsetX,
        name: "Wedge Offset X",
        vr: :DS
      },
      0x5114 => %{
        keyword: :WedgeOffsetY,
        name: "Wedge Offset Y",
        vr: :DS
      },
      0x5115 => %{
        keyword: :WedgeTotalLength,
        name: "Wedge Total Length",
        vr: :DS
      },
      0x5116 => %{
        keyword: :WedgeInContactLength,
        name: "Wedge In Contact Length",
        vr: :DS
      },
      0x5117 => %{
        keyword: :WedgeFrontGap,
        name: "Wedge Front Gap",
        vr: :DS
      },
      0x5118 => %{
        keyword: :WedgeTotalHeight,
        name: "Wedge Total Height",
        vr: :DS
      },
      0x5119 => %{
        keyword: :WedgeFrontHeight,
        name: "Wedge Front Height",
        vr: :DS
      },
      0x511A => %{
        keyword: :WedgeRearHeight,
        name: "Wedge Rear Height",
        vr: :DS
      },
      0x511B => %{
        keyword: :WedgeTotalWidth,
        name: "Wedge Total Width",
        vr: :DS
      },
      0x511C => %{
        keyword: :WedgeInContactWidth,
        name: "Wedge In Contact Width",
        vr: :DS
      },
      0x511D => %{
        keyword: :WedgeChamferHeight,
        name: "Wedge Chamfer Height",
        vr: :DS
      },
      0x511E => %{
        keyword: :WedgeCurve,
        name: "Wedge Curve",
        vr: :CS
      },
      0x511F => %{
        keyword: :RadiusAlongWedge,
        name: "Radius Along the Wedge",
        vr: :DS
      },
      0x6001 => %{
        keyword: :ThermalCameraSettingsSequence,
        name: "Thermal Camera Settings Sequence",
        vr: :SQ
      },
      0x6002 => %{
        keyword: :AcquisitionFrameRate,
        name: "Acquisition Frame Rate",
        vr: :DS
      },
      0x6003 => %{
        keyword: :IntegrationTime,
        name: "Integration Time",
        vr: :DS
      },
      0x6004 => %{
        keyword: :NumberOfCalibrationFrames,
        name: "Number of Calibration Frames",
        vr: :DS
      },
      0x6005 => %{
        keyword: :NumberOfRowsInFullAcquisitionImage,
        name: "Number of Rows in Full Acquisition Image",
        vr: :DS
      },
      0x6006 => %{
        keyword: :NumberOfColumnsInFullAcquisitionImage,
        name: "Number Of Columns in Full Acquisition Image",
        vr: :DS
      },
      0x6007 => %{
        keyword: :ThermalSourceSettingsSequence,
        name: "Thermal Source Settings Sequence",
        vr: :SQ
      },
      0x6008 => %{
        keyword: :SourceHorizontalPitch,
        name: "Source Horizontal Pitch",
        vr: :DS
      },
      0x6009 => %{
        keyword: :SourceVerticalPitch,
        name: "Source Vertical Pitch",
        vr: :DS
      },
      0x600A => %{
        keyword: :SourceHorizontalScanSpeed,
        name: "Source Horizontal Scan Speed",
        vr: :DS
      },
      0x600B => %{
        keyword: :ThermalSourceModulationFrequency,
        name: "Thermal Source Modulation Frequency",
        vr: :DS
      },
      0x600C => %{
        keyword: :InductionSourceSettingSequence,
        name: "Induction Source Setting Sequence",
        vr: :SQ
      },
      0x600D => %{
        keyword: :CoilFrequency,
        name: "Coil Frequency",
        vr: :DS
      },
      0x600E => %{
        keyword: :CurrentAmplitudeAcrossCoil,
        name: "Current Amplitude Across Coil",
        vr: :DS
      },
      0x600F => %{
        keyword: :FlashSourceSettingSequence,
        name: "Flash Source Setting Sequence",
        vr: :SQ
      },
      0x6010 => %{
        keyword: :FlashDuration,
        name: "Flash Duration",
        vr: :DS
      },
      0x6011 => %{
        keyword: :FlashFrameNumber,
        name: "Flash Frame Number",
        vr: :DS
      },
      0x6012 => %{
        keyword: :LaserSourceSettingSequence,
        name: "Laser Source Setting Sequence",
        vr: :SQ
      },
      0x6013 => %{
        keyword: :HorizontalLaserSpotDimension,
        name: "Horizontal Laser Spot Dimension",
        vr: :DS
      },
      0x6014 => %{
        keyword: :VerticalLaserSpotDimension,
        name: "Vertical Laser Spot Dimension",
        vr: :DS
      },
      0x6015 => %{
        keyword: :LaserWavelength,
        name: "Laser Wavelength",
        vr: :DS
      },
      0x6016 => %{
        keyword: :LaserPower,
        name: "Laser Power",
        vr: :DS
      },
      0x6017 => %{
        keyword: :ForcedGasSettingSequence,
        name: "Forced Gas Setting Sequence",
        vr: :SQ
      },
      0x6018 => %{
        keyword: :VibrationSourceSettingSequence,
        name: "Vibration Source Setting Sequence",
        vr: :SQ
      },
      0x6019 => %{
        keyword: :VibrationExcitationFrequency,
        name: "Vibration Excitation Frequency",
        vr: :DS
      },
      0x601A => %{
        keyword: :VibrationExcitationVoltage,
        name: "Vibration Excitation Voltage",
        vr: :DS
      },
      0x601B => %{
        keyword: :ThermographyDataCaptureMethod,
        name: "Thermography Data Capture Method",
        vr: :CS
      },
      0x601C => %{
        keyword: :ThermalTechnique,
        name: "Thermal Technique",
        vr: :CS
      },
      0x601D => %{
        keyword: :ThermalCameraCoreSequence,
        name: "Thermal Camera Core Sequence",
        vr: :SQ
      },
      0x601E => %{
        keyword: :DetectorWavelengthRange,
        name: "Detector Wavelength Range",
        vr: :CS
      },
      0x601F => %{
        keyword: :ThermalCameraCalibrationType,
        name: "Thermal Camera Calibration Type",
        vr: :CS
      },
      0x6020 => %{
        keyword: :AcquisitionImageCounter,
        name: "Acquisition Image Counter",
        vr: :UV
      },
      0x6021 => %{
        keyword: :FrontPanelTemperature,
        name: "Front Panel Temperature",
        vr: :DS
      },
      0x6022 => %{
        keyword: :AirGapTemperature,
        name: "Air Gap Temperature",
        vr: :DS
      },
      0x6023 => %{
        keyword: :VerticalPixelSize,
        name: "Vertical Pixel Size",
        vr: :DS
      },
      0x6024 => %{
        keyword: :HorizontalPixelSize,
        name: "Horizontal Pixel Size",
        vr: :DS
      },
      0x6025 => %{
        keyword: :DataStreamingProtocol,
        name: "Data Streaming Protocol",
        vr: :ST
      },
      0x6026 => %{
        keyword: :LensSequence,
        name: "Lens Sequence",
        vr: :SQ
      },
      0x6027 => %{
        keyword: :FieldOfView,
        name: "Field of View",
        vr: :DS
      },
      0x6028 => %{
        keyword: :LensFilterManufacturer,
        name: "Lens Filter Manufacturer",
        vr: :LO
      },
      0x6029 => %{
        keyword: :CutoffFilterType,
        name: "Cutoff Filter Type",
        vr: :CS
      },
      0x602A => %{
        keyword: :LensFilterCutOffWavelength,
        name: "Lens Filter Cut-Off Wavelength",
        vr: :DS
      },
      0x602B => %{
        keyword: :ThermalSourceSequence,
        name: "Thermal Source Sequence",
        vr: :SQ
      },
      0x602C => %{
        keyword: :ThermalSourceMotionState,
        name: "Thermal Source Motion State",
        vr: :CS
      },
      0x602D => %{
        keyword: :ThermalSourceMotionType,
        name: "Thermal Source Motion Type",
        vr: :CS
      },
      0x602E => %{
        keyword: :InductionHeatingSequence,
        name: "Induction Heating Sequence",
        vr: :SQ
      },
      0x602F => %{
        keyword: :CoilConfigurationID,
        name: "Coil Configuration ID",
        vr: :ST
      },
      0x6030 => %{
        keyword: :NumberOfTurnsInCoil,
        name: "Number of Turns in Coil",
        vr: :DS
      },
      0x6031 => %{
        keyword: :ShapeOfIndividualTurn,
        name: "Shape of Individual Turn",
        vr: :CS
      },
      0x6032 => %{
        keyword: :SizeOfIndividualTurn,
        name: "Size of Individual Turn",
        vr: :DS
      },
      0x6033 => %{
        keyword: :DistanceBetweenTurns,
        name: "Distance Between Turns",
        vr: :DS
      },
      0x6034 => %{
        keyword: :FlashHeatingSequence,
        name: "Flash Heating Sequence",
        vr: :SQ
      },
      0x6035 => %{
        keyword: :NumberOfLamps,
        name: "Number of Lamps",
        vr: :DS
      },
      0x6036 => %{
        keyword: :FlashSynchronizationProtocol,
        name: "Flash Synchronization Protocol",
        vr: :ST
      },
      0x6037 => %{
        keyword: :FlashModificationStatus,
        name: "Flash Modification Status",
        vr: :CS
      },
      0x6038 => %{
        keyword: :LaserHeatingSequence,
        name: "Laser Heating Sequence",
        vr: :SQ
      },
      0x6039 => %{
        keyword: :LaserManufacturer,
        name: "Laser Manufacturer",
        vr: :LO
      },
      0x603A => %{
        keyword: :LaserModelNumber,
        name: "Laser Model Number",
        vr: :LO
      },
      0x603B => %{
        keyword: :LaserTypeDescription,
        name: "Laser Type Description",
        vr: :ST
      },
      0x603C => %{
        keyword: :ForcedGasHeatingSequence,
        name: "Forced Gas Heating Sequence",
        vr: :SQ
      },
      0x603D => %{
        keyword: :GasUsedForHeatingCoolingPart,
        name: "Gas Used for Heating/Cooling Part",
        vr: :LO
      },
      0x603E => %{
        keyword: :VibrationSonicHeatingSequence,
        name: "Vibration/Sonic Heating Sequence",
        vr: :SQ
      },
      0x603F => %{
        keyword: :ProbeManufacturer,
        name: "Probe Manufacturer",
        vr: :LO
      },
      0x6040 => %{
        keyword: :ProbeModelNumber,
        name: "Probe Model Number",
        vr: :LO
      },
      0x6041 => %{
        keyword: :ApertureSize,
        name: "Aperture Size",
        vr: :DS
      },
      0x6042 => %{
        keyword: :ProbeResonantFrequency,
        name: "Probe Resonant Frequency",
        vr: :DS
      },
      0x6043 => %{
        keyword: :HeatSourceDescription,
        name: "Heat Source Description",
        vr: :UT
      },
      0x6044 => %{
        keyword: :SurfacePreparationWithOpticalCoating,
        name: "Surface Preparation with Optical Coating",
        vr: :CS
      },
      0x6045 => %{
        keyword: :OpticalCoatingType,
        name: "Optical Coating Type",
        vr: :ST
      },
      0x6046 => %{
        keyword: :ThermalConductivityOfExposedSurface,
        name: "Thermal Conductivity of Exposed Surface",
        vr: :DS
      },
      0x6047 => %{
        keyword: :MaterialDensity,
        name: "Material Density",
        vr: :DS
      },
      0x6048 => %{
        keyword: :SpecificHeatOfInspectionSurface,
        name: "Specific Heat of Inspection Surface",
        vr: :DS
      },
      0x6049 => %{
        keyword: :EmissivityOfInspectionSurface,
        name: "Emissivity of Inspection Surface",
        vr: :DS
      },
      0x604A => %{
        keyword: :ElectromagneticClassificationOfInspectionSurface,
        name: "Electromagnetic Classification of Inspection Surface",
        vr: :CS
      },
      0x604C => %{
        keyword: :MovingWindowSize,
        name: "Moving Window Size",
        vr: :DS
      },
      0x604D => %{
        keyword: :MovingWindowType,
        name: "Moving Window Type",
        vr: :CS
      },
      0x604E => %{
        keyword: :MovingWindowWeights,
        name: "Moving Window Weights",
        vr: :DS
      },
      0x604F => %{
        keyword: :MovingWindowPitch,
        name: "Moving Window Pitch",
        vr: :DS
      },
      0x6050 => %{
        keyword: :MovingWindowPaddingScheme,
        name: "Moving Window Padding Scheme",
        vr: :CS
      },
      0x6051 => %{
        keyword: :MovingWindowPaddingLength,
        name: "Moving Window Padding Sength",
        vr: :DS
      },
      0x6052 => %{
        keyword: :SpatialFilteringParametersSequence,
        name: "Spatial Filtering Parameters Sequence",
        vr: :SQ
      },
      0x6053 => %{
        keyword: :SpatialFilteringScheme,
        name: "Spatial Filtering Scheme",
        vr: :CS
      },
      0x6056 => %{
        keyword: :HorizontalMovingWindowSize,
        name: "Horizontal Moving Window Size",
        vr: :DS
      },
      0x6057 => %{
        keyword: :VerticalMovingWindowSize,
        name: "Vertical Moving Window Size",
        vr: :DS
      },
      0x6059 => %{
        keyword: :PolynomialFittingSequence,
        name: "Polynomial Fitting Sequence",
        vr: :SQ
      },
      0x605A => %{
        keyword: :FittingDataType,
        name: "Fitting Data Type",
        vr: :CS
      },
      0x605B => %{
        keyword: :OperationOnTimeAxisBeforeFitting,
        name: "Operation on Time Axis Before Fitting",
        vr: :CS
      },
      0x605C => %{
        keyword: :OperationOnPixelIntensityBeforeFitting,
        name: "Operation on Pixel Intensity Before Fitting",
        vr: :CS
      },
      0x605D => %{
        keyword: :OrderOfPolynomial,
        name: "Order of Polynomial",
        vr: :DS
      },
      0x605E => %{
        keyword: :IndependentVariableForPolynomialFit,
        name: "Independent Variable for Polynomial Fit",
        vr: :CS
      },
      0x605F => %{
        keyword: :PolynomialCoefficients,
        name: "Polynomial​Coefficients",
        vr: :DS
      },
      0x6060 => %{
        keyword: :ThermographyPixelDataUnit,
        name: "Thermography Pixel Data Unit",
        vr: :CS
      }
    },
    0x0016 => %{
      0x0001 => %{
        keyword: :WhitePoint,
        name: "White Point",
        vr: :DS
      },
      0x0002 => %{
        keyword: :PrimaryChromaticities,
        name: "Primary Chromaticities",
        vr: :DS
      },
      0x0003 => %{
        keyword: :BatteryLevel,
        name: "Battery Level",
        vr: :UT
      },
      0x0004 => %{
        keyword: :ExposureTimeInSeconds,
        name: "Exposure Time in Seconds",
        vr: :DS
      },
      0x0005 => %{
        keyword: :FNumber,
        name: "F-Number",
        vr: :DS
      },
      0x0006 => %{
        keyword: :OECFRows,
        name: "OECF Rows",
        vr: :IS
      },
      0x0007 => %{
        keyword: :OECFColumns,
        name: "OECF Columns",
        vr: :IS
      },
      0x0008 => %{
        keyword: :OECFColumnNames,
        name: "OECF Column Names",
        vr: :UC
      },
      0x0009 => %{
        keyword: :OECFValues,
        name: "OECF Values",
        vr: :DS
      },
      0x000A => %{
        keyword: :SpatialFrequencyResponseRows,
        name: "Spatial Frequency Response Rows",
        vr: :IS
      },
      0x000B => %{
        keyword: :SpatialFrequencyResponseColumns,
        name: "Spatial Frequency Response Columns",
        vr: :IS
      },
      0x000C => %{
        keyword: :SpatialFrequencyResponseColumnNames,
        name: "Spatial Frequency Response Column Names",
        vr: :UC
      },
      0x000D => %{
        keyword: :SpatialFrequencyResponseValues,
        name: "Spatial Frequency Response Values",
        vr: :DS
      },
      0x000E => %{
        keyword: :ColorFilterArrayPatternRows,
        name: "Color Filter Array Pattern Rows",
        vr: :IS
      },
      0x000F => %{
        keyword: :ColorFilterArrayPatternColumns,
        name: "Color Filter Array Pattern Columns",
        vr: :IS
      },
      0x0010 => %{
        keyword: :ColorFilterArrayPatternValues,
        name: "Color Filter Array Pattern Values",
        vr: :DS
      },
      0x0011 => %{
        keyword: :FlashFiringStatus,
        name: "Flash Firing Status",
        vr: :US
      },
      0x0012 => %{
        keyword: :FlashReturnStatus,
        name: "Flash Return Status",
        vr: :US
      },
      0x0013 => %{
        keyword: :FlashMode,
        name: "Flash Mode",
        vr: :US
      },
      0x0014 => %{
        keyword: :FlashFunctionPresent,
        name: "Flash Function Present",
        vr: :US
      },
      0x0015 => %{
        keyword: :FlashRedEyeMode,
        name: "Flash Red Eye Mode",
        vr: :US
      },
      0x0016 => %{
        keyword: :ExposureProgram,
        name: "Exposure Program",
        vr: :US
      },
      0x0017 => %{
        keyword: :SpectralSensitivity,
        name: "Spectral Sensitivity",
        vr: :UT
      },
      0x0018 => %{
        keyword: :PhotographicSensitivity,
        name: "Photographic Sensitivity",
        vr: :IS
      },
      0x0019 => %{
        keyword: :SelfTimerMode,
        name: "Self Timer Mode",
        vr: :IS
      },
      0x001A => %{
        keyword: :SensitivityType,
        name: "Sensitivity Type",
        vr: :US
      },
      0x001B => %{
        keyword: :StandardOutputSensitivity,
        name: "Standard Output Sensitivity",
        vr: :IS
      },
      0x001C => %{
        keyword: :RecommendedExposureIndex,
        name: "Recommended Exposure Index",
        vr: :IS
      },
      0x001D => %{
        keyword: :ISOSpeed,
        name: "ISO Speed​",
        vr: :IS
      },
      0x001E => %{
        keyword: :ISOSpeedLatitudeyyy,
        name: "ISO Speed​​ Latitude yyy",
        vr: :IS
      },
      0x001F => %{
        keyword: :ISOSpeedLatitudezzz,
        name: "ISO Speed​​ Latitude zzz",
        vr: :IS
      },
      0x0020 => %{
        keyword: :EXIFVersion,
        name: "EXIF Version",
        vr: :UT
      },
      0x0021 => %{
        keyword: :ShutterSpeedValue,
        name: "Shutter Speed Value",
        vr: :DS
      },
      0x0022 => %{
        keyword: :ApertureValue,
        name: "Aperture Value",
        vr: :DS
      },
      0x0023 => %{
        keyword: :BrightnessValue,
        name: "Brightness Value",
        vr: :DS
      },
      0x0024 => %{
        keyword: :ExposureBiasValue,
        name: "Exposure Bias Value",
        vr: :DS
      },
      0x0025 => %{
        keyword: :MaxApertureValue,
        name: "Max Aperture Value",
        vr: :DS
      },
      0x0026 => %{
        keyword: :SubjectDistance,
        name: "Subject Distance",
        vr: :DS
      },
      0x0027 => %{
        keyword: :MeteringMode,
        name: "Metering Mode",
        vr: :US
      },
      0x0028 => %{
        keyword: :LightSource,
        name: "Light Source",
        vr: :US
      },
      0x0029 => %{
        keyword: :FocalLength,
        name: "Focal Length",
        vr: :DS
      },
      0x002A => %{
        keyword: :SubjectArea,
        name: "Subject Area",
        vr: :IS
      },
      0x002B => %{
        keyword: :MakerNote,
        name: "Maker Note",
        vr: :OB
      },
      0x0030 => %{
        keyword: :Temperature,
        name: "Temperature",
        vr: :DS
      },
      0x0031 => %{
        keyword: :Humidity,
        name: "Humidity",
        vr: :DS
      },
      0x0032 => %{
        keyword: :Pressure,
        name: "Pressure",
        vr: :DS
      },
      0x0033 => %{
        keyword: :WaterDepth,
        name: "Water Depth",
        vr: :DS
      },
      0x0034 => %{
        keyword: :Acceleration,
        name: "Acceleration",
        vr: :DS
      },
      0x0035 => %{
        keyword: :CameraElevationAngle,
        name: "Camera Elevation Angle",
        vr: :DS
      },
      0x0036 => %{
        keyword: :FlashEnergy,
        name: "Flash Energy",
        vr: :DS
      },
      0x0037 => %{
        keyword: :SubjectLocation,
        name: "Subject Location",
        vr: :IS
      },
      0x0038 => %{
        keyword: :PhotographicExposureIndex,
        name: "Photographic Exposure Index",
        vr: :DS
      },
      0x0039 => %{
        keyword: :SensingMethod,
        name: "Sensing Method",
        vr: :US
      },
      0x003A => %{
        keyword: :FileSource,
        name: "File Source",
        vr: :US
      },
      0x003B => %{
        keyword: :SceneType,
        name: "Scene Type",
        vr: :US
      },
      0x0041 => %{
        keyword: :CustomRendered,
        name: "Custom Rendered",
        vr: :US
      },
      0x0042 => %{
        keyword: :ExposureMode,
        name: "Exposure Mode",
        vr: :US
      },
      0x0043 => %{
        keyword: :WhiteBalance,
        name: "White Balance",
        vr: :US
      },
      0x0044 => %{
        keyword: :DigitalZoomRatio,
        name: "Digital Zoom Ratio",
        vr: :DS
      },
      0x0045 => %{
        keyword: :FocalLengthIn35mmFilm,
        name: "Focal Length In 35mm​ Film",
        vr: :IS
      },
      0x0046 => %{
        keyword: :SceneCaptureType,
        name: "Scene Capture Type",
        vr: :US
      },
      0x0047 => %{
        keyword: :GainControl,
        name: "Gain Control",
        vr: :US
      },
      0x0048 => %{
        keyword: :Contrast,
        name: "Contrast",
        vr: :US
      },
      0x0049 => %{
        keyword: :Saturation,
        name: "Saturation",
        vr: :US
      },
      0x004A => %{
        keyword: :Sharpness,
        name: "Sharpness",
        vr: :US
      },
      0x004B => %{
        keyword: :DeviceSettingDescription,
        name: "Device Setting Description",
        vr: :OB
      },
      0x004C => %{
        keyword: :SubjectDistanceRange,
        name: "Subject Distance Range",
        vr: :US
      },
      0x004D => %{
        keyword: :CameraOwnerName,
        name: "Camera Owner Name",
        vr: :UT
      },
      0x004E => %{
        keyword: :LensSpecification,
        name: "Lens Specification",
        vr: :DS
      },
      0x004F => %{
        keyword: :LensMake,
        name: "Lens Make",
        vr: :UT
      },
      0x0050 => %{
        keyword: :LensModel,
        name: "Lens Model",
        vr: :UT
      },
      0x0051 => %{
        keyword: :LensSerialNumber,
        name: "Lens Serial Number",
        vr: :UT
      },
      0x0061 => %{
        keyword: :InteroperabilityIndex,
        name: "Interoperability Index",
        vr: :CS
      },
      0x0062 => %{
        keyword: :InteroperabilityVersion,
        name: "Interoperability Version",
        vr: :OB
      },
      0x0070 => %{
        keyword: :GPSVersionID,
        name: "GPS Version ID",
        vr: :OB
      },
      0x0071 => %{
        keyword: :GPSLatitudeRef,
        name: "GPS Latitude​ Ref",
        vr: :CS
      },
      0x0072 => %{
        keyword: :GPSLatitude,
        name: "GPS Latitude​",
        vr: :DS
      },
      0x0073 => %{
        keyword: :GPSLongitudeRef,
        name: "GPS Longitude Ref",
        vr: :CS
      },
      0x0074 => %{
        keyword: :GPSLongitude,
        name: "GPS Longitude",
        vr: :DS
      },
      0x0075 => %{
        keyword: :GPSAltitudeRef,
        name: "GPS Altitude​ Ref",
        vr: :US
      },
      0x0076 => %{
        keyword: :GPSAltitude,
        name: "GPS Altitude​",
        vr: :DS
      },
      0x0077 => %{
        keyword: :GPSTimeStamp,
        name: "GPS Time​ Stamp",
        vr: :DT
      },
      0x0078 => %{
        keyword: :GPSSatellites,
        name: "GPS Satellites",
        vr: :UT
      },
      0x0079 => %{
        keyword: :GPSStatus,
        name: "GPS Status",
        vr: :CS
      },
      0x007A => %{
        keyword: :GPSMeasureMode,
        name: "GPS Measure ​Mode",
        vr: :CS
      },
      0x007B => %{
        keyword: :GPSDOP,
        name: "GPS DOP",
        vr: :DS
      },
      0x007C => %{
        keyword: :GPSSpeedRef,
        name: "GPS Speed​ Ref",
        vr: :CS
      },
      0x007D => %{
        keyword: :GPSSpeed,
        name: "GPS Speed​",
        vr: :DS
      },
      0x007E => %{
        keyword: :GPSTrackRef,
        name: "GPS Track ​Ref",
        vr: :CS
      },
      0x007F => %{
        keyword: :GPSTrack,
        name: "GPS Track",
        vr: :DS
      },
      0x0080 => %{
        keyword: :GPSImgDirectionRef,
        name: "GPS Img​ Direction Ref",
        vr: :CS
      },
      0x0081 => %{
        keyword: :GPSImgDirection,
        name: "GPS Img​ Direction",
        vr: :DS
      },
      0x0082 => %{
        keyword: :GPSMapDatum,
        name: "GPS Map​ Datum",
        vr: :UT
      },
      0x0083 => %{
        keyword: :GPSDestLatitudeRef,
        name: "GPS Dest ​Latitude Ref",
        vr: :CS
      },
      0x0084 => %{
        keyword: :GPSDestLatitude,
        name: "GPS Dest​ Latitude",
        vr: :DS
      },
      0x0085 => %{
        keyword: :GPSDestLongitudeRef,
        name: "GPS Dest​ Longitude Ref",
        vr: :CS
      },
      0x0086 => %{
        keyword: :GPSDestLongitude,
        name: "GPS Dest ​Longitude",
        vr: :DS
      },
      0x0087 => %{
        keyword: :GPSDestBearingRef,
        name: "GPS Dest ​Bearing Ref",
        vr: :CS
      },
      0x0088 => %{
        keyword: :GPSDestBearing,
        name: "GPS Dest ​Bearing",
        vr: :DS
      },
      0x0089 => %{
        keyword: :GPSDestDistanceRef,
        name: "GPS Dest ​Distance Ref",
        vr: :CS
      },
      0x008A => %{
        keyword: :GPSDestDistance,
        name: "GPS Dest​ Distance",
        vr: :DS
      },
      0x008B => %{
        keyword: :GPSProcessingMethod,
        name: "GPS Processing​ Method",
        vr: :OB
      },
      0x008C => %{
        keyword: :GPSAreaInformation,
        name: "GPS Area ​Information",
        vr: :OB
      },
      0x008D => %{
        keyword: :GPSDateStamp,
        name: "GPS Date​ Stamp",
        vr: :DT
      },
      0x008E => %{
        keyword: :GPSDifferential,
        name: "GPS Differential",
        vr: :IS
      },
      0x1001 => %{
        keyword: :LightSourcePolarization,
        name: "Light Source Polarization",
        vr: :CS
      },
      0x1002 => %{
        keyword: :EmitterColorTemperature,
        name: "Emitter Color Temperature",
        vr: :DS
      },
      0x1003 => %{
        keyword: :ContactMethod,
        name: "Contact Method",
        vr: :CS
      },
      0x1004 => %{
        keyword: :ImmersionMedia,
        name: "Immersion Media",
        vr: :CS
      },
      0x1005 => %{
        keyword: :OpticalMagnificationFactor,
        name: "Optical Magnification Factor",
        vr: :DS
      }
    },
    0x0018 => %{
      0x0010 => %{
        keyword: :ContrastBolusAgent,
        name: "Contrast/Bolus Agent",
        vr: :LO
      },
      0x0012 => %{
        keyword: :ContrastBolusAgentSequence,
        name: "Contrast/Bolus Agent Sequence",
        vr: :SQ
      },
      0x0013 => %{
        keyword: :ContrastBolusT1Relaxivity,
        name: "Contrast/Bolus T1 Relaxivity",
        vr: :FL
      },
      0x0014 => %{
        keyword: :ContrastBolusAdministrationRouteSequence,
        name: "Contrast/Bolus Administration Route Sequence",
        vr: :SQ
      },
      0x0015 => %{
        keyword: :BodyPartExamined,
        name: "Body Part Examined",
        vr: :CS
      },
      0x0020 => %{
        keyword: :ScanningSequence,
        name: "Scanning Sequence",
        vr: :CS
      },
      0x0021 => %{
        keyword: :SequenceVariant,
        name: "Sequence Variant",
        vr: :CS
      },
      0x0022 => %{
        keyword: :ScanOptions,
        name: "Scan Options",
        vr: :CS
      },
      0x0023 => %{
        keyword: :MRAcquisitionType,
        name: "MR Acquisition Type",
        vr: :CS
      },
      0x0024 => %{
        keyword: :SequenceName,
        name: "Sequence Name",
        vr: :SH
      },
      0x0025 => %{
        keyword: :AngioFlag,
        name: "Angio Flag",
        vr: :CS
      },
      0x0026 => %{
        keyword: :InterventionDrugInformationSequence,
        name: "Intervention Drug Information Sequence",
        vr: :SQ
      },
      0x0027 => %{
        keyword: :InterventionDrugStopTime,
        name: "Intervention Drug Stop Time",
        vr: :TM
      },
      0x0028 => %{
        keyword: :InterventionDrugDose,
        name: "Intervention Drug Dose",
        vr: :DS
      },
      0x0029 => %{
        keyword: :InterventionDrugCodeSequence,
        name: "Intervention Drug Code Sequence",
        vr: :SQ
      },
      0x002A => %{
        keyword: :AdditionalDrugSequence,
        name: "Additional Drug Sequence",
        vr: :SQ
      },
      0x0030 => %{
        keyword: :Radionuclide,
        name: "Radionuclide",
        vr: :LO
      },
      0x0031 => %{
        keyword: :Radiopharmaceutical,
        name: "Radiopharmaceutical",
        vr: :LO
      },
      0x0032 => %{
        keyword: :EnergyWindowCenterline,
        name: "Energy Window Centerline",
        vr: :DS
      },
      0x0033 => %{
        keyword: :EnergyWindowTotalWidth,
        name: "Energy Window Total Width",
        vr: :DS
      },
      0x0034 => %{
        keyword: :InterventionDrugName,
        name: "Intervention Drug Name",
        vr: :LO
      },
      0x0035 => %{
        keyword: :InterventionDrugStartTime,
        name: "Intervention Drug Start Time",
        vr: :TM
      },
      0x0036 => %{
        keyword: :InterventionSequence,
        name: "Intervention Sequence",
        vr: :SQ
      },
      0x0037 => %{
        keyword: :TherapyType,
        name: "Therapy Type",
        vr: :CS
      },
      0x0038 => %{
        keyword: :InterventionStatus,
        name: "Intervention Status",
        vr: :CS
      },
      0x0039 => %{
        keyword: :TherapyDescription,
        name: "Therapy Description",
        vr: :CS
      },
      0x003A => %{
        keyword: :InterventionDescription,
        name: "Intervention Description",
        vr: :ST
      },
      0x0040 => %{
        keyword: :CineRate,
        name: "Cine Rate",
        vr: :IS
      },
      0x0042 => %{
        keyword: :InitialCineRunState,
        name: "Initial Cine Run State",
        vr: :CS
      },
      0x0050 => %{
        keyword: :SliceThickness,
        name: "Slice Thickness",
        vr: :DS
      },
      0x0060 => %{
        keyword: :KVP,
        name: "KVP",
        vr: :DS
      },
      0x0070 => %{
        keyword: :CountsAccumulated,
        name: "Counts Accumulated",
        vr: :IS
      },
      0x0071 => %{
        keyword: :AcquisitionTerminationCondition,
        name: "Acquisition Termination Condition",
        vr: :CS
      },
      0x0072 => %{
        keyword: :EffectiveDuration,
        name: "Effective Duration",
        vr: :DS
      },
      0x0073 => %{
        keyword: :AcquisitionStartCondition,
        name: "Acquisition Start Condition",
        vr: :CS
      },
      0x0074 => %{
        keyword: :AcquisitionStartConditionData,
        name: "Acquisition Start Condition Data",
        vr: :IS
      },
      0x0075 => %{
        keyword: :AcquisitionTerminationConditionData,
        name: "Acquisition Termination Condition Data",
        vr: :IS
      },
      0x0080 => %{
        keyword: :RepetitionTime,
        name: "Repetition Time",
        vr: :DS
      },
      0x0081 => %{
        keyword: :EchoTime,
        name: "Echo Time",
        vr: :DS
      },
      0x0082 => %{
        keyword: :InversionTime,
        name: "Inversion Time",
        vr: :DS
      },
      0x0083 => %{
        keyword: :NumberOfAverages,
        name: "Number of Averages",
        vr: :DS
      },
      0x0084 => %{
        keyword: :ImagingFrequency,
        name: "Imaging Frequency",
        vr: :DS
      },
      0x0085 => %{
        keyword: :ImagedNucleus,
        name: "Imaged Nucleus",
        vr: :SH
      },
      0x0086 => %{
        keyword: :EchoNumbers,
        name: "Echo Number(s)",
        vr: :IS
      },
      0x0087 => %{
        keyword: :MagneticFieldStrength,
        name: "Magnetic Field Strength",
        vr: :DS
      },
      0x0088 => %{
        keyword: :SpacingBetweenSlices,
        name: "Spacing Between Slices",
        vr: :DS
      },
      0x0089 => %{
        keyword: :NumberOfPhaseEncodingSteps,
        name: "Number of Phase Encoding Steps",
        vr: :IS
      },
      0x0090 => %{
        keyword: :DataCollectionDiameter,
        name: "Data Collection Diameter",
        vr: :DS
      },
      0x0091 => %{
        keyword: :EchoTrainLength,
        name: "Echo Train Length",
        vr: :IS
      },
      0x0093 => %{
        keyword: :PercentSampling,
        name: "Percent Sampling",
        vr: :DS
      },
      0x0094 => %{
        keyword: :PercentPhaseFieldOfView,
        name: "Percent Phase Field of View",
        vr: :DS
      },
      0x0095 => %{
        keyword: :PixelBandwidth,
        name: "Pixel Bandwidth",
        vr: :DS
      },
      0x1000 => %{
        keyword: :DeviceSerialNumber,
        name: "Device Serial Number",
        vr: :LO
      },
      0x1002 => %{
        keyword: :DeviceUID,
        name: "Device UID",
        vr: :UI
      },
      0x1003 => %{
        keyword: :DeviceID,
        name: "Device ID",
        vr: :LO
      },
      0x1004 => %{
        keyword: :PlateID,
        name: "Plate ID",
        vr: :LO
      },
      0x1005 => %{
        keyword: :GeneratorID,
        name: "Generator ID",
        vr: :LO
      },
      0x1006 => %{
        keyword: :GridID,
        name: "Grid ID",
        vr: :LO
      },
      0x1007 => %{
        keyword: :CassetteID,
        name: "Cassette ID",
        vr: :LO
      },
      0x1008 => %{
        keyword: :GantryID,
        name: "Gantry ID",
        vr: :LO
      },
      0x1009 => %{
        keyword: :UniqueDeviceIdentifier,
        name: "Unique Device Identifier",
        vr: :UT
      },
      0x100A => %{
        keyword: :UDISequence,
        name: "UDI Sequence",
        vr: :SQ
      },
      0x100B => %{
        keyword: :ManufacturerDeviceClassUID,
        name: "Manufacturer's Device Class UID",
        vr: :UI
      },
      0x1010 => %{
        keyword: :SecondaryCaptureDeviceID,
        name: "Secondary Capture Device ID",
        vr: :LO
      },
      0x1011 => %{
        keyword: :HardcopyCreationDeviceID,
        name: "Hardcopy Creation Device ID",
        vr: :LO
      },
      0x1012 => %{
        keyword: :DateOfSecondaryCapture,
        name: "Date of Secondary Capture",
        vr: :DA
      },
      0x1014 => %{
        keyword: :TimeOfSecondaryCapture,
        name: "Time of Secondary Capture",
        vr: :TM
      },
      0x1016 => %{
        keyword: :SecondaryCaptureDeviceManufacturer,
        name: "Secondary Capture Device Manufacturer",
        vr: :LO
      },
      0x1017 => %{
        keyword: :HardcopyDeviceManufacturer,
        name: "Hardcopy Device Manufacturer",
        vr: :LO
      },
      0x1018 => %{
        keyword: :SecondaryCaptureDeviceManufacturerModelName,
        name: "Secondary Capture Device Manufacturer's Model Name",
        vr: :LO
      },
      0x1019 => %{
        keyword: :SecondaryCaptureDeviceSoftwareVersions,
        name: "Secondary Capture Device Software Versions",
        vr: :LO
      },
      0x101A => %{
        keyword: :HardcopyDeviceSoftwareVersion,
        name: "Hardcopy Device Software Version",
        vr: :LO
      },
      0x101B => %{
        keyword: :HardcopyDeviceManufacturerModelName,
        name: "Hardcopy Device Manufacturer's Model Name",
        vr: :LO
      },
      0x1020 => %{
        keyword: :SoftwareVersions,
        name: "Software Versions",
        vr: :LO
      },
      0x1022 => %{
        keyword: :VideoImageFormatAcquired,
        name: "Video Image Format Acquired",
        vr: :SH
      },
      0x1023 => %{
        keyword: :DigitalImageFormatAcquired,
        name: "Digital Image Format Acquired",
        vr: :LO
      },
      0x1030 => %{
        keyword: :ProtocolName,
        name: "Protocol Name",
        vr: :LO
      },
      0x1040 => %{
        keyword: :ContrastBolusRoute,
        name: "Contrast/Bolus Route",
        vr: :LO
      },
      0x1041 => %{
        keyword: :ContrastBolusVolume,
        name: "Contrast/Bolus Volume",
        vr: :DS
      },
      0x1042 => %{
        keyword: :ContrastBolusStartTime,
        name: "Contrast/Bolus Start Time",
        vr: :TM
      },
      0x1043 => %{
        keyword: :ContrastBolusStopTime,
        name: "Contrast/Bolus Stop Time",
        vr: :TM
      },
      0x1044 => %{
        keyword: :ContrastBolusTotalDose,
        name: "Contrast/Bolus Total Dose",
        vr: :DS
      },
      0x1045 => %{
        keyword: :SyringeCounts,
        name: "Syringe Counts",
        vr: :IS
      },
      0x1046 => %{
        keyword: :ContrastFlowRate,
        name: "Contrast Flow Rate",
        vr: :DS
      },
      0x1047 => %{
        keyword: :ContrastFlowDuration,
        name: "Contrast Flow Duration",
        vr: :DS
      },
      0x1048 => %{
        keyword: :ContrastBolusIngredient,
        name: "Contrast/Bolus Ingredient",
        vr: :CS
      },
      0x1049 => %{
        keyword: :ContrastBolusIngredientConcentration,
        name: "Contrast/Bolus Ingredient Concentration",
        vr: :DS
      },
      0x1050 => %{
        keyword: :SpatialResolution,
        name: "Spatial Resolution",
        vr: :DS
      },
      0x1060 => %{
        keyword: :TriggerTime,
        name: "Trigger Time",
        vr: :DS
      },
      0x1061 => %{
        keyword: :TriggerSourceOrType,
        name: "Trigger Source or Type",
        vr: :LO
      },
      0x1062 => %{
        keyword: :NominalInterval,
        name: "Nominal Interval",
        vr: :IS
      },
      0x1063 => %{
        keyword: :FrameTime,
        name: "Frame Time",
        vr: :DS
      },
      0x1064 => %{
        keyword: :CardiacFramingType,
        name: "Cardiac Framing Type",
        vr: :LO
      },
      0x1065 => %{
        keyword: :FrameTimeVector,
        name: "Frame Time Vector",
        vr: :DS
      },
      0x1066 => %{
        keyword: :FrameDelay,
        name: "Frame Delay",
        vr: :DS
      },
      0x1067 => %{
        keyword: :ImageTriggerDelay,
        name: "Image Trigger Delay",
        vr: :DS
      },
      0x1068 => %{
        keyword: :MultiplexGroupTimeOffset,
        name: "Multiplex Group Time Offset",
        vr: :DS
      },
      0x1069 => %{
        keyword: :TriggerTimeOffset,
        name: "Trigger Time Offset",
        vr: :DS
      },
      0x106A => %{
        keyword: :SynchronizationTrigger,
        name: "Synchronization Trigger",
        vr: :CS
      },
      0x106C => %{
        keyword: :SynchronizationChannel,
        name: "Synchronization Channel",
        vr: :US
      },
      0x106E => %{
        keyword: :TriggerSamplePosition,
        name: "Trigger Sample Position",
        vr: :UL
      },
      0x1070 => %{
        keyword: :RadiopharmaceuticalRoute,
        name: "Radiopharmaceutical Route",
        vr: :LO
      },
      0x1071 => %{
        keyword: :RadiopharmaceuticalVolume,
        name: "Radiopharmaceutical Volume",
        vr: :DS
      },
      0x1072 => %{
        keyword: :RadiopharmaceuticalStartTime,
        name: "Radiopharmaceutical Start Time",
        vr: :TM
      },
      0x1073 => %{
        keyword: :RadiopharmaceuticalStopTime,
        name: "Radiopharmaceutical Stop Time",
        vr: :TM
      },
      0x1074 => %{
        keyword: :RadionuclideTotalDose,
        name: "Radionuclide Total Dose",
        vr: :DS
      },
      0x1075 => %{
        keyword: :RadionuclideHalfLife,
        name: "Radionuclide Half Life",
        vr: :DS
      },
      0x1076 => %{
        keyword: :RadionuclidePositronFraction,
        name: "Radionuclide Positron Fraction",
        vr: :DS
      },
      0x1077 => %{
        keyword: :RadiopharmaceuticalSpecificActivity,
        name: "Radiopharmaceutical Specific Activity",
        vr: :DS
      },
      0x1078 => %{
        keyword: :RadiopharmaceuticalStartDateTime,
        name: "Radiopharmaceutical Start DateTime",
        vr: :DT
      },
      0x1079 => %{
        keyword: :RadiopharmaceuticalStopDateTime,
        name: "Radiopharmaceutical Stop DateTime",
        vr: :DT
      },
      0x1080 => %{
        keyword: :BeatRejectionFlag,
        name: "Beat Rejection Flag",
        vr: :CS
      },
      0x1081 => %{
        keyword: :LowRRValue,
        name: "Low R-R Value",
        vr: :IS
      },
      0x1082 => %{
        keyword: :HighRRValue,
        name: "High R-R Value",
        vr: :IS
      },
      0x1083 => %{
        keyword: :IntervalsAcquired,
        name: "Intervals Acquired",
        vr: :IS
      },
      0x1084 => %{
        keyword: :IntervalsRejected,
        name: "Intervals Rejected",
        vr: :IS
      },
      0x1085 => %{
        keyword: :PVCRejection,
        name: "PVC Rejection",
        vr: :LO
      },
      0x1086 => %{
        keyword: :SkipBeats,
        name: "Skip Beats",
        vr: :IS
      },
      0x1088 => %{
        keyword: :HeartRate,
        name: "Heart Rate",
        vr: :IS
      },
      0x1090 => %{
        keyword: :CardiacNumberOfImages,
        name: "Cardiac Number of Images",
        vr: :IS
      },
      0x1094 => %{
        keyword: :TriggerWindow,
        name: "Trigger Window",
        vr: :IS
      },
      0x1100 => %{
        keyword: :ReconstructionDiameter,
        name: "Reconstruction Diameter",
        vr: :DS
      },
      0x1110 => %{
        keyword: :DistanceSourceToDetector,
        name: "Distance Source to Detector",
        vr: :DS
      },
      0x1111 => %{
        keyword: :DistanceSourceToPatient,
        name: "Distance Source to Patient",
        vr: :DS
      },
      0x1114 => %{
        keyword: :EstimatedRadiographicMagnificationFactor,
        name: "Estimated Radiographic Magnification Factor",
        vr: :DS
      },
      0x1120 => %{
        keyword: :GantryDetectorTilt,
        name: "Gantry/Detector Tilt",
        vr: :DS
      },
      0x1121 => %{
        keyword: :GantryDetectorSlew,
        name: "Gantry/Detector Slew",
        vr: :DS
      },
      0x1130 => %{
        keyword: :TableHeight,
        name: "Table Height",
        vr: :DS
      },
      0x1131 => %{
        keyword: :TableTraverse,
        name: "Table Traverse",
        vr: :DS
      },
      0x1134 => %{
        keyword: :TableMotion,
        name: "Table Motion",
        vr: :CS
      },
      0x1135 => %{
        keyword: :TableVerticalIncrement,
        name: "Table Vertical Increment",
        vr: :DS
      },
      0x1136 => %{
        keyword: :TableLateralIncrement,
        name: "Table Lateral Increment",
        vr: :DS
      },
      0x1137 => %{
        keyword: :TableLongitudinalIncrement,
        name: "Table Longitudinal Increment",
        vr: :DS
      },
      0x1138 => %{
        keyword: :TableAngle,
        name: "Table Angle",
        vr: :DS
      },
      0x113A => %{
        keyword: :TableType,
        name: "Table Type",
        vr: :CS
      },
      0x1140 => %{
        keyword: :RotationDirection,
        name: "Rotation Direction",
        vr: :CS
      },
      0x1141 => %{
        keyword: :AngularPosition,
        name: "Angular Position",
        vr: :DS
      },
      0x1142 => %{
        keyword: :RadialPosition,
        name: "Radial Position",
        vr: :DS
      },
      0x1143 => %{
        keyword: :ScanArc,
        name: "Scan Arc",
        vr: :DS
      },
      0x1144 => %{
        keyword: :AngularStep,
        name: "Angular Step",
        vr: :DS
      },
      0x1145 => %{
        keyword: :CenterOfRotationOffset,
        name: "Center of Rotation Offset",
        vr: :DS
      },
      0x1146 => %{
        keyword: :RotationOffset,
        name: "Rotation Offset",
        vr: :DS
      },
      0x1147 => %{
        keyword: :FieldOfViewShape,
        name: "Field of View Shape",
        vr: :CS
      },
      0x1149 => %{
        keyword: :FieldOfViewDimensions,
        name: "Field of View Dimension(s)",
        vr: :IS
      },
      0x1150 => %{
        keyword: :ExposureTime,
        name: "Exposure Time",
        vr: :IS
      },
      0x1151 => %{
        keyword: :XRayTubeCurrent,
        name: "X-Ray Tube Current",
        vr: :IS
      },
      0x1152 => %{
        keyword: :Exposure,
        name: "Exposure",
        vr: :IS
      },
      0x1153 => %{
        keyword: :ExposureInuAs,
        name: "Exposure in µAs",
        vr: :IS
      },
      0x1154 => %{
        keyword: :AveragePulseWidth,
        name: "Average Pulse Width",
        vr: :DS
      },
      0x1155 => %{
        keyword: :RadiationSetting,
        name: "Radiation Setting",
        vr: :CS
      },
      0x1156 => %{
        keyword: :RectificationType,
        name: "Rectification Type",
        vr: :CS
      },
      0x115A => %{
        keyword: :RadiationMode,
        name: "Radiation Mode",
        vr: :CS
      },
      0x115E => %{
        keyword: :ImageAndFluoroscopyAreaDoseProduct,
        name: "Image and Fluoroscopy Area Dose Product",
        vr: :DS
      },
      0x1160 => %{
        keyword: :FilterType,
        name: "Filter Type",
        vr: :SH
      },
      0x1161 => %{
        keyword: :TypeOfFilters,
        name: "Type of Filters",
        vr: :LO
      },
      0x1162 => %{
        keyword: :IntensifierSize,
        name: "Intensifier Size",
        vr: :DS
      },
      0x1164 => %{
        keyword: :ImagerPixelSpacing,
        name: "Imager Pixel Spacing",
        vr: :DS
      },
      0x1166 => %{
        keyword: :Grid,
        name: "Grid",
        vr: :CS
      },
      0x1170 => %{
        keyword: :GeneratorPower,
        name: "Generator Power",
        vr: :IS
      },
      0x1180 => %{
        keyword: :CollimatorGridName,
        name: "Collimator/grid Name",
        vr: :SH
      },
      0x1181 => %{
        keyword: :CollimatorType,
        name: "Collimator Type",
        vr: :CS
      },
      0x1182 => %{
        keyword: :FocalDistance,
        name: "Focal Distance",
        vr: :IS
      },
      0x1183 => %{
        keyword: :XFocusCenter,
        name: "X Focus Center",
        vr: :DS
      },
      0x1184 => %{
        keyword: :YFocusCenter,
        name: "Y Focus Center",
        vr: :DS
      },
      0x1190 => %{
        keyword: :FocalSpots,
        name: "Focal Spot(s)",
        vr: :DS
      },
      0x1191 => %{
        keyword: :AnodeTargetMaterial,
        name: "Anode Target Material",
        vr: :CS
      },
      0x11A0 => %{
        keyword: :BodyPartThickness,
        name: "Body Part Thickness",
        vr: :DS
      },
      0x11A2 => %{
        keyword: :CompressionForce,
        name: "Compression Force",
        vr: :DS
      },
      0x11A3 => %{
        keyword: :CompressionPressure,
        name: "Compression Pressure",
        vr: :DS
      },
      0x11A4 => %{
        keyword: :PaddleDescription,
        name: "Paddle Description",
        vr: :LO
      },
      0x11A5 => %{
        keyword: :CompressionContactArea,
        name: "Compression Contact Area",
        vr: :DS
      },
      0x11B0 => %{
        keyword: :AcquisitionMode,
        name: "Acquisition Mode",
        vr: :LO
      },
      0x11B1 => %{
        keyword: :DoseModeName,
        name: "Dose Mode Name",
        vr: :LO
      },
      0x11B2 => %{
        keyword: :AcquiredSubtractionMaskFlag,
        name: "Acquired Subtraction Mask Flag",
        vr: :CS
      },
      0x11B3 => %{
        keyword: :FluoroscopyPersistenceFlag,
        name: "Fluoroscopy Persistence Flag",
        vr: :CS
      },
      0x11B4 => %{
        keyword: :FluoroscopyLastImageHoldPersistenceFlag,
        name: "Fluoroscopy Last Image Hold Persistence Flag",
        vr: :CS
      },
      0x11B5 => %{
        keyword: :UpperLimitNumberOfPersistentFluoroscopyFrames,
        name: "Upper Limit Number Of Persistent Fluoroscopy Frames",
        vr: :IS
      },
      0x11B6 => %{
        keyword: :ContrastBolusAutoInjectionTriggerFlag,
        name: "Contrast/Bolus Auto Injection Trigger Flag",
        vr: :CS
      },
      0x11B7 => %{
        keyword: :ContrastBolusInjectionDelay,
        name: "Contrast/Bolus Injection Delay",
        vr: :FD
      },
      0x11B8 => %{
        keyword: :XAAcquisitionPhaseDetailsSequence,
        name: "XA Acquisition Phase Details Sequence",
        vr: :SQ
      },
      0x11B9 => %{
        keyword: :XAAcquisitionFrameRate,
        name: "XA Acquisition Frame Rate",
        vr: :FD
      },
      0x11BA => %{
        keyword: :XAPlaneDetailsSequence,
        name: "XA Plane Details Sequence",
        vr: :SQ
      },
      0x11BB => %{
        keyword: :AcquisitionFieldOfViewLabel,
        name: "Acquisition Field of View Label",
        vr: :LO
      },
      0x11BC => %{
        keyword: :XRayFilterDetailsSequence,
        name: "X-Ray Filter Details Sequence",
        vr: :SQ
      },
      0x11BD => %{
        keyword: :XAAcquisitionDuration,
        name: "XA Acquisition Duration",
        vr: :FD
      },
      0x11BE => %{
        keyword: :ReconstructionPipelineType,
        name: "Reconstruction Pipeline Type",
        vr: :CS
      },
      0x11BF => %{
        keyword: :ImageFilterDetailsSequence,
        name: "Image Filter Details Sequence",
        vr: :SQ
      },
      0x11C0 => %{
        keyword: :AppliedMaskSubtractionFlag,
        name: "Applied Mask Subtraction Flag",
        vr: :CS
      },
      0x11C1 => %{
        keyword: :RequestedSeriesDescriptionCodeSequence,
        name: "Requested Series Description Code Sequence",
        vr: :SQ
      },
      0x1200 => %{
        keyword: :DateOfLastCalibration,
        name: "Date of Last Calibration",
        vr: :DA
      },
      0x1201 => %{
        keyword: :TimeOfLastCalibration,
        name: "Time of Last Calibration",
        vr: :TM
      },
      0x1202 => %{
        keyword: :DateTimeOfLastCalibration,
        name: "DateTime of Last Calibration",
        vr: :DT
      },
      0x1203 => %{
        keyword: :CalibrationDateTime,
        name: "Calibration DateTime",
        vr: :DT
      },
      0x1204 => %{
        keyword: :DateOfManufacture,
        name: "Date of Manufacture",
        vr: :DA
      },
      0x1205 => %{
        keyword: :DateOfInstallation,
        name: "Date of Installation",
        vr: :DA
      },
      0x1210 => %{
        keyword: :ConvolutionKernel,
        name: "Convolution Kernel",
        vr: :SH
      },
      0x1240 => %{
        keyword: :UpperLowerPixelValues,
        name: "Upper/Lower Pixel Values",
        vr: :IS
      },
      0x1242 => %{
        keyword: :ActualFrameDuration,
        name: "Actual Frame Duration",
        vr: :IS
      },
      0x1243 => %{
        keyword: :CountRate,
        name: "Count Rate",
        vr: :IS
      },
      0x1244 => %{
        keyword: :PreferredPlaybackSequencing,
        name: "Preferred Playback Sequencing",
        vr: :US
      },
      0x1250 => %{
        keyword: :ReceiveCoilName,
        name: "Receive Coil Name",
        vr: :SH
      },
      0x1251 => %{
        keyword: :TransmitCoilName,
        name: "Transmit Coil Name",
        vr: :SH
      },
      0x1260 => %{
        keyword: :PlateType,
        name: "Plate Type",
        vr: :SH
      },
      0x1261 => %{
        keyword: :PhosphorType,
        name: "Phosphor Type",
        vr: :LO
      },
      0x1271 => %{
        keyword: :WaterEquivalentDiameter,
        name: "Water Equivalent Diameter",
        vr: :FD
      },
      0x1272 => %{
        keyword: :WaterEquivalentDiameterCalculationMethodCodeSequence,
        name: "Water Equivalent Diameter Calculation Method Code Sequence",
        vr: :SQ
      },
      0x1300 => %{
        keyword: :ScanVelocity,
        name: "Scan Velocity",
        vr: :DS
      },
      0x1301 => %{
        keyword: :WholeBodyTechnique,
        name: "Whole Body Technique",
        vr: :CS
      },
      0x1302 => %{
        keyword: :ScanLength,
        name: "Scan Length",
        vr: :IS
      },
      0x1310 => %{
        keyword: :AcquisitionMatrix,
        name: "Acquisition Matrix",
        vr: :US
      },
      0x1312 => %{
        keyword: :InPlanePhaseEncodingDirection,
        name: "In-plane Phase Encoding Direction",
        vr: :CS
      },
      0x1314 => %{
        keyword: :FlipAngle,
        name: "Flip Angle",
        vr: :DS
      },
      0x1315 => %{
        keyword: :VariableFlipAngleFlag,
        name: "Variable Flip Angle Flag",
        vr: :CS
      },
      0x1316 => %{
        keyword: :SAR,
        name: "SAR",
        vr: :DS
      },
      0x1318 => %{
        keyword: :dBdt,
        name: "dB/dt",
        vr: :DS
      },
      0x1320 => %{
        keyword: :B1rms,
        name: "B1rms",
        vr: :FL
      },
      0x1400 => %{
        keyword: :AcquisitionDeviceProcessingDescription,
        name: "Acquisition Device Processing Description",
        vr: :LO
      },
      0x1401 => %{
        keyword: :AcquisitionDeviceProcessingCode,
        name: "Acquisition Device Processing Code",
        vr: :LO
      },
      0x1402 => %{
        keyword: :CassetteOrientation,
        name: "Cassette Orientation",
        vr: :CS
      },
      0x1403 => %{
        keyword: :CassetteSize,
        name: "Cassette Size",
        vr: :CS
      },
      0x1404 => %{
        keyword: :ExposuresOnPlate,
        name: "Exposures on Plate",
        vr: :US
      },
      0x1405 => %{
        keyword: :RelativeXRayExposure,
        name: "Relative X-Ray Exposure",
        vr: :IS
      },
      0x1411 => %{
        keyword: :ExposureIndex,
        name: "Exposure Index",
        vr: :DS
      },
      0x1412 => %{
        keyword: :TargetExposureIndex,
        name: "Target Exposure Index",
        vr: :DS
      },
      0x1413 => %{
        keyword: :DeviationIndex,
        name: "Deviation Index",
        vr: :DS
      },
      0x1450 => %{
        keyword: :ColumnAngulation,
        name: "Column Angulation",
        vr: :DS
      },
      0x1460 => %{
        keyword: :TomoLayerHeight,
        name: "Tomo Layer Height",
        vr: :DS
      },
      0x1470 => %{
        keyword: :TomoAngle,
        name: "Tomo Angle",
        vr: :DS
      },
      0x1480 => %{
        keyword: :TomoTime,
        name: "Tomo Time",
        vr: :DS
      },
      0x1490 => %{
        keyword: :TomoType,
        name: "Tomo Type",
        vr: :CS
      },
      0x1491 => %{
        keyword: :TomoClass,
        name: "Tomo Class",
        vr: :CS
      },
      0x1495 => %{
        keyword: :NumberOfTomosynthesisSourceImages,
        name: "Number of Tomosynthesis Source Images",
        vr: :IS
      },
      0x1500 => %{
        keyword: :PositionerMotion,
        name: "Positioner Motion",
        vr: :CS
      },
      0x1508 => %{
        keyword: :PositionerType,
        name: "Positioner Type",
        vr: :CS
      },
      0x1510 => %{
        keyword: :PositionerPrimaryAngle,
        name: "Positioner Primary Angle",
        vr: :DS
      },
      0x1511 => %{
        keyword: :PositionerSecondaryAngle,
        name: "Positioner Secondary Angle",
        vr: :DS
      },
      0x1520 => %{
        keyword: :PositionerPrimaryAngleIncrement,
        name: "Positioner Primary Angle Increment",
        vr: :DS
      },
      0x1521 => %{
        keyword: :PositionerSecondaryAngleIncrement,
        name: "Positioner Secondary Angle Increment",
        vr: :DS
      },
      0x1530 => %{
        keyword: :DetectorPrimaryAngle,
        name: "Detector Primary Angle",
        vr: :DS
      },
      0x1531 => %{
        keyword: :DetectorSecondaryAngle,
        name: "Detector Secondary Angle",
        vr: :DS
      },
      0x1600 => %{
        keyword: :ShutterShape,
        name: "Shutter Shape",
        vr: :CS
      },
      0x1602 => %{
        keyword: :ShutterLeftVerticalEdge,
        name: "Shutter Left Vertical Edge",
        vr: :IS
      },
      0x1604 => %{
        keyword: :ShutterRightVerticalEdge,
        name: "Shutter Right Vertical Edge",
        vr: :IS
      },
      0x1606 => %{
        keyword: :ShutterUpperHorizontalEdge,
        name: "Shutter Upper Horizontal Edge",
        vr: :IS
      },
      0x1608 => %{
        keyword: :ShutterLowerHorizontalEdge,
        name: "Shutter Lower Horizontal Edge",
        vr: :IS
      },
      0x1610 => %{
        keyword: :CenterOfCircularShutter,
        name: "Center of Circular Shutter",
        vr: :IS
      },
      0x1612 => %{
        keyword: :RadiusOfCircularShutter,
        name: "Radius of Circular Shutter",
        vr: :IS
      },
      0x1620 => %{
        keyword: :VerticesOfThePolygonalShutter,
        name: "Vertices of the Polygonal Shutter",
        vr: :IS
      },
      0x1622 => %{
        keyword: :ShutterPresentationValue,
        name: "Shutter Presentation Value",
        vr: :US
      },
      0x1623 => %{
        keyword: :ShutterOverlayGroup,
        name: "Shutter Overlay Group",
        vr: :US
      },
      0x1624 => %{
        keyword: :ShutterPresentationColorCIELabValue,
        name: "Shutter Presentation Color CIELab Value",
        vr: :US
      },
      0x1630 => %{
        keyword: :OutlineShapeType,
        name: "Outline Shape Type",
        vr: :CS
      },
      0x1631 => %{
        keyword: :OutlineLeftVerticalEdge,
        name: "Outline Left Vertical Edge",
        vr: :FD
      },
      0x1632 => %{
        keyword: :OutlineRightVerticalEdge,
        name: "Outline Right Vertical Edge",
        vr: :FD
      },
      0x1633 => %{
        keyword: :OutlineUpperHorizontalEdge,
        name: "Outline Upper Horizontal Edge",
        vr: :FD
      },
      0x1634 => %{
        keyword: :OutlineLowerHorizontalEdge,
        name: "Outline Lower Horizontal Edge",
        vr: :FD
      },
      0x1635 => %{
        keyword: :CenterOfCircularOutline,
        name: "Center of Circular Outline",
        vr: :FD
      },
      0x1636 => %{
        keyword: :DiameterOfCircularOutline,
        name: "Diameter of Circular Outline",
        vr: :FD
      },
      0x1637 => %{
        keyword: :NumberOfPolygonalVertices,
        name: "Number of Polygonal Vertices",
        vr: :UL
      },
      0x1638 => %{
        keyword: :VerticesOfThePolygonalOutline,
        name: "Vertices of the Polygonal Outline",
        vr: :OF
      },
      0x1700 => %{
        keyword: :CollimatorShape,
        name: "Collimator Shape",
        vr: :CS
      },
      0x1702 => %{
        keyword: :CollimatorLeftVerticalEdge,
        name: "Collimator Left Vertical Edge",
        vr: :IS
      },
      0x1704 => %{
        keyword: :CollimatorRightVerticalEdge,
        name: "Collimator Right Vertical Edge",
        vr: :IS
      },
      0x1706 => %{
        keyword: :CollimatorUpperHorizontalEdge,
        name: "Collimator Upper Horizontal Edge",
        vr: :IS
      },
      0x1708 => %{
        keyword: :CollimatorLowerHorizontalEdge,
        name: "Collimator Lower Horizontal Edge",
        vr: :IS
      },
      0x1710 => %{
        keyword: :CenterOfCircularCollimator,
        name: "Center of Circular Collimator",
        vr: :IS
      },
      0x1712 => %{
        keyword: :RadiusOfCircularCollimator,
        name: "Radius of Circular Collimator",
        vr: :IS
      },
      0x1720 => %{
        keyword: :VerticesOfThePolygonalCollimator,
        name: "Vertices of the Polygonal Collimator",
        vr: :IS
      },
      0x1800 => %{
        keyword: :AcquisitionTimeSynchronized,
        name: "Acquisition Time Synchronized",
        vr: :CS
      },
      0x1801 => %{
        keyword: :TimeSource,
        name: "Time Source",
        vr: :SH
      },
      0x1802 => %{
        keyword: :TimeDistributionProtocol,
        name: "Time Distribution Protocol",
        vr: :CS
      },
      0x1803 => %{
        keyword: :NTPSourceAddress,
        name: "NTP Source Address",
        vr: :LO
      },
      0x2001 => %{
        keyword: :PageNumberVector,
        name: "Page Number Vector",
        vr: :IS
      },
      0x2002 => %{
        keyword: :FrameLabelVector,
        name: "Frame Label Vector",
        vr: :SH
      },
      0x2003 => %{
        keyword: :FramePrimaryAngleVector,
        name: "Frame Primary Angle Vector",
        vr: :DS
      },
      0x2004 => %{
        keyword: :FrameSecondaryAngleVector,
        name: "Frame Secondary Angle Vector",
        vr: :DS
      },
      0x2005 => %{
        keyword: :SliceLocationVector,
        name: "Slice Location Vector",
        vr: :DS
      },
      0x2006 => %{
        keyword: :DisplayWindowLabelVector,
        name: "Display Window Label Vector",
        vr: :SH
      },
      0x2010 => %{
        keyword: :NominalScannedPixelSpacing,
        name: "Nominal Scanned Pixel Spacing",
        vr: :DS
      },
      0x2020 => %{
        keyword: :DigitizingDeviceTransportDirection,
        name: "Digitizing Device Transport Direction",
        vr: :CS
      },
      0x2030 => %{
        keyword: :RotationOfScannedFilm,
        name: "Rotation of Scanned Film",
        vr: :DS
      },
      0x2041 => %{
        keyword: :BiopsyTargetSequence,
        name: "Biopsy Target Sequence",
        vr: :SQ
      },
      0x2042 => %{
        keyword: :TargetUID,
        name: "Target UID",
        vr: :UI
      },
      0x2043 => %{
        keyword: :LocalizingCursorPosition,
        name: "Localizing Cursor Position",
        vr: :FL
      },
      0x2044 => %{
        keyword: :CalculatedTargetPosition,
        name: "Calculated Target Position",
        vr: :FL
      },
      0x2045 => %{
        keyword: :TargetLabel,
        name: "Target Label",
        vr: :SH
      },
      0x2046 => %{
        keyword: :DisplayedZValue,
        name: "Displayed Z Value",
        vr: :FL
      },
      0x3100 => %{
        keyword: :IVUSAcquisition,
        name: "IVUS Acquisition",
        vr: :CS
      },
      0x3101 => %{
        keyword: :IVUSPullbackRate,
        name: "IVUS Pullback Rate",
        vr: :DS
      },
      0x3102 => %{
        keyword: :IVUSGatedRate,
        name: "IVUS Gated Rate",
        vr: :DS
      },
      0x3103 => %{
        keyword: :IVUSPullbackStartFrameNumber,
        name: "IVUS Pullback Start Frame Number",
        vr: :IS
      },
      0x3104 => %{
        keyword: :IVUSPullbackStopFrameNumber,
        name: "IVUS Pullback Stop Frame Number",
        vr: :IS
      },
      0x3105 => %{
        keyword: :LesionNumber,
        name: "Lesion Number",
        vr: :IS
      },
      0x4000 => %{
        keyword: :AcquisitionComments,
        name: "Acquisition Comments",
        vr: :LT
      },
      0x5000 => %{
        keyword: :OutputPower,
        name: "Output Power",
        vr: :SH
      },
      0x5010 => %{
        keyword: :TransducerData,
        name: "Transducer Data",
        vr: :LO
      },
      0x5011 => %{
        keyword: :TransducerIdentificationSequence,
        name: "Transducer Identification Sequence",
        vr: :SQ
      },
      0x5012 => %{
        keyword: :FocusDepth,
        name: "Focus Depth",
        vr: :DS
      },
      0x5020 => %{
        keyword: :ProcessingFunction,
        name: "Processing Function",
        vr: :LO
      },
      0x5021 => %{
        keyword: :PostprocessingFunction,
        name: "Postprocessing Function",
        vr: :LO
      },
      0x5022 => %{
        keyword: :MechanicalIndex,
        name: "Mechanical Index",
        vr: :DS
      },
      0x5024 => %{
        keyword: :BoneThermalIndex,
        name: "Bone Thermal Index",
        vr: :DS
      },
      0x5026 => %{
        keyword: :CranialThermalIndex,
        name: "Cranial Thermal Index",
        vr: :DS
      },
      0x5027 => %{
        keyword: :SoftTissueThermalIndex,
        name: "Soft Tissue Thermal Index",
        vr: :DS
      },
      0x5028 => %{
        keyword: :SoftTissueFocusThermalIndex,
        name: "Soft Tissue-focus Thermal Index",
        vr: :DS
      },
      0x5029 => %{
        keyword: :SoftTissueSurfaceThermalIndex,
        name: "Soft Tissue-surface Thermal Index",
        vr: :DS
      },
      0x5030 => %{
        keyword: :DynamicRange,
        name: "Dynamic Range",
        vr: :DS
      },
      0x5040 => %{
        keyword: :TotalGain,
        name: "Total Gain",
        vr: :DS
      },
      0x5050 => %{
        keyword: :DepthOfScanField,
        name: "Depth of Scan Field",
        vr: :IS
      },
      0x5100 => %{
        keyword: :PatientPosition,
        name: "Patient Position",
        vr: :CS
      },
      0x5101 => %{
        keyword: :ViewPosition,
        name: "View Position",
        vr: :CS
      },
      0x5104 => %{
        keyword: :ProjectionEponymousNameCodeSequence,
        name: "Projection Eponymous Name Code Sequence",
        vr: :SQ
      },
      0x5210 => %{
        keyword: :ImageTransformationMatrix,
        name: "Image Transformation Matrix",
        vr: :DS
      },
      0x5212 => %{
        keyword: :ImageTranslationVector,
        name: "Image Translation Vector",
        vr: :DS
      },
      0x6000 => %{
        keyword: :Sensitivity,
        name: "Sensitivity",
        vr: :DS
      },
      0x6011 => %{
        keyword: :SequenceOfUltrasoundRegions,
        name: "Sequence of Ultrasound Regions",
        vr: :SQ
      },
      0x6012 => %{
        keyword: :RegionSpatialFormat,
        name: "Region Spatial Format",
        vr: :US
      },
      0x6014 => %{
        keyword: :RegionDataType,
        name: "Region Data Type",
        vr: :US
      },
      0x6016 => %{
        keyword: :RegionFlags,
        name: "Region Flags",
        vr: :UL
      },
      0x6018 => %{
        keyword: :RegionLocationMinX0,
        name: "Region Location Min X0",
        vr: :UL
      },
      0x601A => %{
        keyword: :RegionLocationMinY0,
        name: "Region Location Min Y0",
        vr: :UL
      },
      0x601C => %{
        keyword: :RegionLocationMaxX1,
        name: "Region Location Max X1",
        vr: :UL
      },
      0x601E => %{
        keyword: :RegionLocationMaxY1,
        name: "Region Location Max Y1",
        vr: :UL
      },
      0x6020 => %{
        keyword: :ReferencePixelX0,
        name: "Reference Pixel X0",
        vr: :SL
      },
      0x6022 => %{
        keyword: :ReferencePixelY0,
        name: "Reference Pixel Y0",
        vr: :SL
      },
      0x6024 => %{
        keyword: :PhysicalUnitsXDirection,
        name: "Physical Units X Direction",
        vr: :US
      },
      0x6026 => %{
        keyword: :PhysicalUnitsYDirection,
        name: "Physical Units Y Direction",
        vr: :US
      },
      0x6028 => %{
        keyword: :ReferencePixelPhysicalValueX,
        name: "Reference Pixel Physical Value X",
        vr: :FD
      },
      0x602A => %{
        keyword: :ReferencePixelPhysicalValueY,
        name: "Reference Pixel Physical Value Y",
        vr: :FD
      },
      0x602C => %{
        keyword: :PhysicalDeltaX,
        name: "Physical Delta X",
        vr: :FD
      },
      0x602E => %{
        keyword: :PhysicalDeltaY,
        name: "Physical Delta Y",
        vr: :FD
      },
      0x6030 => %{
        keyword: :TransducerFrequency,
        name: "Transducer Frequency",
        vr: :UL
      },
      0x6031 => %{
        keyword: :TransducerType,
        name: "Transducer Type",
        vr: :CS
      },
      0x6032 => %{
        keyword: :PulseRepetitionFrequency,
        name: "Pulse Repetition Frequency",
        vr: :UL
      },
      0x6034 => %{
        keyword: :DopplerCorrectionAngle,
        name: "Doppler Correction Angle",
        vr: :FD
      },
      0x6036 => %{
        keyword: :SteeringAngle,
        name: "Steering Angle",
        vr: :FD
      },
      0x6038 => %{
        keyword: :DopplerSampleVolumeXPositionRetired,
        name: "Doppler Sample Volume X Position (Retired)",
        vr: :UL
      },
      0x6039 => %{
        keyword: :DopplerSampleVolumeXPosition,
        name: "Doppler Sample Volume X Position",
        vr: :SL
      },
      0x603A => %{
        keyword: :DopplerSampleVolumeYPositionRetired,
        name: "Doppler Sample Volume Y Position (Retired)",
        vr: :UL
      },
      0x603B => %{
        keyword: :DopplerSampleVolumeYPosition,
        name: "Doppler Sample Volume Y Position",
        vr: :SL
      },
      0x603C => %{
        keyword: :TMLinePositionX0Retired,
        name: "TM-Line Position X0 (Retired)",
        vr: :UL
      },
      0x603D => %{
        keyword: :TMLinePositionX0,
        name: "TM-Line Position X0",
        vr: :SL
      },
      0x603E => %{
        keyword: :TMLinePositionY0Retired,
        name: "TM-Line Position Y0 (Retired)",
        vr: :UL
      },
      0x603F => %{
        keyword: :TMLinePositionY0,
        name: "TM-Line Position Y0",
        vr: :SL
      },
      0x6040 => %{
        keyword: :TMLinePositionX1Retired,
        name: "TM-Line Position X1 (Retired)",
        vr: :UL
      },
      0x6041 => %{
        keyword: :TMLinePositionX1,
        name: "TM-Line Position X1",
        vr: :SL
      },
      0x6042 => %{
        keyword: :TMLinePositionY1Retired,
        name: "TM-Line Position Y1 (Retired)",
        vr: :UL
      },
      0x6043 => %{
        keyword: :TMLinePositionY1,
        name: "TM-Line Position Y1",
        vr: :SL
      },
      0x6044 => %{
        keyword: :PixelComponentOrganization,
        name: "Pixel Component Organization",
        vr: :US
      },
      0x6046 => %{
        keyword: :PixelComponentMask,
        name: "Pixel Component Mask",
        vr: :UL
      },
      0x6048 => %{
        keyword: :PixelComponentRangeStart,
        name: "Pixel Component Range Start",
        vr: :UL
      },
      0x604A => %{
        keyword: :PixelComponentRangeStop,
        name: "Pixel Component Range Stop",
        vr: :UL
      },
      0x604C => %{
        keyword: :PixelComponentPhysicalUnits,
        name: "Pixel Component Physical Units",
        vr: :US
      },
      0x604E => %{
        keyword: :PixelComponentDataType,
        name: "Pixel Component Data Type",
        vr: :US
      },
      0x6050 => %{
        keyword: :NumberOfTableBreakPoints,
        name: "Number of Table Break Points",
        vr: :UL
      },
      0x6052 => %{
        keyword: :TableOfXBreakPoints,
        name: "Table of X Break Points",
        vr: :UL
      },
      0x6054 => %{
        keyword: :TableOfYBreakPoints,
        name: "Table of Y Break Points",
        vr: :FD
      },
      0x6056 => %{
        keyword: :NumberOfTableEntries,
        name: "Number of Table Entries",
        vr: :UL
      },
      0x6058 => %{
        keyword: :TableOfPixelValues,
        name: "Table of Pixel Values",
        vr: :UL
      },
      0x605A => %{
        keyword: :TableOfParameterValues,
        name: "Table of Parameter Values",
        vr: :FL
      },
      0x6060 => %{
        keyword: :RWaveTimeVector,
        name: "R Wave Time Vector",
        vr: :FL
      },
      0x6070 => %{
        keyword: :ActiveImageAreaOverlayGroup,
        name: "Active Image Area Overlay Group",
        vr: :US
      },
      0x7000 => %{
        keyword: :DetectorConditionsNominalFlag,
        name: "Detector Conditions Nominal Flag",
        vr: :CS
      },
      0x7001 => %{
        keyword: :DetectorTemperature,
        name: "Detector Temperature",
        vr: :DS
      },
      0x7004 => %{
        keyword: :DetectorType,
        name: "Detector Type",
        vr: :CS
      },
      0x7005 => %{
        keyword: :DetectorConfiguration,
        name: "Detector Configuration",
        vr: :CS
      },
      0x7006 => %{
        keyword: :DetectorDescription,
        name: "Detector Description",
        vr: :LT
      },
      0x7008 => %{
        keyword: :DetectorMode,
        name: "Detector Mode",
        vr: :LT
      },
      0x700A => %{
        keyword: :DetectorID,
        name: "Detector ID",
        vr: :SH
      },
      0x700C => %{
        keyword: :DateOfLastDetectorCalibration,
        name: "Date of Last Detector Calibration",
        vr: :DA
      },
      0x700E => %{
        keyword: :TimeOfLastDetectorCalibration,
        name: "Time of Last Detector Calibration",
        vr: :TM
      },
      0x7010 => %{
        keyword: :ExposuresOnDetectorSinceLastCalibration,
        name: "Exposures on Detector Since Last Calibration",
        vr: :IS
      },
      0x7011 => %{
        keyword: :ExposuresOnDetectorSinceManufactured,
        name: "Exposures on Detector Since Manufactured",
        vr: :IS
      },
      0x7012 => %{
        keyword: :DetectorTimeSinceLastExposure,
        name: "Detector Time Since Last Exposure",
        vr: :DS
      },
      0x7014 => %{
        keyword: :DetectorActiveTime,
        name: "Detector Active Time",
        vr: :DS
      },
      0x7016 => %{
        keyword: :DetectorActivationOffsetFromExposure,
        name: "Detector Activation Offset From Exposure",
        vr: :DS
      },
      0x701A => %{
        keyword: :DetectorBinning,
        name: "Detector Binning",
        vr: :DS
      },
      0x7020 => %{
        keyword: :DetectorElementPhysicalSize,
        name: "Detector Element Physical Size",
        vr: :DS
      },
      0x7022 => %{
        keyword: :DetectorElementSpacing,
        name: "Detector Element Spacing",
        vr: :DS
      },
      0x7024 => %{
        keyword: :DetectorActiveShape,
        name: "Detector Active Shape",
        vr: :CS
      },
      0x7026 => %{
        keyword: :DetectorActiveDimensions,
        name: "Detector Active Dimension(s)",
        vr: :DS
      },
      0x7028 => %{
        keyword: :DetectorActiveOrigin,
        name: "Detector Active Origin",
        vr: :DS
      },
      0x702A => %{
        keyword: :DetectorManufacturerName,
        name: "Detector Manufacturer Name",
        vr: :LO
      },
      0x702B => %{
        keyword: :DetectorManufacturerModelName,
        name: "Detector Manufacturer's Model Name",
        vr: :LO
      },
      0x7030 => %{
        keyword: :FieldOfViewOrigin,
        name: "Field of View Origin",
        vr: :DS
      },
      0x7032 => %{
        keyword: :FieldOfViewRotation,
        name: "Field of View Rotation",
        vr: :DS
      },
      0x7034 => %{
        keyword: :FieldOfViewHorizontalFlip,
        name: "Field of View Horizontal Flip",
        vr: :CS
      },
      0x7036 => %{
        keyword: :PixelDataAreaOriginRelativeToFOV,
        name: "Pixel Data Area Origin Relative To FOV",
        vr: :FL
      },
      0x7038 => %{
        keyword: :PixelDataAreaRotationAngleRelativeToFOV,
        name: "Pixel Data Area Rotation Angle Relative To FOV",
        vr: :FL
      },
      0x7040 => %{
        keyword: :GridAbsorbingMaterial,
        name: "Grid Absorbing Material",
        vr: :LT
      },
      0x7041 => %{
        keyword: :GridSpacingMaterial,
        name: "Grid Spacing Material",
        vr: :LT
      },
      0x7042 => %{
        keyword: :GridThickness,
        name: "Grid Thickness",
        vr: :DS
      },
      0x7044 => %{
        keyword: :GridPitch,
        name: "Grid Pitch",
        vr: :DS
      },
      0x7046 => %{
        keyword: :GridAspectRatio,
        name: "Grid Aspect Ratio",
        vr: :IS
      },
      0x7048 => %{
        keyword: :GridPeriod,
        name: "Grid Period",
        vr: :DS
      },
      0x704C => %{
        keyword: :GridFocalDistance,
        name: "Grid Focal Distance",
        vr: :DS
      },
      0x7050 => %{
        keyword: :FilterMaterial,
        name: "Filter Material",
        vr: :CS
      },
      0x7052 => %{
        keyword: :FilterThicknessMinimum,
        name: "Filter Thickness Minimum",
        vr: :DS
      },
      0x7054 => %{
        keyword: :FilterThicknessMaximum,
        name: "Filter Thickness Maximum",
        vr: :DS
      },
      0x7056 => %{
        keyword: :FilterBeamPathLengthMinimum,
        name: "Filter Beam Path Length Minimum",
        vr: :FL
      },
      0x7058 => %{
        keyword: :FilterBeamPathLengthMaximum,
        name: "Filter Beam Path Length Maximum",
        vr: :FL
      },
      0x7060 => %{
        keyword: :ExposureControlMode,
        name: "Exposure Control Mode",
        vr: :CS
      },
      0x7062 => %{
        keyword: :ExposureControlModeDescription,
        name: "Exposure Control Mode Description",
        vr: :LT
      },
      0x7064 => %{
        keyword: :ExposureStatus,
        name: "Exposure Status",
        vr: :CS
      },
      0x7065 => %{
        keyword: :PhototimerSetting,
        name: "Phototimer Setting",
        vr: :DS
      },
      0x8150 => %{
        keyword: :ExposureTimeInuS,
        name: "Exposure Time in µS",
        vr: :DS
      },
      0x8151 => %{
        keyword: :XRayTubeCurrentInuA,
        name: "X-Ray Tube Current in µA",
        vr: :DS
      },
      0x9004 => %{
        keyword: :ContentQualification,
        name: "Content Qualification",
        vr: :CS
      },
      0x9005 => %{
        keyword: :PulseSequenceName,
        name: "Pulse Sequence Name",
        vr: :SH
      },
      0x9006 => %{
        keyword: :MRImagingModifierSequence,
        name: "MR Imaging Modifier Sequence",
        vr: :SQ
      },
      0x9008 => %{
        keyword: :EchoPulseSequence,
        name: "Echo Pulse Sequence",
        vr: :CS
      },
      0x9009 => %{
        keyword: :InversionRecovery,
        name: "Inversion Recovery",
        vr: :CS
      },
      0x9010 => %{
        keyword: :FlowCompensation,
        name: "Flow Compensation",
        vr: :CS
      },
      0x9011 => %{
        keyword: :MultipleSpinEcho,
        name: "Multiple Spin Echo",
        vr: :CS
      },
      0x9012 => %{
        keyword: :MultiPlanarExcitation,
        name: "Multi-planar Excitation",
        vr: :CS
      },
      0x9014 => %{
        keyword: :PhaseContrast,
        name: "Phase Contrast",
        vr: :CS
      },
      0x9015 => %{
        keyword: :TimeOfFlightContrast,
        name: "Time of Flight Contrast",
        vr: :CS
      },
      0x9016 => %{
        keyword: :Spoiling,
        name: "Spoiling",
        vr: :CS
      },
      0x9017 => %{
        keyword: :SteadyStatePulseSequence,
        name: "Steady State Pulse Sequence",
        vr: :CS
      },
      0x9018 => %{
        keyword: :EchoPlanarPulseSequence,
        name: "Echo Planar Pulse Sequence",
        vr: :CS
      },
      0x9019 => %{
        keyword: :TagAngleFirstAxis,
        name: "Tag Angle First Axis",
        vr: :FD
      },
      0x9020 => %{
        keyword: :MagnetizationTransfer,
        name: "Magnetization Transfer",
        vr: :CS
      },
      0x9021 => %{
        keyword: :T2Preparation,
        name: "T2 Preparation",
        vr: :CS
      },
      0x9022 => %{
        keyword: :BloodSignalNulling,
        name: "Blood Signal Nulling",
        vr: :CS
      },
      0x9024 => %{
        keyword: :SaturationRecovery,
        name: "Saturation Recovery",
        vr: :CS
      },
      0x9025 => %{
        keyword: :SpectrallySelectedSuppression,
        name: "Spectrally Selected Suppression",
        vr: :CS
      },
      0x9026 => %{
        keyword: :SpectrallySelectedExcitation,
        name: "Spectrally Selected Excitation",
        vr: :CS
      },
      0x9027 => %{
        keyword: :SpatialPresaturation,
        name: "Spatial Pre-saturation",
        vr: :CS
      },
      0x9028 => %{
        keyword: :Tagging,
        name: "Tagging",
        vr: :CS
      },
      0x9029 => %{
        keyword: :OversamplingPhase,
        name: "Oversampling Phase",
        vr: :CS
      },
      0x9030 => %{
        keyword: :TagSpacingFirstDimension,
        name: "Tag Spacing First Dimension",
        vr: :FD
      },
      0x9032 => %{
        keyword: :GeometryOfKSpaceTraversal,
        name: "Geometry of k-Space Traversal",
        vr: :CS
      },
      0x9033 => %{
        keyword: :SegmentedKSpaceTraversal,
        name: "Segmented k-Space Traversal",
        vr: :CS
      },
      0x9034 => %{
        keyword: :RectilinearPhaseEncodeReordering,
        name: "Rectilinear Phase Encode Reordering",
        vr: :CS
      },
      0x9035 => %{
        keyword: :TagThickness,
        name: "Tag Thickness",
        vr: :FD
      },
      0x9036 => %{
        keyword: :PartialFourierDirection,
        name: "Partial Fourier Direction",
        vr: :CS
      },
      0x9037 => %{
        keyword: :CardiacSynchronizationTechnique,
        name: "Cardiac Synchronization Technique",
        vr: :CS
      },
      0x9041 => %{
        keyword: :ReceiveCoilManufacturerName,
        name: "Receive Coil Manufacturer Name",
        vr: :LO
      },
      0x9042 => %{
        keyword: :MRReceiveCoilSequence,
        name: "MR Receive Coil Sequence",
        vr: :SQ
      },
      0x9043 => %{
        keyword: :ReceiveCoilType,
        name: "Receive Coil Type",
        vr: :CS
      },
      0x9044 => %{
        keyword: :QuadratureReceiveCoil,
        name: "Quadrature Receive Coil",
        vr: :CS
      },
      0x9045 => %{
        keyword: :MultiCoilDefinitionSequence,
        name: "Multi-Coil Definition Sequence",
        vr: :SQ
      },
      0x9046 => %{
        keyword: :MultiCoilConfiguration,
        name: "Multi-Coil Configuration",
        vr: :LO
      },
      0x9047 => %{
        keyword: :MultiCoilElementName,
        name: "Multi-Coil Element Name",
        vr: :SH
      },
      0x9048 => %{
        keyword: :MultiCoilElementUsed,
        name: "Multi-Coil Element Used",
        vr: :CS
      },
      0x9049 => %{
        keyword: :MRTransmitCoilSequence,
        name: "MR Transmit Coil Sequence",
        vr: :SQ
      },
      0x9050 => %{
        keyword: :TransmitCoilManufacturerName,
        name: "Transmit Coil Manufacturer Name",
        vr: :LO
      },
      0x9051 => %{
        keyword: :TransmitCoilType,
        name: "Transmit Coil Type",
        vr: :CS
      },
      0x9052 => %{
        keyword: :SpectralWidth,
        name: "Spectral Width",
        vr: :FD
      },
      0x9053 => %{
        keyword: :ChemicalShiftReference,
        name: "Chemical Shift Reference",
        vr: :FD
      },
      0x9054 => %{
        keyword: :VolumeLocalizationTechnique,
        name: "Volume Localization Technique",
        vr: :CS
      },
      0x9058 => %{
        keyword: :MRAcquisitionFrequencyEncodingSteps,
        name: "MR Acquisition Frequency Encoding Steps",
        vr: :US
      },
      0x9059 => %{
        keyword: :Decoupling,
        name: "De-coupling",
        vr: :CS
      },
      0x9060 => %{
        keyword: :DecoupledNucleus,
        name: "De-coupled Nucleus",
        vr: :CS
      },
      0x9061 => %{
        keyword: :DecouplingFrequency,
        name: "De-coupling Frequency",
        vr: :FD
      },
      0x9062 => %{
        keyword: :DecouplingMethod,
        name: "De-coupling Method",
        vr: :CS
      },
      0x9063 => %{
        keyword: :DecouplingChemicalShiftReference,
        name: "De-coupling Chemical Shift Reference",
        vr: :FD
      },
      0x9064 => %{
        keyword: :KSpaceFiltering,
        name: "k-space Filtering",
        vr: :CS
      },
      0x9065 => %{
        keyword: :TimeDomainFiltering,
        name: "Time Domain Filtering",
        vr: :CS
      },
      0x9066 => %{
        keyword: :NumberOfZeroFills,
        name: "Number of Zero Fills",
        vr: :US
      },
      0x9067 => %{
        keyword: :BaselineCorrection,
        name: "Baseline Correction",
        vr: :CS
      },
      0x9069 => %{
        keyword: :ParallelReductionFactorInPlane,
        name: "Parallel Reduction Factor In-plane",
        vr: :FD
      },
      0x9070 => %{
        keyword: :CardiacRRIntervalSpecified,
        name: "Cardiac R-R Interval Specified",
        vr: :FD
      },
      0x9073 => %{
        keyword: :AcquisitionDuration,
        name: "Acquisition Duration",
        vr: :FD
      },
      0x9074 => %{
        keyword: :FrameAcquisitionDateTime,
        name: "Frame Acquisition DateTime",
        vr: :DT
      },
      0x9075 => %{
        keyword: :DiffusionDirectionality,
        name: "Diffusion Directionality",
        vr: :CS
      },
      0x9076 => %{
        keyword: :DiffusionGradientDirectionSequence,
        name: "Diffusion Gradient Direction Sequence",
        vr: :SQ
      },
      0x9077 => %{
        keyword: :ParallelAcquisition,
        name: "Parallel Acquisition",
        vr: :CS
      },
      0x9078 => %{
        keyword: :ParallelAcquisitionTechnique,
        name: "Parallel Acquisition Technique",
        vr: :CS
      },
      0x9079 => %{
        keyword: :InversionTimes,
        name: "Inversion Times",
        vr: :FD
      },
      0x9080 => %{
        keyword: :MetaboliteMapDescription,
        name: "Metabolite Map Description",
        vr: :ST
      },
      0x9081 => %{
        keyword: :PartialFourier,
        name: "Partial Fourier",
        vr: :CS
      },
      0x9082 => %{
        keyword: :EffectiveEchoTime,
        name: "Effective Echo Time",
        vr: :FD
      },
      0x9083 => %{
        keyword: :MetaboliteMapCodeSequence,
        name: "Metabolite Map Code Sequence",
        vr: :SQ
      },
      0x9084 => %{
        keyword: :ChemicalShiftSequence,
        name: "Chemical Shift Sequence",
        vr: :SQ
      },
      0x9085 => %{
        keyword: :CardiacSignalSource,
        name: "Cardiac Signal Source",
        vr: :CS
      },
      0x9087 => %{
        keyword: :DiffusionBValue,
        name: "Diffusion b-value",
        vr: :FD
      },
      0x9089 => %{
        keyword: :DiffusionGradientOrientation,
        name: "Diffusion Gradient Orientation",
        vr: :FD
      },
      0x9090 => %{
        keyword: :VelocityEncodingDirection,
        name: "Velocity Encoding Direction",
        vr: :FD
      },
      0x9091 => %{
        keyword: :VelocityEncodingMinimumValue,
        name: "Velocity Encoding Minimum Value",
        vr: :FD
      },
      0x9092 => %{
        keyword: :VelocityEncodingAcquisitionSequence,
        name: "Velocity Encoding Acquisition Sequence",
        vr: :SQ
      },
      0x9093 => %{
        keyword: :NumberOfKSpaceTrajectories,
        name: "Number of k-Space Trajectories",
        vr: :US
      },
      0x9094 => %{
        keyword: :CoverageOfKSpace,
        name: "Coverage of k-Space",
        vr: :CS
      },
      0x9095 => %{
        keyword: :SpectroscopyAcquisitionPhaseRows,
        name: "Spectroscopy Acquisition Phase Rows",
        vr: :UL
      },
      0x9096 => %{
        keyword: :ParallelReductionFactorInPlaneRetired,
        name: "Parallel Reduction Factor In-plane (Retired)",
        vr: :FD
      },
      0x9098 => %{
        keyword: :TransmitterFrequency,
        name: "Transmitter Frequency",
        vr: :FD
      },
      0x9100 => %{
        keyword: :ResonantNucleus,
        name: "Resonant Nucleus",
        vr: :CS
      },
      0x9101 => %{
        keyword: :FrequencyCorrection,
        name: "Frequency Correction",
        vr: :CS
      },
      0x9103 => %{
        keyword: :MRSpectroscopyFOVGeometrySequence,
        name: "MR Spectroscopy FOV/Geometry Sequence",
        vr: :SQ
      },
      0x9104 => %{
        keyword: :SlabThickness,
        name: "Slab Thickness",
        vr: :FD
      },
      0x9105 => %{
        keyword: :SlabOrientation,
        name: "Slab Orientation",
        vr: :FD
      },
      0x9106 => %{
        keyword: :MidSlabPosition,
        name: "Mid Slab Position",
        vr: :FD
      },
      0x9107 => %{
        keyword: :MRSpatialSaturationSequence,
        name: "MR Spatial Saturation Sequence",
        vr: :SQ
      },
      0x9112 => %{
        keyword: :MRTimingAndRelatedParametersSequence,
        name: "MR Timing and Related Parameters Sequence",
        vr: :SQ
      },
      0x9114 => %{
        keyword: :MREchoSequence,
        name: "MR Echo Sequence",
        vr: :SQ
      },
      0x9115 => %{
        keyword: :MRModifierSequence,
        name: "MR Modifier Sequence",
        vr: :SQ
      },
      0x9117 => %{
        keyword: :MRDiffusionSequence,
        name: "MR Diffusion Sequence",
        vr: :SQ
      },
      0x9118 => %{
        keyword: :CardiacSynchronizationSequence,
        name: "Cardiac Synchronization Sequence",
        vr: :SQ
      },
      0x9119 => %{
        keyword: :MRAveragesSequence,
        name: "MR Averages Sequence",
        vr: :SQ
      },
      0x9125 => %{
        keyword: :MRFOVGeometrySequence,
        name: "MR FOV/Geometry Sequence",
        vr: :SQ
      },
      0x9126 => %{
        keyword: :VolumeLocalizationSequence,
        name: "Volume Localization Sequence",
        vr: :SQ
      },
      0x9127 => %{
        keyword: :SpectroscopyAcquisitionDataColumns,
        name: "Spectroscopy Acquisition Data Columns",
        vr: :UL
      },
      0x9147 => %{
        keyword: :DiffusionAnisotropyType,
        name: "Diffusion Anisotropy Type",
        vr: :CS
      },
      0x9151 => %{
        keyword: :FrameReferenceDateTime,
        name: "Frame Reference DateTime",
        vr: :DT
      },
      0x9152 => %{
        keyword: :MRMetaboliteMapSequence,
        name: "MR Metabolite Map Sequence",
        vr: :SQ
      },
      0x9155 => %{
        keyword: :ParallelReductionFactorOutOfPlane,
        name: "Parallel Reduction Factor out-of-plane",
        vr: :FD
      },
      0x9159 => %{
        keyword: :SpectroscopyAcquisitionOutOfPlanePhaseSteps,
        name: "Spectroscopy Acquisition Out-of-plane Phase Steps",
        vr: :UL
      },
      0x9166 => %{
        keyword: :BulkMotionStatus,
        name: "Bulk Motion Status",
        vr: :CS
      },
      0x9168 => %{
        keyword: :ParallelReductionFactorSecondInPlane,
        name: "Parallel Reduction Factor Second In-plane",
        vr: :FD
      },
      0x9169 => %{
        keyword: :CardiacBeatRejectionTechnique,
        name: "Cardiac Beat Rejection Technique",
        vr: :CS
      },
      0x9170 => %{
        keyword: :RespiratoryMotionCompensationTechnique,
        name: "Respiratory Motion Compensation Technique",
        vr: :CS
      },
      0x9171 => %{
        keyword: :RespiratorySignalSource,
        name: "Respiratory Signal Source",
        vr: :CS
      },
      0x9172 => %{
        keyword: :BulkMotionCompensationTechnique,
        name: "Bulk Motion Compensation Technique",
        vr: :CS
      },
      0x9173 => %{
        keyword: :BulkMotionSignalSource,
        name: "Bulk Motion Signal Source",
        vr: :CS
      },
      0x9174 => %{
        keyword: :ApplicableSafetyStandardAgency,
        name: "Applicable Safety Standard Agency",
        vr: :CS
      },
      0x9175 => %{
        keyword: :ApplicableSafetyStandardDescription,
        name: "Applicable Safety Standard Description",
        vr: :LO
      },
      0x9176 => %{
        keyword: :OperatingModeSequence,
        name: "Operating Mode Sequence",
        vr: :SQ
      },
      0x9177 => %{
        keyword: :OperatingModeType,
        name: "Operating Mode Type",
        vr: :CS
      },
      0x9178 => %{
        keyword: :OperatingMode,
        name: "Operating Mode",
        vr: :CS
      },
      0x9179 => %{
        keyword: :SpecificAbsorptionRateDefinition,
        name: "Specific Absorption Rate Definition",
        vr: :CS
      },
      0x9180 => %{
        keyword: :GradientOutputType,
        name: "Gradient Output Type",
        vr: :CS
      },
      0x9181 => %{
        keyword: :SpecificAbsorptionRateValue,
        name: "Specific Absorption Rate Value",
        vr: :FD
      },
      0x9182 => %{
        keyword: :GradientOutput,
        name: "Gradient Output",
        vr: :FD
      },
      0x9183 => %{
        keyword: :FlowCompensationDirection,
        name: "Flow Compensation Direction",
        vr: :CS
      },
      0x9184 => %{
        keyword: :TaggingDelay,
        name: "Tagging Delay",
        vr: :FD
      },
      0x9185 => %{
        keyword: :RespiratoryMotionCompensationTechniqueDescription,
        name: "Respiratory Motion Compensation Technique Description",
        vr: :ST
      },
      0x9186 => %{
        keyword: :RespiratorySignalSourceID,
        name: "Respiratory Signal Source ID",
        vr: :SH
      },
      0x9195 => %{
        keyword: :ChemicalShiftMinimumIntegrationLimitInHz,
        name: "Chemical Shift Minimum Integration Limit in Hz",
        vr: :FD
      },
      0x9196 => %{
        keyword: :ChemicalShiftMaximumIntegrationLimitInHz,
        name: "Chemical Shift Maximum Integration Limit in Hz",
        vr: :FD
      },
      0x9197 => %{
        keyword: :MRVelocityEncodingSequence,
        name: "MR Velocity Encoding Sequence",
        vr: :SQ
      },
      0x9198 => %{
        keyword: :FirstOrderPhaseCorrection,
        name: "First Order Phase Correction",
        vr: :CS
      },
      0x9199 => %{
        keyword: :WaterReferencedPhaseCorrection,
        name: "Water Referenced Phase Correction",
        vr: :CS
      },
      0x9200 => %{
        keyword: :MRSpectroscopyAcquisitionType,
        name: "MR Spectroscopy Acquisition Type",
        vr: :CS
      },
      0x9214 => %{
        keyword: :RespiratoryCyclePosition,
        name: "Respiratory Cycle Position",
        vr: :CS
      },
      0x9217 => %{
        keyword: :VelocityEncodingMaximumValue,
        name: "Velocity Encoding Maximum Value",
        vr: :FD
      },
      0x9218 => %{
        keyword: :TagSpacingSecondDimension,
        name: "Tag Spacing Second Dimension",
        vr: :FD
      },
      0x9219 => %{
        keyword: :TagAngleSecondAxis,
        name: "Tag Angle Second Axis",
        vr: :SS
      },
      0x9220 => %{
        keyword: :FrameAcquisitionDuration,
        name: "Frame Acquisition Duration",
        vr: :FD
      },
      0x9226 => %{
        keyword: :MRImageFrameTypeSequence,
        name: "MR Image Frame Type Sequence",
        vr: :SQ
      },
      0x9227 => %{
        keyword: :MRSpectroscopyFrameTypeSequence,
        name: "MR Spectroscopy Frame Type Sequence",
        vr: :SQ
      },
      0x9231 => %{
        keyword: :MRAcquisitionPhaseEncodingStepsInPlane,
        name: "MR Acquisition Phase Encoding Steps in-plane",
        vr: :US
      },
      0x9232 => %{
        keyword: :MRAcquisitionPhaseEncodingStepsOutOfPlane,
        name: "MR Acquisition Phase Encoding Steps out-of-plane",
        vr: :US
      },
      0x9234 => %{
        keyword: :SpectroscopyAcquisitionPhaseColumns,
        name: "Spectroscopy Acquisition Phase Columns",
        vr: :UL
      },
      0x9236 => %{
        keyword: :CardiacCyclePosition,
        name: "Cardiac Cycle Position",
        vr: :CS
      },
      0x9239 => %{
        keyword: :SpecificAbsorptionRateSequence,
        name: "Specific Absorption Rate Sequence",
        vr: :SQ
      },
      0x9240 => %{
        keyword: :RFEchoTrainLength,
        name: "RF Echo Train Length",
        vr: :US
      },
      0x9241 => %{
        keyword: :GradientEchoTrainLength,
        name: "Gradient Echo Train Length",
        vr: :US
      },
      0x9250 => %{
        keyword: :ArterialSpinLabelingContrast,
        name: "Arterial Spin Labeling Contrast",
        vr: :CS
      },
      0x9251 => %{
        keyword: :MRArterialSpinLabelingSequence,
        name: "MR Arterial Spin Labeling Sequence",
        vr: :SQ
      },
      0x9252 => %{
        keyword: :ASLTechniqueDescription,
        name: "ASL Technique Description",
        vr: :LO
      },
      0x9253 => %{
        keyword: :ASLSlabNumber,
        name: "ASL Slab Number",
        vr: :US
      },
      0x9254 => %{
        keyword: :ASLSlabThickness,
        name: "ASL Slab Thickness",
        vr: :FD
      },
      0x9255 => %{
        keyword: :ASLSlabOrientation,
        name: "ASL Slab Orientation",
        vr: :FD
      },
      0x9256 => %{
        keyword: :ASLMidSlabPosition,
        name: "ASL Mid Slab Position",
        vr: :FD
      },
      0x9257 => %{
        keyword: :ASLContext,
        name: "ASL Context",
        vr: :CS
      },
      0x9258 => %{
        keyword: :ASLPulseTrainDuration,
        name: "ASL Pulse Train Duration",
        vr: :UL
      },
      0x9259 => %{
        keyword: :ASLCrusherFlag,
        name: "ASL Crusher Flag",
        vr: :CS
      },
      0x925A => %{
        keyword: :ASLCrusherFlowLimit,
        name: "ASL Crusher Flow Limit",
        vr: :FD
      },
      0x925B => %{
        keyword: :ASLCrusherDescription,
        name: "ASL Crusher Description",
        vr: :LO
      },
      0x925C => %{
        keyword: :ASLBolusCutoffFlag,
        name: "ASL Bolus Cut-off Flag",
        vr: :CS
      },
      0x925D => %{
        keyword: :ASLBolusCutoffTimingSequence,
        name: "ASL Bolus Cut-off Timing Sequence",
        vr: :SQ
      },
      0x925E => %{
        keyword: :ASLBolusCutoffTechnique,
        name: "ASL Bolus Cut-off Technique",
        vr: :LO
      },
      0x925F => %{
        keyword: :ASLBolusCutoffDelayTime,
        name: "ASL Bolus Cut-off Delay Time",
        vr: :UL
      },
      0x9260 => %{
        keyword: :ASLSlabSequence,
        name: "ASL Slab Sequence",
        vr: :SQ
      },
      0x9295 => %{
        keyword: :ChemicalShiftMinimumIntegrationLimitInppm,
        name: "Chemical Shift Minimum Integration Limit in ppm",
        vr: :FD
      },
      0x9296 => %{
        keyword: :ChemicalShiftMaximumIntegrationLimitInppm,
        name: "Chemical Shift Maximum Integration Limit in ppm",
        vr: :FD
      },
      0x9297 => %{
        keyword: :WaterReferenceAcquisition,
        name: "Water Reference Acquisition",
        vr: :CS
      },
      0x9298 => %{
        keyword: :EchoPeakPosition,
        name: "Echo Peak Position",
        vr: :IS
      },
      0x9301 => %{
        keyword: :CTAcquisitionTypeSequence,
        name: "CT Acquisition Type Sequence",
        vr: :SQ
      },
      0x9302 => %{
        keyword: :AcquisitionType,
        name: "Acquisition Type",
        vr: :CS
      },
      0x9303 => %{
        keyword: :TubeAngle,
        name: "Tube Angle",
        vr: :FD
      },
      0x9304 => %{
        keyword: :CTAcquisitionDetailsSequence,
        name: "CT Acquisition Details Sequence",
        vr: :SQ
      },
      0x9305 => %{
        keyword: :RevolutionTime,
        name: "Revolution Time",
        vr: :FD
      },
      0x9306 => %{
        keyword: :SingleCollimationWidth,
        name: "Single Collimation Width",
        vr: :FD
      },
      0x9307 => %{
        keyword: :TotalCollimationWidth,
        name: "Total Collimation Width",
        vr: :FD
      },
      0x9308 => %{
        keyword: :CTTableDynamicsSequence,
        name: "CT Table Dynamics Sequence",
        vr: :SQ
      },
      0x9309 => %{
        keyword: :TableSpeed,
        name: "Table Speed",
        vr: :FD
      },
      0x9310 => %{
        keyword: :TableFeedPerRotation,
        name: "Table Feed per Rotation",
        vr: :FD
      },
      0x9311 => %{
        keyword: :SpiralPitchFactor,
        name: "Spiral Pitch Factor",
        vr: :FD
      },
      0x9312 => %{
        keyword: :CTGeometrySequence,
        name: "CT Geometry Sequence",
        vr: :SQ
      },
      0x9313 => %{
        keyword: :DataCollectionCenterPatient,
        name: "Data Collection Center (Patient)",
        vr: :FD
      },
      0x9314 => %{
        keyword: :CTReconstructionSequence,
        name: "CT Reconstruction Sequence",
        vr: :SQ
      },
      0x9315 => %{
        keyword: :ReconstructionAlgorithm,
        name: "Reconstruction Algorithm",
        vr: :CS
      },
      0x9316 => %{
        keyword: :ConvolutionKernelGroup,
        name: "Convolution Kernel Group",
        vr: :CS
      },
      0x9317 => %{
        keyword: :ReconstructionFieldOfView,
        name: "Reconstruction Field of View",
        vr: :FD
      },
      0x9318 => %{
        keyword: :ReconstructionTargetCenterPatient,
        name: "Reconstruction Target Center (Patient)",
        vr: :FD
      },
      0x9319 => %{
        keyword: :ReconstructionAngle,
        name: "Reconstruction Angle",
        vr: :FD
      },
      0x9320 => %{
        keyword: :ImageFilter,
        name: "Image Filter",
        vr: :SH
      },
      0x9321 => %{
        keyword: :CTExposureSequence,
        name: "CT Exposure Sequence",
        vr: :SQ
      },
      0x9322 => %{
        keyword: :ReconstructionPixelSpacing,
        name: "Reconstruction Pixel Spacing",
        vr: :FD
      },
      0x9323 => %{
        keyword: :ExposureModulationType,
        name: "Exposure Modulation Type",
        vr: :CS
      },
      0x9324 => %{
        keyword: :EstimatedDoseSaving,
        name: "Estimated Dose Saving",
        vr: :FD
      },
      0x9325 => %{
        keyword: :CTXRayDetailsSequence,
        name: "CT X-Ray Details Sequence",
        vr: :SQ
      },
      0x9326 => %{
        keyword: :CTPositionSequence,
        name: "CT Position Sequence",
        vr: :SQ
      },
      0x9327 => %{
        keyword: :TablePosition,
        name: "Table Position",
        vr: :FD
      },
      0x9328 => %{
        keyword: :ExposureTimeInms,
        name: "Exposure Time in ms",
        vr: :FD
      },
      0x9329 => %{
        keyword: :CTImageFrameTypeSequence,
        name: "CT Image Frame Type Sequence",
        vr: :SQ
      },
      0x9330 => %{
        keyword: :XRayTubeCurrentInmA,
        name: "X-Ray Tube Current in mA",
        vr: :FD
      },
      0x9332 => %{
        keyword: :ExposureInmAs,
        name: "Exposure in mAs",
        vr: :FD
      },
      0x9333 => %{
        keyword: :ConstantVolumeFlag,
        name: "Constant Volume Flag",
        vr: :CS
      },
      0x9334 => %{
        keyword: :FluoroscopyFlag,
        name: "Fluoroscopy Flag",
        vr: :CS
      },
      0x9335 => %{
        keyword: :DistanceSourceToDataCollectionCenter,
        name: "Distance Source to Data Collection Center",
        vr: :FD
      },
      0x9337 => %{
        keyword: :ContrastBolusAgentNumber,
        name: "Contrast/Bolus Agent Number",
        vr: :US
      },
      0x9338 => %{
        keyword: :ContrastBolusIngredientCodeSequence,
        name: "Contrast/Bolus Ingredient Code Sequence",
        vr: :SQ
      },
      0x9340 => %{
        keyword: :ContrastAdministrationProfileSequence,
        name: "Contrast Administration Profile Sequence",
        vr: :SQ
      },
      0x9341 => %{
        keyword: :ContrastBolusUsageSequence,
        name: "Contrast/Bolus Usage Sequence",
        vr: :SQ
      },
      0x9342 => %{
        keyword: :ContrastBolusAgentAdministered,
        name: "Contrast/Bolus Agent Administered",
        vr: :CS
      },
      0x9343 => %{
        keyword: :ContrastBolusAgentDetected,
        name: "Contrast/Bolus Agent Detected",
        vr: :CS
      },
      0x9344 => %{
        keyword: :ContrastBolusAgentPhase,
        name: "Contrast/Bolus Agent Phase",
        vr: :CS
      },
      0x9345 => %{
        keyword: :CTDIvol,
        name: "CTDIvol",
        vr: :FD
      },
      0x9346 => %{
        keyword: :CTDIPhantomTypeCodeSequence,
        name: "CTDI Phantom Type Code Sequence",
        vr: :SQ
      },
      0x9351 => %{
        keyword: :CalciumScoringMassFactorPatient,
        name: "Calcium Scoring Mass Factor Patient",
        vr: :FL
      },
      0x9352 => %{
        keyword: :CalciumScoringMassFactorDevice,
        name: "Calcium Scoring Mass Factor Device",
        vr: :FL
      },
      0x9353 => %{
        keyword: :EnergyWeightingFactor,
        name: "Energy Weighting Factor",
        vr: :FL
      },
      0x9360 => %{
        keyword: :CTAdditionalXRaySourceSequence,
        name: "CT Additional X-Ray Source Sequence",
        vr: :SQ
      },
      0x9361 => %{
        keyword: :MultienergyCTAcquisition,
        name: "Multi-energy CT Acquisition",
        vr: :CS
      },
      0x9362 => %{
        keyword: :MultienergyCTAcquisitionSequence,
        name: "Multi-energy CT Acquisition Sequence",
        vr: :SQ
      },
      0x9363 => %{
        keyword: :MultienergyCTProcessingSequence,
        name: "Multi-energy CT Processing Sequence",
        vr: :SQ
      },
      0x9364 => %{
        keyword: :MultienergyCTCharacteristicsSequence,
        name: "Multi-energy CT Characteristics Sequence",
        vr: :SQ
      },
      0x9365 => %{
        keyword: :MultienergyCTXRaySourceSequence,
        name: "Multi-energy CT X-Ray Source Sequence",
        vr: :SQ
      },
      0x9366 => %{
        keyword: :XRaySourceIndex,
        name: "X-Ray Source Index",
        vr: :US
      },
      0x9367 => %{
        keyword: :XRaySourceID,
        name: "X-Ray Source ID",
        vr: :UC
      },
      0x9368 => %{
        keyword: :MultienergySourceTechnique,
        name: "Multi-energy Source Technique",
        vr: :CS
      },
      0x9369 => %{
        keyword: :SourceStartDateTime,
        name: "Source Start DateTime",
        vr: :DT
      },
      0x936A => %{
        keyword: :SourceEndDateTime,
        name: "Source End DateTime",
        vr: :DT
      },
      0x936B => %{
        keyword: :SwitchingPhaseNumber,
        name: "Switching Phase Number",
        vr: :US
      },
      0x936C => %{
        keyword: :SwitchingPhaseNominalDuration,
        name: "Switching Phase Nominal Duration",
        vr: :DS
      },
      0x936D => %{
        keyword: :SwitchingPhaseTransitionDuration,
        name: "Switching Phase Transition Duration",
        vr: :DS
      },
      0x936E => %{
        keyword: :EffectiveBinEnergy,
        name: "Effective Bin Energy",
        vr: :DS
      },
      0x936F => %{
        keyword: :MultienergyCTXRayDetectorSequence,
        name: "Multi-energy CT X-Ray Detector Sequence",
        vr: :SQ
      },
      0x9370 => %{
        keyword: :XRayDetectorIndex,
        name: "X-Ray Detector Index",
        vr: :US
      },
      0x9371 => %{
        keyword: :XRayDetectorID,
        name: "X-Ray Detector ID",
        vr: :UC
      },
      0x9372 => %{
        keyword: :MultienergyDetectorType,
        name: "Multi-energy Detector Type",
        vr: :CS
      },
      0x9373 => %{
        keyword: :XRayDetectorLabel,
        name: "X-Ray Detector Label",
        vr: :ST
      },
      0x9374 => %{
        keyword: :NominalMaxEnergy,
        name: "Nominal Max Energy",
        vr: :DS
      },
      0x9375 => %{
        keyword: :NominalMinEnergy,
        name: "Nominal Min Energy",
        vr: :DS
      },
      0x9376 => %{
        keyword: :ReferencedXRayDetectorIndex,
        name: "Referenced X-Ray Detector Index",
        vr: :US
      },
      0x9377 => %{
        keyword: :ReferencedXRaySourceIndex,
        name: "Referenced X-Ray Source Index",
        vr: :US
      },
      0x9378 => %{
        keyword: :ReferencedPathIndex,
        name: "Referenced Path Index",
        vr: :US
      },
      0x9379 => %{
        keyword: :MultienergyCTPathSequence,
        name: "Multi-energy CT Path Sequence",
        vr: :SQ
      },
      0x937A => %{
        keyword: :MultienergyCTPathIndex,
        name: "Multi-energy CT Path Index",
        vr: :US
      },
      0x937B => %{
        keyword: :MultienergyAcquisitionDescription,
        name: "Multi-energy Acquisition Description",
        vr: :UT
      },
      0x937C => %{
        keyword: :MonoenergeticEnergyEquivalent,
        name: "Monoenergetic Energy Equivalent",
        vr: :FD
      },
      0x937D => %{
        keyword: :MaterialCodeSequence,
        name: "Material Code Sequence",
        vr: :SQ
      },
      0x937E => %{
        keyword: :DecompositionMethod,
        name: "Decomposition Method",
        vr: :CS
      },
      0x937F => %{
        keyword: :DecompositionDescription,
        name: "Decomposition Description",
        vr: :UT
      },
      0x9380 => %{
        keyword: :DecompositionAlgorithmIdentificationSequence,
        name: "Decomposition Algorithm Identification Sequence",
        vr: :SQ
      },
      0x9381 => %{
        keyword: :DecompositionMaterialSequence,
        name: "Decomposition Material Sequence",
        vr: :SQ
      },
      0x9382 => %{
        keyword: :MaterialAttenuationSequence,
        name: "Material Attenuation Sequence",
        vr: :SQ
      },
      0x9383 => %{
        keyword: :PhotonEnergy,
        name: "Photon Energy",
        vr: :DS
      },
      0x9384 => %{
        keyword: :XRayMassAttenuationCoefficient,
        name: "X-Ray Mass Attenuation Coefficient",
        vr: :DS
      },
      0x9401 => %{
        keyword: :ProjectionPixelCalibrationSequence,
        name: "Projection Pixel Calibration Sequence",
        vr: :SQ
      },
      0x9402 => %{
        keyword: :DistanceSourceToIsocenter,
        name: "Distance Source to Isocenter",
        vr: :FL
      },
      0x9403 => %{
        keyword: :DistanceObjectToTableTop,
        name: "Distance Object to Table Top",
        vr: :FL
      },
      0x9404 => %{
        keyword: :ObjectPixelSpacingInCenterOfBeam,
        name: "Object Pixel Spacing in Center of Beam",
        vr: :FL
      },
      0x9405 => %{
        keyword: :PositionerPositionSequence,
        name: "Positioner Position Sequence",
        vr: :SQ
      },
      0x9406 => %{
        keyword: :TablePositionSequence,
        name: "Table Position Sequence",
        vr: :SQ
      },
      0x9407 => %{
        keyword: :CollimatorShapeSequence,
        name: "Collimator Shape Sequence",
        vr: :SQ
      },
      0x9410 => %{
        keyword: :PlanesInAcquisition,
        name: "Planes in Acquisition",
        vr: :CS
      },
      0x9412 => %{
        keyword: :XAXRFFrameCharacteristicsSequence,
        name: "XA/XRF Frame Characteristics Sequence",
        vr: :SQ
      },
      0x9417 => %{
        keyword: :FrameAcquisitionSequence,
        name: "Frame Acquisition Sequence",
        vr: :SQ
      },
      0x9420 => %{
        keyword: :XRayReceptorType,
        name: "X-Ray Receptor Type",
        vr: :CS
      },
      0x9423 => %{
        keyword: :AcquisitionProtocolName,
        name: "Acquisition Protocol Name",
        vr: :LO
      },
      0x9424 => %{
        keyword: :AcquisitionProtocolDescription,
        name: "Acquisition Protocol Description",
        vr: :LT
      },
      0x9425 => %{
        keyword: :ContrastBolusIngredientOpaque,
        name: "Contrast/Bolus Ingredient Opaque",
        vr: :CS
      },
      0x9426 => %{
        keyword: :DistanceReceptorPlaneToDetectorHousing,
        name: "Distance Receptor Plane to Detector Housing",
        vr: :FL
      },
      0x9427 => %{
        keyword: :IntensifierActiveShape,
        name: "Intensifier Active Shape",
        vr: :CS
      },
      0x9428 => %{
        keyword: :IntensifierActiveDimensions,
        name: "Intensifier Active Dimension(s)",
        vr: :FL
      },
      0x9429 => %{
        keyword: :PhysicalDetectorSize,
        name: "Physical Detector Size",
        vr: :FL
      },
      0x9430 => %{
        keyword: :PositionOfIsocenterProjection,
        name: "Position of Isocenter Projection",
        vr: :FL
      },
      0x9432 => %{
        keyword: :FieldOfViewSequence,
        name: "Field of View Sequence",
        vr: :SQ
      },
      0x9433 => %{
        keyword: :FieldOfViewDescription,
        name: "Field of View Description",
        vr: :LO
      },
      0x9434 => %{
        keyword: :ExposureControlSensingRegionsSequence,
        name: "Exposure Control Sensing Regions Sequence",
        vr: :SQ
      },
      0x9435 => %{
        keyword: :ExposureControlSensingRegionShape,
        name: "Exposure Control Sensing Region Shape",
        vr: :CS
      },
      0x9436 => %{
        keyword: :ExposureControlSensingRegionLeftVerticalEdge,
        name: "Exposure Control Sensing Region Left Vertical Edge",
        vr: :SS
      },
      0x9437 => %{
        keyword: :ExposureControlSensingRegionRightVerticalEdge,
        name: "Exposure Control Sensing Region Right Vertical Edge",
        vr: :SS
      },
      0x9438 => %{
        keyword: :ExposureControlSensingRegionUpperHorizontalEdge,
        name: "Exposure Control Sensing Region Upper Horizontal Edge",
        vr: :SS
      },
      0x9439 => %{
        keyword: :ExposureControlSensingRegionLowerHorizontalEdge,
        name: "Exposure Control Sensing Region Lower Horizontal Edge",
        vr: :SS
      },
      0x9440 => %{
        keyword: :CenterOfCircularExposureControlSensingRegion,
        name: "Center of Circular Exposure Control Sensing Region",
        vr: :SS
      },
      0x9441 => %{
        keyword: :RadiusOfCircularExposureControlSensingRegion,
        name: "Radius of Circular Exposure Control Sensing Region",
        vr: :US
      },
      0x9442 => %{
        keyword: :VerticesOfThePolygonalExposureControlSensingRegion,
        name: "Vertices of the Polygonal Exposure Control Sensing Region",
        vr: :SS
      },
      0x9447 => %{
        keyword: :ColumnAngulationPatient,
        name: "Column Angulation (Patient)",
        vr: :FL
      },
      0x9449 => %{
        keyword: :BeamAngle,
        name: "Beam Angle",
        vr: :FL
      },
      0x9451 => %{
        keyword: :FrameDetectorParametersSequence,
        name: "Frame Detector Parameters Sequence",
        vr: :SQ
      },
      0x9452 => %{
        keyword: :CalculatedAnatomyThickness,
        name: "Calculated Anatomy Thickness",
        vr: :FL
      },
      0x9455 => %{
        keyword: :CalibrationSequence,
        name: "Calibration Sequence",
        vr: :SQ
      },
      0x9456 => %{
        keyword: :ObjectThicknessSequence,
        name: "Object Thickness Sequence",
        vr: :SQ
      },
      0x9457 => %{
        keyword: :PlaneIdentification,
        name: "Plane Identification",
        vr: :CS
      },
      0x9461 => %{
        keyword: :FieldOfViewDimensionsInFloat,
        name: "Field of View Dimension(s) in Float",
        vr: :FL
      },
      0x9462 => %{
        keyword: :IsocenterReferenceSystemSequence,
        name: "Isocenter Reference System Sequence",
        vr: :SQ
      },
      0x9463 => %{
        keyword: :PositionerIsocenterPrimaryAngle,
        name: "Positioner Isocenter Primary Angle",
        vr: :FL
      },
      0x9464 => %{
        keyword: :PositionerIsocenterSecondaryAngle,
        name: "Positioner Isocenter Secondary Angle",
        vr: :FL
      },
      0x9465 => %{
        keyword: :PositionerIsocenterDetectorRotationAngle,
        name: "Positioner Isocenter Detector Rotation Angle",
        vr: :FL
      },
      0x9466 => %{
        keyword: :TableXPositionToIsocenter,
        name: "Table X Position to Isocenter",
        vr: :FL
      },
      0x9467 => %{
        keyword: :TableYPositionToIsocenter,
        name: "Table Y Position to Isocenter",
        vr: :FL
      },
      0x9468 => %{
        keyword: :TableZPositionToIsocenter,
        name: "Table Z Position to Isocenter",
        vr: :FL
      },
      0x9469 => %{
        keyword: :TableHorizontalRotationAngle,
        name: "Table Horizontal Rotation Angle",
        vr: :FL
      },
      0x9470 => %{
        keyword: :TableHeadTiltAngle,
        name: "Table Head Tilt Angle",
        vr: :FL
      },
      0x9471 => %{
        keyword: :TableCradleTiltAngle,
        name: "Table Cradle Tilt Angle",
        vr: :FL
      },
      0x9472 => %{
        keyword: :FrameDisplayShutterSequence,
        name: "Frame Display Shutter Sequence",
        vr: :SQ
      },
      0x9473 => %{
        keyword: :AcquiredImageAreaDoseProduct,
        name: "Acquired Image Area Dose Product",
        vr: :FL
      },
      0x9474 => %{
        keyword: :CArmPositionerTabletopRelationship,
        name: "C-arm Positioner Tabletop Relationship",
        vr: :CS
      },
      0x9476 => %{
        keyword: :XRayGeometrySequence,
        name: "X-Ray Geometry Sequence",
        vr: :SQ
      },
      0x9477 => %{
        keyword: :IrradiationEventIdentificationSequence,
        name: "Irradiation Event Identification Sequence",
        vr: :SQ
      },
      0x9504 => %{
        keyword: :XRay3DFrameTypeSequence,
        name: "X-Ray 3D Frame Type Sequence",
        vr: :SQ
      },
      0x9506 => %{
        keyword: :ContributingSourcesSequence,
        name: "Contributing Sources Sequence",
        vr: :SQ
      },
      0x9507 => %{
        keyword: :XRay3DAcquisitionSequence,
        name: "X-Ray 3D Acquisition Sequence",
        vr: :SQ
      },
      0x9508 => %{
        keyword: :PrimaryPositionerScanArc,
        name: "Primary Positioner Scan Arc",
        vr: :FL
      },
      0x9509 => %{
        keyword: :SecondaryPositionerScanArc,
        name: "Secondary Positioner Scan Arc",
        vr: :FL
      },
      0x9510 => %{
        keyword: :PrimaryPositionerScanStartAngle,
        name: "Primary Positioner Scan Start Angle",
        vr: :FL
      },
      0x9511 => %{
        keyword: :SecondaryPositionerScanStartAngle,
        name: "Secondary Positioner Scan Start Angle",
        vr: :FL
      },
      0x9514 => %{
        keyword: :PrimaryPositionerIncrement,
        name: "Primary Positioner Increment",
        vr: :FL
      },
      0x9515 => %{
        keyword: :SecondaryPositionerIncrement,
        name: "Secondary Positioner Increment",
        vr: :FL
      },
      0x9516 => %{
        keyword: :StartAcquisitionDateTime,
        name: "Start Acquisition DateTime",
        vr: :DT
      },
      0x9517 => %{
        keyword: :EndAcquisitionDateTime,
        name: "End Acquisition DateTime",
        vr: :DT
      },
      0x9518 => %{
        keyword: :PrimaryPositionerIncrementSign,
        name: "Primary Positioner Increment Sign",
        vr: :SS
      },
      0x9519 => %{
        keyword: :SecondaryPositionerIncrementSign,
        name: "Secondary Positioner Increment Sign",
        vr: :SS
      },
      0x9524 => %{
        keyword: :ApplicationName,
        name: "Application Name",
        vr: :LO
      },
      0x9525 => %{
        keyword: :ApplicationVersion,
        name: "Application Version",
        vr: :LO
      },
      0x9526 => %{
        keyword: :ApplicationManufacturer,
        name: "Application Manufacturer",
        vr: :LO
      },
      0x9527 => %{
        keyword: :AlgorithmType,
        name: "Algorithm Type",
        vr: :CS
      },
      0x9528 => %{
        keyword: :AlgorithmDescription,
        name: "Algorithm Description",
        vr: :LO
      },
      0x9530 => %{
        keyword: :XRay3DReconstructionSequence,
        name: "X-Ray 3D Reconstruction Sequence",
        vr: :SQ
      },
      0x9531 => %{
        keyword: :ReconstructionDescription,
        name: "Reconstruction Description",
        vr: :LO
      },
      0x9538 => %{
        keyword: :PerProjectionAcquisitionSequence,
        name: "Per Projection Acquisition Sequence",
        vr: :SQ
      },
      0x9541 => %{
        keyword: :DetectorPositionSequence,
        name: "Detector Position Sequence",
        vr: :SQ
      },
      0x9542 => %{
        keyword: :XRayAcquisitionDoseSequence,
        name: "X-Ray Acquisition Dose Sequence",
        vr: :SQ
      },
      0x9543 => %{
        keyword: :XRaySourceIsocenterPrimaryAngle,
        name: "X-Ray Source Isocenter Primary Angle",
        vr: :FD
      },
      0x9544 => %{
        keyword: :XRaySourceIsocenterSecondaryAngle,
        name: "X-Ray Source Isocenter Secondary Angle",
        vr: :FD
      },
      0x9545 => %{
        keyword: :BreastSupportIsocenterPrimaryAngle,
        name: "Breast Support Isocenter Primary Angle",
        vr: :FD
      },
      0x9546 => %{
        keyword: :BreastSupportIsocenterSecondaryAngle,
        name: "Breast Support Isocenter Secondary Angle",
        vr: :FD
      },
      0x9547 => %{
        keyword: :BreastSupportXPositionToIsocenter,
        name: "Breast Support X Position to Isocenter",
        vr: :FD
      },
      0x9548 => %{
        keyword: :BreastSupportYPositionToIsocenter,
        name: "Breast Support Y Position to Isocenter",
        vr: :FD
      },
      0x9549 => %{
        keyword: :BreastSupportZPositionToIsocenter,
        name: "Breast Support Z Position to Isocenter",
        vr: :FD
      },
      0x9550 => %{
        keyword: :DetectorIsocenterPrimaryAngle,
        name: "Detector Isocenter Primary Angle",
        vr: :FD
      },
      0x9551 => %{
        keyword: :DetectorIsocenterSecondaryAngle,
        name: "Detector Isocenter Secondary Angle",
        vr: :FD
      },
      0x9552 => %{
        keyword: :DetectorXPositionToIsocenter,
        name: "Detector X Position to Isocenter",
        vr: :FD
      },
      0x9553 => %{
        keyword: :DetectorYPositionToIsocenter,
        name: "Detector Y Position to Isocenter",
        vr: :FD
      },
      0x9554 => %{
        keyword: :DetectorZPositionToIsocenter,
        name: "Detector Z Position to Isocenter",
        vr: :FD
      },
      0x9555 => %{
        keyword: :XRayGridSequence,
        name: "X-Ray Grid Sequence",
        vr: :SQ
      },
      0x9556 => %{
        keyword: :XRayFilterSequence,
        name: "X-Ray Filter Sequence",
        vr: :SQ
      },
      0x9557 => %{
        keyword: :DetectorActiveAreaTLHCPosition,
        name: "Detector Active Area TLHC Position",
        vr: :FD
      },
      0x9558 => %{
        keyword: :DetectorActiveAreaOrientation,
        name: "Detector Active Area Orientation",
        vr: :FD
      },
      0x9559 => %{
        keyword: :PositionerPrimaryAngleDirection,
        name: "Positioner Primary Angle Direction",
        vr: :CS
      },
      0x9601 => %{
        keyword: :DiffusionBMatrixSequence,
        name: "Diffusion b-matrix Sequence",
        vr: :SQ
      },
      0x9602 => %{
        keyword: :DiffusionBValueXX,
        name: "Diffusion b-value XX",
        vr: :FD
      },
      0x9603 => %{
        keyword: :DiffusionBValueXY,
        name: "Diffusion b-value XY",
        vr: :FD
      },
      0x9604 => %{
        keyword: :DiffusionBValueXZ,
        name: "Diffusion b-value XZ",
        vr: :FD
      },
      0x9605 => %{
        keyword: :DiffusionBValueYY,
        name: "Diffusion b-value YY",
        vr: :FD
      },
      0x9606 => %{
        keyword: :DiffusionBValueYZ,
        name: "Diffusion b-value YZ",
        vr: :FD
      },
      0x9607 => %{
        keyword: :DiffusionBValueZZ,
        name: "Diffusion b-value ZZ",
        vr: :FD
      },
      0x9621 => %{
        keyword: :FunctionalMRSequence,
        name: "Functional MR Sequence",
        vr: :SQ
      },
      0x9622 => %{
        keyword: :FunctionalSettlingPhaseFramesPresent,
        name: "Functional Settling Phase Frames Present",
        vr: :CS
      },
      0x9623 => %{
        keyword: :FunctionalSyncPulse,
        name: "Functional Sync Pulse",
        vr: :DT
      },
      0x9624 => %{
        keyword: :SettlingPhaseFrame,
        name: "Settling Phase Frame",
        vr: :CS
      },
      0x9701 => %{
        keyword: :DecayCorrectionDateTime,
        name: "Decay Correction DateTime",
        vr: :DT
      },
      0x9715 => %{
        keyword: :StartDensityThreshold,
        name: "Start Density Threshold",
        vr: :FD
      },
      0x9716 => %{
        keyword: :StartRelativeDensityDifferenceThreshold,
        name: "Start Relative Density Difference Threshold",
        vr: :FD
      },
      0x9717 => %{
        keyword: :StartCardiacTriggerCountThreshold,
        name: "Start Cardiac Trigger Count Threshold",
        vr: :FD
      },
      0x9718 => %{
        keyword: :StartRespiratoryTriggerCountThreshold,
        name: "Start Respiratory Trigger Count Threshold",
        vr: :FD
      },
      0x9719 => %{
        keyword: :TerminationCountsThreshold,
        name: "Termination Counts Threshold",
        vr: :FD
      },
      0x9720 => %{
        keyword: :TerminationDensityThreshold,
        name: "Termination Density Threshold",
        vr: :FD
      },
      0x9721 => %{
        keyword: :TerminationRelativeDensityThreshold,
        name: "Termination Relative Density Threshold",
        vr: :FD
      },
      0x9722 => %{
        keyword: :TerminationTimeThreshold,
        name: "Termination Time Threshold",
        vr: :FD
      },
      0x9723 => %{
        keyword: :TerminationCardiacTriggerCountThreshold,
        name: "Termination Cardiac Trigger Count Threshold",
        vr: :FD
      },
      0x9724 => %{
        keyword: :TerminationRespiratoryTriggerCountThreshold,
        name: "Termination Respiratory Trigger Count Threshold",
        vr: :FD
      },
      0x9725 => %{
        keyword: :DetectorGeometry,
        name: "Detector Geometry",
        vr: :CS
      },
      0x9726 => %{
        keyword: :TransverseDetectorSeparation,
        name: "Transverse Detector Separation",
        vr: :FD
      },
      0x9727 => %{
        keyword: :AxialDetectorDimension,
        name: "Axial Detector Dimension",
        vr: :FD
      },
      0x9729 => %{
        keyword: :RadiopharmaceuticalAgentNumber,
        name: "Radiopharmaceutical Agent Number",
        vr: :US
      },
      0x9732 => %{
        keyword: :PETFrameAcquisitionSequence,
        name: "PET Frame Acquisition Sequence",
        vr: :SQ
      },
      0x9733 => %{
        keyword: :PETDetectorMotionDetailsSequence,
        name: "PET Detector Motion Details Sequence",
        vr: :SQ
      },
      0x9734 => %{
        keyword: :PETTableDynamicsSequence,
        name: "PET Table Dynamics Sequence",
        vr: :SQ
      },
      0x9735 => %{
        keyword: :PETPositionSequence,
        name: "PET Position Sequence",
        vr: :SQ
      },
      0x9736 => %{
        keyword: :PETFrameCorrectionFactorsSequence,
        name: "PET Frame Correction Factors Sequence",
        vr: :SQ
      },
      0x9737 => %{
        keyword: :RadiopharmaceuticalUsageSequence,
        name: "Radiopharmaceutical Usage Sequence",
        vr: :SQ
      },
      0x9738 => %{
        keyword: :AttenuationCorrectionSource,
        name: "Attenuation Correction Source",
        vr: :CS
      },
      0x9739 => %{
        keyword: :NumberOfIterations,
        name: "Number of Iterations",
        vr: :US
      },
      0x9740 => %{
        keyword: :NumberOfSubsets,
        name: "Number of Subsets",
        vr: :US
      },
      0x9749 => %{
        keyword: :PETReconstructionSequence,
        name: "PET Reconstruction Sequence",
        vr: :SQ
      },
      0x9751 => %{
        keyword: :PETFrameTypeSequence,
        name: "PET Frame Type Sequence",
        vr: :SQ
      },
      0x9755 => %{
        keyword: :TimeOfFlightInformationUsed,
        name: "Time of Flight Information Used",
        vr: :CS
      },
      0x9756 => %{
        keyword: :ReconstructionType,
        name: "Reconstruction Type",
        vr: :CS
      },
      0x9758 => %{
        keyword: :DecayCorrected,
        name: "Decay Corrected",
        vr: :CS
      },
      0x9759 => %{
        keyword: :AttenuationCorrected,
        name: "Attenuation Corrected",
        vr: :CS
      },
      0x9760 => %{
        keyword: :ScatterCorrected,
        name: "Scatter Corrected",
        vr: :CS
      },
      0x9761 => %{
        keyword: :DeadTimeCorrected,
        name: "Dead Time Corrected",
        vr: :CS
      },
      0x9762 => %{
        keyword: :GantryMotionCorrected,
        name: "Gantry Motion Corrected",
        vr: :CS
      },
      0x9763 => %{
        keyword: :PatientMotionCorrected,
        name: "Patient Motion Corrected",
        vr: :CS
      },
      0x9764 => %{
        keyword: :CountLossNormalizationCorrected,
        name: "Count Loss Normalization Corrected",
        vr: :CS
      },
      0x9765 => %{
        keyword: :RandomsCorrected,
        name: "Randoms Corrected",
        vr: :CS
      },
      0x9766 => %{
        keyword: :NonUniformRadialSamplingCorrected,
        name: "Non-uniform Radial Sampling Corrected",
        vr: :CS
      },
      0x9767 => %{
        keyword: :SensitivityCalibrated,
        name: "Sensitivity Calibrated",
        vr: :CS
      },
      0x9768 => %{
        keyword: :DetectorNormalizationCorrection,
        name: "Detector Normalization Correction",
        vr: :CS
      },
      0x9769 => %{
        keyword: :IterativeReconstructionMethod,
        name: "Iterative Reconstruction Method",
        vr: :CS
      },
      0x9770 => %{
        keyword: :AttenuationCorrectionTemporalRelationship,
        name: "Attenuation Correction Temporal Relationship",
        vr: :CS
      },
      0x9771 => %{
        keyword: :PatientPhysiologicalStateSequence,
        name: "Patient Physiological State Sequence",
        vr: :SQ
      },
      0x9772 => %{
        keyword: :PatientPhysiologicalStateCodeSequence,
        name: "Patient Physiological State Code Sequence",
        vr: :SQ
      },
      0x9801 => %{
        keyword: :DepthsOfFocus,
        name: "Depth(s) of Focus",
        vr: :FD
      },
      0x9803 => %{
        keyword: :ExcludedIntervalsSequence,
        name: "Excluded Intervals Sequence",
        vr: :SQ
      },
      0x9804 => %{
        keyword: :ExclusionStartDateTime,
        name: "Exclusion Start DateTime",
        vr: :DT
      },
      0x9805 => %{
        keyword: :ExclusionDuration,
        name: "Exclusion Duration",
        vr: :FD
      },
      0x9806 => %{
        keyword: :USImageDescriptionSequence,
        name: "US Image Description Sequence",
        vr: :SQ
      },
      0x9807 => %{
        keyword: :ImageDataTypeSequence,
        name: "Image Data Type Sequence",
        vr: :SQ
      },
      0x9808 => %{
        keyword: :DataType,
        name: "Data Type",
        vr: :CS
      },
      0x9809 => %{
        keyword: :TransducerScanPatternCodeSequence,
        name: "Transducer Scan Pattern Code Sequence",
        vr: :SQ
      },
      0x980B => %{
        keyword: :AliasedDataType,
        name: "Aliased Data Type",
        vr: :CS
      },
      0x980C => %{
        keyword: :PositionMeasuringDeviceUsed,
        name: "Position Measuring Device Used",
        vr: :CS
      },
      0x980D => %{
        keyword: :TransducerGeometryCodeSequence,
        name: "Transducer Geometry Code Sequence",
        vr: :SQ
      },
      0x980E => %{
        keyword: :TransducerBeamSteeringCodeSequence,
        name: "Transducer Beam Steering Code Sequence",
        vr: :SQ
      },
      0x980F => %{
        keyword: :TransducerApplicationCodeSequence,
        name: "Transducer Application Code Sequence",
        vr: :SQ
      },
      0x9810 => %{
        keyword: :ZeroVelocityPixelValue,
        name: "Zero Velocity Pixel Value",
        vr: :US
      },
      0x9821 => %{
        keyword: :PhotoacousticExcitationCharacteristicsSequence,
        name: "Photoacoustic Excitation Characteristics Sequence",
        vr: :SQ
      },
      0x9822 => %{
        keyword: :ExcitationSpectralWidth,
        name: "Excitation Spectral Width",
        vr: :FD
      },
      0x9823 => %{
        keyword: :ExcitationEnergy,
        name: "Excitation Energy",
        vr: :FD
      },
      0x9824 => %{
        keyword: :ExcitationPulseDuration,
        name: "Excitation Pulse Duration",
        vr: :FD
      },
      0x9825 => %{
        keyword: :ExcitationWavelengthSequence,
        name: "Excitation Wavelength Sequence",
        vr: :SQ
      },
      0x9826 => %{
        keyword: :ExcitationWavelength,
        name: "Excitation Wavelength",
        vr: :FD
      },
      0x9828 => %{
        keyword: :IlluminationTranslationFlag,
        name: "Illumination Translation Flag",
        vr: :CS
      },
      0x9829 => %{
        keyword: :AcousticCouplingMediumFlag,
        name: "Acoustic Coupling Medium Flag",
        vr: :CS
      },
      0x982A => %{
        keyword: :AcousticCouplingMediumCodeSequence,
        name: "Acoustic Coupling Medium Code Sequence",
        vr: :SQ
      },
      0x982B => %{
        keyword: :AcousticCouplingMediumTemperature,
        name: "Acoustic Coupling Medium Temperature",
        vr: :FD
      },
      0x982C => %{
        keyword: :TransducerResponseSequence,
        name: "Transducer Response Sequence",
        vr: :SQ
      },
      0x982D => %{
        keyword: :CenterFrequency,
        name: "Center Frequency",
        vr: :FD
      },
      0x982E => %{
        keyword: :FractionalBandwidth,
        name: "Fractional Bandwidth",
        vr: :FD
      },
      0x982F => %{
        keyword: :LowerCutoffFrequency,
        name: "Lower Cutoff Frequency",
        vr: :FD
      },
      0x9830 => %{
        keyword: :UpperCutoffFrequency,
        name: "Upper Cutoff Frequency",
        vr: :FD
      },
      0x9831 => %{
        keyword: :TransducerTechnologySequence,
        name: "Transducer Technology Sequence",
        vr: :SQ
      },
      0x9832 => %{
        keyword: :SoundSpeedCorrectionMechanismCodeSequence,
        name: "Sound Speed Correction Mechanism Code Sequence",
        vr: :SQ
      },
      0x9833 => %{
        keyword: :ObjectSoundSpeed,
        name: "Object Sound Speed",
        vr: :FD
      },
      0x9834 => %{
        keyword: :AcousticCouplingMediumSoundSpeed,
        name: "Acoustic Coupling Medium Sound Speed",
        vr: :FD
      },
      0x9835 => %{
        keyword: :PhotoacousticImageFrameTypeSequence,
        name: "Photoacoustic Image Frame Type Sequence",
        vr: :SQ
      },
      0x9836 => %{
        keyword: :ImageDataTypeCodeSequence,
        name: "Image Data Type Code Sequence",
        vr: :SQ
      },
      0x9900 => %{
        keyword: :ReferenceLocationLabel,
        name: "Reference Location Label",
        vr: :LO
      },
      0x9901 => %{
        keyword: :ReferenceLocationDescription,
        name: "Reference Location Description",
        vr: :UT
      },
      0x9902 => %{
        keyword: :ReferenceBasisCodeSequence,
        name: "Reference Basis Code Sequence",
        vr: :SQ
      },
      0x9903 => %{
        keyword: :ReferenceGeometryCodeSequence,
        name: "Reference Geometry Code Sequence",
        vr: :SQ
      },
      0x9904 => %{
        keyword: :OffsetDistance,
        name: "Offset Distance",
        vr: :DS
      },
      0x9905 => %{
        keyword: :OffsetDirection,
        name: "Offset Direction",
        vr: :CS
      },
      0x9906 => %{
        keyword: :PotentialScheduledProtocolCodeSequence,
        name: "Potential Scheduled Protocol Code Sequence",
        vr: :SQ
      },
      0x9907 => %{
        keyword: :PotentialRequestedProcedureCodeSequence,
        name: "Potential Requested Procedure Code Sequence",
        vr: :SQ
      },
      0x9908 => %{
        keyword: :PotentialReasonsForProcedure,
        name: "Potential Reasons for Procedure",
        vr: :UC
      },
      0x9909 => %{
        keyword: :PotentialReasonsForProcedureCodeSequence,
        name: "Potential Reasons for Procedure Code Sequence",
        vr: :SQ
      },
      0x990A => %{
        keyword: :PotentialDiagnosticTasks,
        name: "Potential Diagnostic Tasks",
        vr: :UC
      },
      0x990B => %{
        keyword: :ContraindicationsCodeSequence,
        name: "Contraindications Code Sequence",
        vr: :SQ
      },
      0x990C => %{
        keyword: :ReferencedDefinedProtocolSequence,
        name: "Referenced Defined Protocol Sequence",
        vr: :SQ
      },
      0x990D => %{
        keyword: :ReferencedPerformedProtocolSequence,
        name: "Referenced Performed Protocol Sequence",
        vr: :SQ
      },
      0x990E => %{
        keyword: :PredecessorProtocolSequence,
        name: "Predecessor Protocol Sequence",
        vr: :SQ
      },
      0x990F => %{
        keyword: :ProtocolPlanningInformation,
        name: "Protocol Planning Information",
        vr: :UT
      },
      0x9910 => %{
        keyword: :ProtocolDesignRationale,
        name: "Protocol Design Rationale",
        vr: :UT
      },
      0x9911 => %{
        keyword: :PatientSpecificationSequence,
        name: "Patient Specification Sequence",
        vr: :SQ
      },
      0x9912 => %{
        keyword: :ModelSpecificationSequence,
        name: "Model Specification Sequence",
        vr: :SQ
      },
      0x9913 => %{
        keyword: :ParametersSpecificationSequence,
        name: "Parameters Specification Sequence",
        vr: :SQ
      },
      0x9914 => %{
        keyword: :InstructionSequence,
        name: "Instruction Sequence",
        vr: :SQ
      },
      0x9915 => %{
        keyword: :InstructionIndex,
        name: "Instruction Index",
        vr: :US
      },
      0x9916 => %{
        keyword: :InstructionText,
        name: "Instruction Text",
        vr: :LO
      },
      0x9917 => %{
        keyword: :InstructionDescription,
        name: "Instruction Description",
        vr: :UT
      },
      0x9918 => %{
        keyword: :InstructionPerformedFlag,
        name: "Instruction Performed Flag",
        vr: :CS
      },
      0x9919 => %{
        keyword: :InstructionPerformedDateTime,
        name: "Instruction Performed DateTime",
        vr: :DT
      },
      0x991A => %{
        keyword: :InstructionPerformanceComment,
        name: "Instruction Performance Comment",
        vr: :UT
      },
      0x991B => %{
        keyword: :PatientPositioningInstructionSequence,
        name: "Patient Positioning Instruction Sequence",
        vr: :SQ
      },
      0x991C => %{
        keyword: :PositioningMethodCodeSequence,
        name: "Positioning Method Code Sequence",
        vr: :SQ
      },
      0x991D => %{
        keyword: :PositioningLandmarkSequence,
        name: "Positioning Landmark Sequence",
        vr: :SQ
      },
      0x991E => %{
        keyword: :TargetFrameOfReferenceUID,
        name: "Target Frame of Reference UID",
        vr: :UI
      },
      0x991F => %{
        keyword: :AcquisitionProtocolElementSpecificationSequence,
        name: "Acquisition Protocol Element Specification Sequence",
        vr: :SQ
      },
      0x9920 => %{
        keyword: :AcquisitionProtocolElementSequence,
        name: "Acquisition Protocol Element Sequence",
        vr: :SQ
      },
      0x9921 => %{
        keyword: :ProtocolElementNumber,
        name: "Protocol Element Number",
        vr: :US
      },
      0x9922 => %{
        keyword: :ProtocolElementName,
        name: "Protocol Element Name",
        vr: :LO
      },
      0x9923 => %{
        keyword: :ProtocolElementCharacteristicsSummary,
        name: "Protocol Element Characteristics Summary",
        vr: :UT
      },
      0x9924 => %{
        keyword: :ProtocolElementPurpose,
        name: "Protocol Element Purpose",
        vr: :UT
      },
      0x9930 => %{
        keyword: :AcquisitionMotion,
        name: "Acquisition Motion",
        vr: :CS
      },
      0x9931 => %{
        keyword: :AcquisitionStartLocationSequence,
        name: "Acquisition Start Location Sequence",
        vr: :SQ
      },
      0x9932 => %{
        keyword: :AcquisitionEndLocationSequence,
        name: "Acquisition End Location Sequence",
        vr: :SQ
      },
      0x9933 => %{
        keyword: :ReconstructionProtocolElementSpecificationSequence,
        name: "Reconstruction Protocol Element Specification Sequence",
        vr: :SQ
      },
      0x9934 => %{
        keyword: :ReconstructionProtocolElementSequence,
        name: "Reconstruction Protocol Element Sequence",
        vr: :SQ
      },
      0x9935 => %{
        keyword: :StorageProtocolElementSpecificationSequence,
        name: "Storage Protocol Element Specification Sequence",
        vr: :SQ
      },
      0x9936 => %{
        keyword: :StorageProtocolElementSequence,
        name: "Storage Protocol Element Sequence",
        vr: :SQ
      },
      0x9937 => %{
        keyword: :RequestedSeriesDescription,
        name: "Requested Series Description",
        vr: :LO
      },
      0x9938 => %{
        keyword: :SourceAcquisitionProtocolElementNumber,
        name: "Source Acquisition Protocol Element Number",
        vr: :US
      },
      0x9939 => %{
        keyword: :SourceAcquisitionBeamNumber,
        name: "Source Acquisition Beam Number",
        vr: :US
      },
      0x993A => %{
        keyword: :SourceReconstructionProtocolElementNumber,
        name: "Source Reconstruction Protocol Element Number",
        vr: :US
      },
      0x993B => %{
        keyword: :ReconstructionStartLocationSequence,
        name: "Reconstruction Start Location Sequence",
        vr: :SQ
      },
      0x993C => %{
        keyword: :ReconstructionEndLocationSequence,
        name: "Reconstruction End Location Sequence",
        vr: :SQ
      },
      0x993D => %{
        keyword: :ReconstructionAlgorithmSequence,
        name: "Reconstruction Algorithm Sequence",
        vr: :SQ
      },
      0x993E => %{
        keyword: :ReconstructionTargetCenterLocationSequence,
        name: "Reconstruction Target Center Location Sequence",
        vr: :SQ
      },
      0x9941 => %{
        keyword: :ImageFilterDescription,
        name: "Image Filter Description",
        vr: :UT
      },
      0x9942 => %{
        keyword: :CTDIvolNotificationTrigger,
        name: "CTDIvol Notification Trigger",
        vr: :FD
      },
      0x9943 => %{
        keyword: :DLPNotificationTrigger,
        name: "DLP Notification Trigger",
        vr: :FD
      },
      0x9944 => %{
        keyword: :AutoKVPSelectionType,
        name: "Auto KVP Selection Type",
        vr: :CS
      },
      0x9945 => %{
        keyword: :AutoKVPUpperBound,
        name: "Auto KVP Upper Bound",
        vr: :FD
      },
      0x9946 => %{
        keyword: :AutoKVPLowerBound,
        name: "Auto KVP Lower Bound",
        vr: :FD
      },
      0x9947 => %{
        keyword: :ProtocolDefinedPatientPosition,
        name: "Protocol Defined Patient Position",
        vr: :CS
      },
      0xA001 => %{
        keyword: :ContributingEquipmentSequence,
        name: "Contributing Equipment Sequence",
        vr: :SQ
      },
      0xA002 => %{
        keyword: :ContributionDateTime,
        name: "Contribution DateTime",
        vr: :DT
      },
      0xA003 => %{
        keyword: :ContributionDescription,
        name: "Contribution Description",
        vr: :ST
      }
    },
    0x0020 => %{
      0x000D => %{
        keyword: :StudyInstanceUID,
        name: "Study Instance UID",
        vr: :UI
      },
      0x000E => %{
        keyword: :SeriesInstanceUID,
        name: "Series Instance UID",
        vr: :UI
      },
      0x0010 => %{
        keyword: :StudyID,
        name: "Study ID",
        vr: :SH
      },
      0x0011 => %{
        keyword: :SeriesNumber,
        name: "Series Number",
        vr: :IS
      },
      0x0012 => %{
        keyword: :AcquisitionNumber,
        name: "Acquisition Number",
        vr: :IS
      },
      0x0013 => %{
        keyword: :InstanceNumber,
        name: "Instance Number",
        vr: :IS
      },
      0x0014 => %{
        keyword: :IsotopeNumber,
        name: "Isotope Number",
        vr: :IS
      },
      0x0015 => %{
        keyword: :PhaseNumber,
        name: "Phase Number",
        vr: :IS
      },
      0x0016 => %{
        keyword: :IntervalNumber,
        name: "Interval Number",
        vr: :IS
      },
      0x0017 => %{
        keyword: :TimeSlotNumber,
        name: "Time Slot Number",
        vr: :IS
      },
      0x0018 => %{
        keyword: :AngleNumber,
        name: "Angle Number",
        vr: :IS
      },
      0x0019 => %{
        keyword: :ItemNumber,
        name: "Item Number",
        vr: :IS
      },
      0x0020 => %{
        keyword: :PatientOrientation,
        name: "Patient Orientation",
        vr: :CS
      },
      0x0022 => %{
        keyword: :OverlayNumber,
        name: "Overlay Number",
        vr: :IS
      },
      0x0024 => %{
        keyword: :CurveNumber,
        name: "Curve Number",
        vr: :IS
      },
      0x0026 => %{
        keyword: :LUTNumber,
        name: "LUT Number",
        vr: :IS
      },
      0x0027 => %{
        keyword: :PyramidLabel,
        name: "Pyramid Label",
        vr: :LO
      },
      0x0030 => %{
        keyword: :ImagePosition,
        name: "Image Position",
        vr: :DS
      },
      0x0032 => %{
        keyword: :ImagePositionPatient,
        name: "Image Position (Patient)",
        vr: :DS
      },
      0x0035 => %{
        keyword: :ImageOrientation,
        name: "Image Orientation",
        vr: :DS
      },
      0x0037 => %{
        keyword: :ImageOrientationPatient,
        name: "Image Orientation (Patient)",
        vr: :DS
      },
      0x0050 => %{
        keyword: :Location,
        name: "Location",
        vr: :DS
      },
      0x0052 => %{
        keyword: :FrameOfReferenceUID,
        name: "Frame of Reference UID",
        vr: :UI
      },
      0x0060 => %{
        keyword: :Laterality,
        name: "Laterality",
        vr: :CS
      },
      0x0062 => %{
        keyword: :ImageLaterality,
        name: "Image Laterality",
        vr: :CS
      },
      0x0070 => %{
        keyword: :ImageGeometryType,
        name: "Image Geometry Type",
        vr: :LO
      },
      0x0080 => %{
        keyword: :MaskingImage,
        name: "Masking Image",
        vr: :CS
      },
      0x00AA => %{
        keyword: :ReportNumber,
        name: "Report Number",
        vr: :IS
      },
      0x0100 => %{
        keyword: :TemporalPositionIdentifier,
        name: "Temporal Position Identifier",
        vr: :IS
      },
      0x0105 => %{
        keyword: :NumberOfTemporalPositions,
        name: "Number of Temporal Positions",
        vr: :IS
      },
      0x0110 => %{
        keyword: :TemporalResolution,
        name: "Temporal Resolution",
        vr: :DS
      },
      0x0200 => %{
        keyword: :SynchronizationFrameOfReferenceUID,
        name: "Synchronization Frame of Reference UID",
        vr: :UI
      },
      0x0242 => %{
        keyword: :SOPInstanceUIDOfConcatenationSource,
        name: "SOP Instance UID of Concatenation Source",
        vr: :UI
      },
      0x1000 => %{
        keyword: :SeriesInStudy,
        name: "Series in Study",
        vr: :IS
      },
      0x1001 => %{
        keyword: :AcquisitionsInSeries,
        name: "Acquisitions in Series",
        vr: :IS
      },
      0x1002 => %{
        keyword: :ImagesInAcquisition,
        name: "Images in Acquisition",
        vr: :IS
      },
      0x1003 => %{
        keyword: :ImagesInSeries,
        name: "Images in Series",
        vr: :IS
      },
      0x1004 => %{
        keyword: :AcquisitionsInStudy,
        name: "Acquisitions in Study",
        vr: :IS
      },
      0x1005 => %{
        keyword: :ImagesInStudy,
        name: "Images in Study",
        vr: :IS
      },
      0x1020 => %{
        keyword: :Reference,
        name: "Reference",
        vr: :LO
      },
      0x103F => %{
        keyword: :TargetPositionReferenceIndicator,
        name: "Target Position Reference Indicator",
        vr: :LO
      },
      0x1040 => %{
        keyword: :PositionReferenceIndicator,
        name: "Position Reference Indicator",
        vr: :LO
      },
      0x1041 => %{
        keyword: :SliceLocation,
        name: "Slice Location",
        vr: :DS
      },
      0x1070 => %{
        keyword: :OtherStudyNumbers,
        name: "Other Study Numbers",
        vr: :IS
      },
      0x1200 => %{
        keyword: :NumberOfPatientRelatedStudies,
        name: "Number of Patient Related Studies",
        vr: :IS
      },
      0x1202 => %{
        keyword: :NumberOfPatientRelatedSeries,
        name: "Number of Patient Related Series",
        vr: :IS
      },
      0x1204 => %{
        keyword: :NumberOfPatientRelatedInstances,
        name: "Number of Patient Related Instances",
        vr: :IS
      },
      0x1206 => %{
        keyword: :NumberOfStudyRelatedSeries,
        name: "Number of Study Related Series",
        vr: :IS
      },
      0x1208 => %{
        keyword: :NumberOfStudyRelatedInstances,
        name: "Number of Study Related Instances",
        vr: :IS
      },
      0x1209 => %{
        keyword: :NumberOfSeriesRelatedInstances,
        name: "Number of Series Related Instances",
        vr: :IS
      },
      0x3100 => %{
        keyword: :SourceImageIDs,
        name: "Source Image IDs",
        vr: :CS
      },
      0x3401 => %{
        keyword: :ModifyingDeviceID,
        name: "Modifying Device ID",
        vr: :CS
      },
      0x3402 => %{
        keyword: :ModifiedImageID,
        name: "Modified Image ID",
        vr: :CS
      },
      0x3403 => %{
        keyword: :ModifiedImageDate,
        name: "Modified Image Date",
        vr: :DA
      },
      0x3404 => %{
        keyword: :ModifyingDeviceManufacturer,
        name: "Modifying Device Manufacturer",
        vr: :LO
      },
      0x3405 => %{
        keyword: :ModifiedImageTime,
        name: "Modified Image Time",
        vr: :TM
      },
      0x3406 => %{
        keyword: :ModifiedImageDescription,
        name: "Modified Image Description",
        vr: :LO
      },
      0x4000 => %{
        keyword: :ImageComments,
        name: "Image Comments",
        vr: :LT
      },
      0x5000 => %{
        keyword: :OriginalImageIdentification,
        name: "Original Image Identification",
        vr: :AT
      },
      0x5002 => %{
        keyword: :OriginalImageIdentificationNomenclature,
        name: "Original Image Identification Nomenclature",
        vr: :LO
      },
      0x9056 => %{
        keyword: :StackID,
        name: "Stack ID",
        vr: :SH
      },
      0x9057 => %{
        keyword: :InStackPositionNumber,
        name: "In-Stack Position Number",
        vr: :UL
      },
      0x9071 => %{
        keyword: :FrameAnatomySequence,
        name: "Frame Anatomy Sequence",
        vr: :SQ
      },
      0x9072 => %{
        keyword: :FrameLaterality,
        name: "Frame Laterality",
        vr: :CS
      },
      0x9111 => %{
        keyword: :FrameContentSequence,
        name: "Frame Content Sequence",
        vr: :SQ
      },
      0x9113 => %{
        keyword: :PlanePositionSequence,
        name: "Plane Position Sequence",
        vr: :SQ
      },
      0x9116 => %{
        keyword: :PlaneOrientationSequence,
        name: "Plane Orientation Sequence",
        vr: :SQ
      },
      0x9128 => %{
        keyword: :TemporalPositionIndex,
        name: "Temporal Position Index",
        vr: :UL
      },
      0x9153 => %{
        keyword: :NominalCardiacTriggerDelayTime,
        name: "Nominal Cardiac Trigger Delay Time",
        vr: :FD
      },
      0x9154 => %{
        keyword: :NominalCardiacTriggerTimePriorToRPeak,
        name: "Nominal Cardiac Trigger Time Prior To R-Peak",
        vr: :FL
      },
      0x9155 => %{
        keyword: :ActualCardiacTriggerTimePriorToRPeak,
        name: "Actual Cardiac Trigger Time Prior To R-Peak",
        vr: :FL
      },
      0x9156 => %{
        keyword: :FrameAcquisitionNumber,
        name: "Frame Acquisition Number",
        vr: :US
      },
      0x9157 => %{
        keyword: :DimensionIndexValues,
        name: "Dimension Index Values",
        vr: :UL
      },
      0x9158 => %{
        keyword: :FrameComments,
        name: "Frame Comments",
        vr: :LT
      },
      0x9161 => %{
        keyword: :ConcatenationUID,
        name: "Concatenation UID",
        vr: :UI
      },
      0x9162 => %{
        keyword: :InConcatenationNumber,
        name: "In-concatenation Number",
        vr: :US
      },
      0x9163 => %{
        keyword: :InConcatenationTotalNumber,
        name: "In-concatenation Total Number",
        vr: :US
      },
      0x9164 => %{
        keyword: :DimensionOrganizationUID,
        name: "Dimension Organization UID",
        vr: :UI
      },
      0x9165 => %{
        keyword: :DimensionIndexPointer,
        name: "Dimension Index Pointer",
        vr: :AT
      },
      0x9167 => %{
        keyword: :FunctionalGroupPointer,
        name: "Functional Group Pointer",
        vr: :AT
      },
      0x9170 => %{
        keyword: :UnassignedSharedConvertedAttributesSequence,
        name: "Unassigned Shared Converted Attributes Sequence",
        vr: :SQ
      },
      0x9171 => %{
        keyword: :UnassignedPerFrameConvertedAttributesSequence,
        name: "Unassigned Per-Frame Converted Attributes Sequence",
        vr: :SQ
      },
      0x9172 => %{
        keyword: :ConversionSourceAttributesSequence,
        name: "Conversion Source Attributes Sequence",
        vr: :SQ
      },
      0x9213 => %{
        keyword: :DimensionIndexPrivateCreator,
        name: "Dimension Index Private Creator",
        vr: :LO
      },
      0x9221 => %{
        keyword: :DimensionOrganizationSequence,
        name: "Dimension Organization Sequence",
        vr: :SQ
      },
      0x9222 => %{
        keyword: :DimensionIndexSequence,
        name: "Dimension Index Sequence",
        vr: :SQ
      },
      0x9228 => %{
        keyword: :ConcatenationFrameOffsetNumber,
        name: "Concatenation Frame Offset Number",
        vr: :UL
      },
      0x9238 => %{
        keyword: :FunctionalGroupPrivateCreator,
        name: "Functional Group Private Creator",
        vr: :LO
      },
      0x9241 => %{
        keyword: :NominalPercentageOfCardiacPhase,
        name: "Nominal Percentage of Cardiac Phase",
        vr: :FL
      },
      0x9245 => %{
        keyword: :NominalPercentageOfRespiratoryPhase,
        name: "Nominal Percentage of Respiratory Phase",
        vr: :FL
      },
      0x9246 => %{
        keyword: :StartingRespiratoryAmplitude,
        name: "Starting Respiratory Amplitude",
        vr: :FL
      },
      0x9247 => %{
        keyword: :StartingRespiratoryPhase,
        name: "Starting Respiratory Phase",
        vr: :CS
      },
      0x9248 => %{
        keyword: :EndingRespiratoryAmplitude,
        name: "Ending Respiratory Amplitude",
        vr: :FL
      },
      0x9249 => %{
        keyword: :EndingRespiratoryPhase,
        name: "Ending Respiratory Phase",
        vr: :CS
      },
      0x9250 => %{
        keyword: :RespiratoryTriggerType,
        name: "Respiratory Trigger Type",
        vr: :CS
      },
      0x9251 => %{
        keyword: :RRIntervalTimeNominal,
        name: "R-R Interval Time Nominal",
        vr: :FD
      },
      0x9252 => %{
        keyword: :ActualCardiacTriggerDelayTime,
        name: "Actual Cardiac Trigger Delay Time",
        vr: :FD
      },
      0x9253 => %{
        keyword: :RespiratorySynchronizationSequence,
        name: "Respiratory Synchronization Sequence",
        vr: :SQ
      },
      0x9254 => %{
        keyword: :RespiratoryIntervalTime,
        name: "Respiratory Interval Time",
        vr: :FD
      },
      0x9255 => %{
        keyword: :NominalRespiratoryTriggerDelayTime,
        name: "Nominal Respiratory Trigger Delay Time",
        vr: :FD
      },
      0x9256 => %{
        keyword: :RespiratoryTriggerDelayThreshold,
        name: "Respiratory Trigger Delay Threshold",
        vr: :FD
      },
      0x9257 => %{
        keyword: :ActualRespiratoryTriggerDelayTime,
        name: "Actual Respiratory Trigger Delay Time",
        vr: :FD
      },
      0x9301 => %{
        keyword: :ImagePositionVolume,
        name: "Image Position (Volume)",
        vr: :FD
      },
      0x9302 => %{
        keyword: :ImageOrientationVolume,
        name: "Image Orientation (Volume)",
        vr: :FD
      },
      0x9307 => %{
        keyword: :UltrasoundAcquisitionGeometry,
        name: "Ultrasound Acquisition Geometry",
        vr: :CS
      },
      0x9308 => %{
        keyword: :ApexPosition,
        name: "Apex Position",
        vr: :FD
      },
      0x9309 => %{
        keyword: :VolumeToTransducerMappingMatrix,
        name: "Volume to Transducer Mapping Matrix",
        vr: :FD
      },
      0x930A => %{
        keyword: :VolumeToTableMappingMatrix,
        name: "Volume to Table Mapping Matrix",
        vr: :FD
      },
      0x930B => %{
        keyword: :VolumeToTransducerRelationship,
        name: "Volume to Transducer Relationship",
        vr: :CS
      },
      0x930C => %{
        keyword: :PatientFrameOfReferenceSource,
        name: "Patient Frame of Reference Source",
        vr: :CS
      },
      0x930D => %{
        keyword: :TemporalPositionTimeOffset,
        name: "Temporal Position Time Offset",
        vr: :FD
      },
      0x930E => %{
        keyword: :PlanePositionVolumeSequence,
        name: "Plane Position (Volume) Sequence",
        vr: :SQ
      },
      0x930F => %{
        keyword: :PlaneOrientationVolumeSequence,
        name: "Plane Orientation (Volume) Sequence",
        vr: :SQ
      },
      0x9310 => %{
        keyword: :TemporalPositionSequence,
        name: "Temporal Position Sequence",
        vr: :SQ
      },
      0x9311 => %{
        keyword: :DimensionOrganizationType,
        name: "Dimension Organization Type",
        vr: :CS
      },
      0x9312 => %{
        keyword: :VolumeFrameOfReferenceUID,
        name: "Volume Frame of Reference UID",
        vr: :UI
      },
      0x9313 => %{
        keyword: :TableFrameOfReferenceUID,
        name: "Table Frame of Reference UID",
        vr: :UI
      },
      0x9421 => %{
        keyword: :DimensionDescriptionLabel,
        name: "Dimension Description Label",
        vr: :LO
      },
      0x9450 => %{
        keyword: :PatientOrientationInFrameSequence,
        name: "Patient Orientation in Frame Sequence",
        vr: :SQ
      },
      0x9453 => %{
        keyword: :FrameLabel,
        name: "Frame Label",
        vr: :LO
      },
      0x9518 => %{
        keyword: :AcquisitionIndex,
        name: "Acquisition Index",
        vr: :US
      },
      0x9529 => %{
        keyword: :ContributingSOPInstancesReferenceSequence,
        name: "Contributing SOP Instances Reference Sequence",
        vr: :SQ
      },
      0x9536 => %{
        keyword: :ReconstructionIndex,
        name: "Reconstruction Index",
        vr: :US
      }
    },
    0x0022 => %{
      0x0001 => %{
        keyword: :LightPathFilterPassThroughWavelength,
        name: "Light Path Filter Pass-Through Wavelength",
        vr: :US
      },
      0x0002 => %{
        keyword: :LightPathFilterPassBand,
        name: "Light Path Filter Pass Band",
        vr: :US
      },
      0x0003 => %{
        keyword: :ImagePathFilterPassThroughWavelength,
        name: "Image Path Filter Pass-Through Wavelength",
        vr: :US
      },
      0x0004 => %{
        keyword: :ImagePathFilterPassBand,
        name: "Image Path Filter Pass Band",
        vr: :US
      },
      0x0005 => %{
        keyword: :PatientEyeMovementCommanded,
        name: "Patient Eye Movement Commanded",
        vr: :CS
      },
      0x0006 => %{
        keyword: :PatientEyeMovementCommandCodeSequence,
        name: "Patient Eye Movement Command Code Sequence",
        vr: :SQ
      },
      0x0007 => %{
        keyword: :SphericalLensPower,
        name: "Spherical Lens Power",
        vr: :FL
      },
      0x0008 => %{
        keyword: :CylinderLensPower,
        name: "Cylinder Lens Power",
        vr: :FL
      },
      0x0009 => %{
        keyword: :CylinderAxis,
        name: "Cylinder Axis",
        vr: :FL
      },
      0x000A => %{
        keyword: :EmmetropicMagnification,
        name: "Emmetropic Magnification",
        vr: :FL
      },
      0x000B => %{
        keyword: :IntraOcularPressure,
        name: "Intra Ocular Pressure",
        vr: :FL
      },
      0x000C => %{
        keyword: :HorizontalFieldOfView,
        name: "Horizontal Field of View",
        vr: :FL
      },
      0x000D => %{
        keyword: :PupilDilated,
        name: "Pupil Dilated",
        vr: :CS
      },
      0x000E => %{
        keyword: :DegreeOfDilation,
        name: "Degree of Dilation",
        vr: :FL
      },
      0x000F => %{
        keyword: :VertexDistance,
        name: "Vertex Distance",
        vr: :FD
      },
      0x0010 => %{
        keyword: :StereoBaselineAngle,
        name: "Stereo Baseline Angle",
        vr: :FL
      },
      0x0011 => %{
        keyword: :StereoBaselineDisplacement,
        name: "Stereo Baseline Displacement",
        vr: :FL
      },
      0x0012 => %{
        keyword: :StereoHorizontalPixelOffset,
        name: "Stereo Horizontal Pixel Offset",
        vr: :FL
      },
      0x0013 => %{
        keyword: :StereoVerticalPixelOffset,
        name: "Stereo Vertical Pixel Offset",
        vr: :FL
      },
      0x0014 => %{
        keyword: :StereoRotation,
        name: "Stereo Rotation",
        vr: :FL
      },
      0x0015 => %{
        keyword: :AcquisitionDeviceTypeCodeSequence,
        name: "Acquisition Device Type Code Sequence",
        vr: :SQ
      },
      0x0016 => %{
        keyword: :IlluminationTypeCodeSequence,
        name: "Illumination Type Code Sequence",
        vr: :SQ
      },
      0x0017 => %{
        keyword: :LightPathFilterTypeStackCodeSequence,
        name: "Light Path Filter Type Stack Code Sequence",
        vr: :SQ
      },
      0x0018 => %{
        keyword: :ImagePathFilterTypeStackCodeSequence,
        name: "Image Path Filter Type Stack Code Sequence",
        vr: :SQ
      },
      0x0019 => %{
        keyword: :LensesCodeSequence,
        name: "Lenses Code Sequence",
        vr: :SQ
      },
      0x001A => %{
        keyword: :ChannelDescriptionCodeSequence,
        name: "Channel Description Code Sequence",
        vr: :SQ
      },
      0x001B => %{
        keyword: :RefractiveStateSequence,
        name: "Refractive State Sequence",
        vr: :SQ
      },
      0x001C => %{
        keyword: :MydriaticAgentCodeSequence,
        name: "Mydriatic Agent Code Sequence",
        vr: :SQ
      },
      0x001D => %{
        keyword: :RelativeImagePositionCodeSequence,
        name: "Relative Image Position Code Sequence",
        vr: :SQ
      },
      0x001E => %{
        keyword: :CameraAngleOfView,
        name: "Camera Angle of View",
        vr: :FL
      },
      0x0020 => %{
        keyword: :StereoPairsSequence,
        name: "Stereo Pairs Sequence",
        vr: :SQ
      },
      0x0021 => %{
        keyword: :LeftImageSequence,
        name: "Left Image Sequence",
        vr: :SQ
      },
      0x0022 => %{
        keyword: :RightImageSequence,
        name: "Right Image Sequence",
        vr: :SQ
      },
      0x0028 => %{
        keyword: :StereoPairsPresent,
        name: "Stereo Pairs Present",
        vr: :CS
      },
      0x0030 => %{
        keyword: :AxialLengthOfTheEye,
        name: "Axial Length of the Eye",
        vr: :FL
      },
      0x0031 => %{
        keyword: :OphthalmicFrameLocationSequence,
        name: "Ophthalmic Frame Location Sequence",
        vr: :SQ
      },
      0x0032 => %{
        keyword: :ReferenceCoordinates,
        name: "Reference Coordinates",
        vr: :FL
      },
      0x0035 => %{
        keyword: :DepthSpatialResolution,
        name: "Depth Spatial Resolution",
        vr: :FL
      },
      0x0036 => %{
        keyword: :MaximumDepthDistortion,
        name: "Maximum Depth Distortion",
        vr: :FL
      },
      0x0037 => %{
        keyword: :AlongScanSpatialResolution,
        name: "Along-scan Spatial Resolution",
        vr: :FL
      },
      0x0038 => %{
        keyword: :MaximumAlongScanDistortion,
        name: "Maximum Along-scan Distortion",
        vr: :FL
      },
      0x0039 => %{
        keyword: :OphthalmicImageOrientation,
        name: "Ophthalmic Image Orientation",
        vr: :CS
      },
      0x0041 => %{
        keyword: :DepthOfTransverseImage,
        name: "Depth of Transverse Image",
        vr: :FL
      },
      0x0042 => %{
        keyword: :MydriaticAgentConcentrationUnitsSequence,
        name: "Mydriatic Agent Concentration Units Sequence",
        vr: :SQ
      },
      0x0048 => %{
        keyword: :AcrossScanSpatialResolution,
        name: "Across-scan Spatial Resolution",
        vr: :FL
      },
      0x0049 => %{
        keyword: :MaximumAcrossScanDistortion,
        name: "Maximum Across-scan Distortion",
        vr: :FL
      },
      0x004E => %{
        keyword: :MydriaticAgentConcentration,
        name: "Mydriatic Agent Concentration",
        vr: :DS
      },
      0x0055 => %{
        keyword: :IlluminationWaveLength,
        name: "Illumination Wave Length",
        vr: :FL
      },
      0x0056 => %{
        keyword: :IlluminationPower,
        name: "Illumination Power",
        vr: :FL
      },
      0x0057 => %{
        keyword: :IlluminationBandwidth,
        name: "Illumination Bandwidth",
        vr: :FL
      },
      0x0058 => %{
        keyword: :MydriaticAgentSequence,
        name: "Mydriatic Agent Sequence",
        vr: :SQ
      },
      0x1007 => %{
        keyword: :OphthalmicAxialMeasurementsRightEyeSequence,
        name: "Ophthalmic Axial Measurements Right Eye Sequence",
        vr: :SQ
      },
      0x1008 => %{
        keyword: :OphthalmicAxialMeasurementsLeftEyeSequence,
        name: "Ophthalmic Axial Measurements Left Eye Sequence",
        vr: :SQ
      },
      0x1009 => %{
        keyword: :OphthalmicAxialMeasurementsDeviceType,
        name: "Ophthalmic Axial Measurements Device Type",
        vr: :CS
      },
      0x1010 => %{
        keyword: :OphthalmicAxialLengthMeasurementsType,
        name: "Ophthalmic Axial Length Measurements Type",
        vr: :CS
      },
      0x1012 => %{
        keyword: :OphthalmicAxialLengthSequence,
        name: "Ophthalmic Axial Length Sequence",
        vr: :SQ
      },
      0x1019 => %{
        keyword: :OphthalmicAxialLength,
        name: "Ophthalmic Axial Length",
        vr: :FL
      },
      0x1024 => %{
        keyword: :LensStatusCodeSequence,
        name: "Lens Status Code Sequence",
        vr: :SQ
      },
      0x1025 => %{
        keyword: :VitreousStatusCodeSequence,
        name: "Vitreous Status Code Sequence",
        vr: :SQ
      },
      0x1028 => %{
        keyword: :IOLFormulaCodeSequence,
        name: "IOL Formula Code Sequence",
        vr: :SQ
      },
      0x1029 => %{
        keyword: :IOLFormulaDetail,
        name: "IOL Formula Detail",
        vr: :LO
      },
      0x1033 => %{
        keyword: :KeratometerIndex,
        name: "Keratometer Index",
        vr: :FL
      },
      0x1035 => %{
        keyword: :SourceOfOphthalmicAxialLengthCodeSequence,
        name: "Source of Ophthalmic Axial Length Code Sequence",
        vr: :SQ
      },
      0x1036 => %{
        keyword: :SourceOfCornealSizeDataCodeSequence,
        name: "Source of Corneal Size Data Code Sequence",
        vr: :SQ
      },
      0x1037 => %{
        keyword: :TargetRefraction,
        name: "Target Refraction",
        vr: :FL
      },
      0x1039 => %{
        keyword: :RefractiveProcedureOccurred,
        name: "Refractive Procedure Occurred",
        vr: :CS
      },
      0x1040 => %{
        keyword: :RefractiveSurgeryTypeCodeSequence,
        name: "Refractive Surgery Type Code Sequence",
        vr: :SQ
      },
      0x1044 => %{
        keyword: :OphthalmicUltrasoundMethodCodeSequence,
        name: "Ophthalmic Ultrasound Method Code Sequence",
        vr: :SQ
      },
      0x1045 => %{
        keyword: :SurgicallyInducedAstigmatismSequence,
        name: "Surgically Induced Astigmatism Sequence",
        vr: :SQ
      },
      0x1046 => %{
        keyword: :TypeOfOpticalCorrection,
        name: "Type of Optical Correction",
        vr: :CS
      },
      0x1047 => %{
        keyword: :ToricIOLPowerSequence,
        name: "Toric IOL Power Sequence",
        vr: :SQ
      },
      0x1048 => %{
        keyword: :PredictedToricErrorSequence,
        name: "Predicted Toric Error Sequence",
        vr: :SQ
      },
      0x1049 => %{
        keyword: :PreSelectedForImplantation,
        name: "Pre-Selected for Implantation",
        vr: :CS
      },
      0x104A => %{
        keyword: :ToricIOLPowerForExactEmmetropiaSequence,
        name: "Toric IOL Power for Exact Emmetropia Sequence",
        vr: :SQ
      },
      0x104B => %{
        keyword: :ToricIOLPowerForExactTargetRefractionSequence,
        name: "Toric IOL Power for Exact Target Refraction Sequence",
        vr: :SQ
      },
      0x1050 => %{
        keyword: :OphthalmicAxialLengthMeasurementsSequence,
        name: "Ophthalmic Axial Length Measurements Sequence",
        vr: :SQ
      },
      0x1053 => %{
        keyword: :IOLPower,
        name: "IOL Power",
        vr: :FL
      },
      0x1054 => %{
        keyword: :PredictedRefractiveError,
        name: "Predicted Refractive Error",
        vr: :FL
      },
      0x1059 => %{
        keyword: :OphthalmicAxialLengthVelocity,
        name: "Ophthalmic Axial Length Velocity",
        vr: :FL
      },
      0x1065 => %{
        keyword: :LensStatusDescription,
        name: "Lens Status Description",
        vr: :LO
      },
      0x1066 => %{
        keyword: :VitreousStatusDescription,
        name: "Vitreous Status Description",
        vr: :LO
      },
      0x1090 => %{
        keyword: :IOLPowerSequence,
        name: "IOL Power Sequence",
        vr: :SQ
      },
      0x1092 => %{
        keyword: :LensConstantSequence,
        name: "Lens Constant Sequence",
        vr: :SQ
      },
      0x1093 => %{
        keyword: :IOLManufacturer,
        name: "IOL Manufacturer",
        vr: :LO
      },
      0x1094 => %{
        keyword: :LensConstantDescription,
        name: "Lens Constant Description",
        vr: :LO
      },
      0x1095 => %{
        keyword: :ImplantName,
        name: "Implant Name",
        vr: :LO
      },
      0x1096 => %{
        keyword: :KeratometryMeasurementTypeCodeSequence,
        name: "Keratometry Measurement Type Code Sequence",
        vr: :SQ
      },
      0x1097 => %{
        keyword: :ImplantPartNumber,
        name: "Implant Part Number",
        vr: :LO
      },
      0x1100 => %{
        keyword: :ReferencedOphthalmicAxialMeasurementsSequence,
        name: "Referenced Ophthalmic Axial Measurements Sequence",
        vr: :SQ
      },
      0x1101 => %{
        keyword: :OphthalmicAxialLengthMeasurementsSegmentNameCodeSequence,
        name: "Ophthalmic Axial Length Measurements Segment Name Code Sequence",
        vr: :SQ
      },
      0x1103 => %{
        keyword: :RefractiveErrorBeforeRefractiveSurgeryCodeSequence,
        name: "Refractive Error Before Refractive Surgery Code Sequence",
        vr: :SQ
      },
      0x1121 => %{
        keyword: :IOLPowerForExactEmmetropia,
        name: "IOL Power For Exact Emmetropia",
        vr: :FL
      },
      0x1122 => %{
        keyword: :IOLPowerForExactTargetRefraction,
        name: "IOL Power For Exact Target Refraction",
        vr: :FL
      },
      0x1125 => %{
        keyword: :AnteriorChamberDepthDefinitionCodeSequence,
        name: "Anterior Chamber Depth Definition Code Sequence",
        vr: :SQ
      },
      0x1127 => %{
        keyword: :LensThicknessSequence,
        name: "Lens Thickness Sequence",
        vr: :SQ
      },
      0x1128 => %{
        keyword: :AnteriorChamberDepthSequence,
        name: "Anterior Chamber Depth Sequence",
        vr: :SQ
      },
      0x112A => %{
        keyword: :CalculationCommentSequence,
        name: "Calculation Comment Sequence",
        vr: :SQ
      },
      0x112B => %{
        keyword: :CalculationCommentType,
        name: "Calculation Comment Type",
        vr: :CS
      },
      0x112C => %{
        keyword: :CalculationComment,
        name: "Calculation Comment",
        vr: :LT
      },
      0x1130 => %{
        keyword: :LensThickness,
        name: "Lens Thickness",
        vr: :FL
      },
      0x1131 => %{
        keyword: :AnteriorChamberDepth,
        name: "Anterior Chamber Depth",
        vr: :FL
      },
      0x1132 => %{
        keyword: :SourceOfLensThicknessDataCodeSequence,
        name: "Source of Lens Thickness Data Code Sequence",
        vr: :SQ
      },
      0x1133 => %{
        keyword: :SourceOfAnteriorChamberDepthDataCodeSequence,
        name: "Source of Anterior Chamber Depth Data Code Sequence",
        vr: :SQ
      },
      0x1134 => %{
        keyword: :SourceOfRefractiveMeasurementsSequence,
        name: "Source of Refractive Measurements Sequence",
        vr: :SQ
      },
      0x1135 => %{
        keyword: :SourceOfRefractiveMeasurementsCodeSequence,
        name: "Source of Refractive Measurements Code Sequence",
        vr: :SQ
      },
      0x1140 => %{
        keyword: :OphthalmicAxialLengthMeasurementModified,
        name: "Ophthalmic Axial Length Measurement Modified",
        vr: :CS
      },
      0x1150 => %{
        keyword: :OphthalmicAxialLengthDataSourceCodeSequence,
        name: "Ophthalmic Axial Length Data Source Code Sequence",
        vr: :SQ
      },
      0x1153 => %{
        keyword: :OphthalmicAxialLengthAcquisitionMethodCodeSequence,
        name: "Ophthalmic Axial Length Acquisition Method Code Sequence",
        vr: :SQ
      },
      0x1155 => %{
        keyword: :SignalToNoiseRatio,
        name: "Signal to Noise Ratio",
        vr: :FL
      },
      0x1159 => %{
        keyword: :OphthalmicAxialLengthDataSourceDescription,
        name: "Ophthalmic Axial Length Data Source Description",
        vr: :LO
      },
      0x1210 => %{
        keyword: :OphthalmicAxialLengthMeasurementsTotalLengthSequence,
        name: "Ophthalmic Axial Length Measurements Total Length Sequence",
        vr: :SQ
      },
      0x1211 => %{
        keyword: :OphthalmicAxialLengthMeasurementsSegmentalLengthSequence,
        name: "Ophthalmic Axial Length Measurements Segmental Length Sequence",
        vr: :SQ
      },
      0x1212 => %{
        keyword: :OphthalmicAxialLengthMeasurementsLengthSummationSequence,
        name: "Ophthalmic Axial Length Measurements Length Summation Sequence",
        vr: :SQ
      },
      0x1220 => %{
        keyword: :UltrasoundOphthalmicAxialLengthMeasurementsSequence,
        name: "Ultrasound Ophthalmic Axial Length Measurements Sequence",
        vr: :SQ
      },
      0x1225 => %{
        keyword: :OpticalOphthalmicAxialLengthMeasurementsSequence,
        name: "Optical Ophthalmic Axial Length Measurements Sequence",
        vr: :SQ
      },
      0x1230 => %{
        keyword: :UltrasoundSelectedOphthalmicAxialLengthSequence,
        name: "Ultrasound Selected Ophthalmic Axial Length Sequence",
        vr: :SQ
      },
      0x1250 => %{
        keyword: :OphthalmicAxialLengthSelectionMethodCodeSequence,
        name: "Ophthalmic Axial Length Selection Method Code Sequence",
        vr: :SQ
      },
      0x1255 => %{
        keyword: :OpticalSelectedOphthalmicAxialLengthSequence,
        name: "Optical Selected Ophthalmic Axial Length Sequence",
        vr: :SQ
      },
      0x1257 => %{
        keyword: :SelectedSegmentalOphthalmicAxialLengthSequence,
        name: "Selected Segmental Ophthalmic Axial Length Sequence",
        vr: :SQ
      },
      0x1260 => %{
        keyword: :SelectedTotalOphthalmicAxialLengthSequence,
        name: "Selected Total Ophthalmic Axial Length Sequence",
        vr: :SQ
      },
      0x1262 => %{
        keyword: :OphthalmicAxialLengthQualityMetricSequence,
        name: "Ophthalmic Axial Length Quality Metric Sequence",
        vr: :SQ
      },
      0x1265 => %{
        keyword: :OphthalmicAxialLengthQualityMetricTypeCodeSequence,
        name: "Ophthalmic Axial Length Quality Metric Type Code Sequence",
        vr: :SQ
      },
      0x1273 => %{
        keyword: :OphthalmicAxialLengthQualityMetricTypeDescription,
        name: "Ophthalmic Axial Length Quality Metric Type Description",
        vr: :LO
      },
      0x1300 => %{
        keyword: :IntraocularLensCalculationsRightEyeSequence,
        name: "Intraocular Lens Calculations Right Eye Sequence",
        vr: :SQ
      },
      0x1310 => %{
        keyword: :IntraocularLensCalculationsLeftEyeSequence,
        name: "Intraocular Lens Calculations Left Eye Sequence",
        vr: :SQ
      },
      0x1330 => %{
        keyword: :ReferencedOphthalmicAxialLengthMeasurementQCImageSequence,
        name: "Referenced Ophthalmic Axial Length Measurement QC Image Sequence",
        vr: :SQ
      },
      0x1415 => %{
        keyword: :OphthalmicMappingDeviceType,
        name: "Ophthalmic Mapping Device Type",
        vr: :CS
      },
      0x1420 => %{
        keyword: :AcquisitionMethodCodeSequence,
        name: "Acquisition Method Code Sequence",
        vr: :SQ
      },
      0x1423 => %{
        keyword: :AcquisitionMethodAlgorithmSequence,
        name: "Acquisition Method Algorithm Sequence",
        vr: :SQ
      },
      0x1436 => %{
        keyword: :OphthalmicThicknessMapTypeCodeSequence,
        name: "Ophthalmic Thickness Map Type Code Sequence",
        vr: :SQ
      },
      0x1443 => %{
        keyword: :OphthalmicThicknessMappingNormalsSequence,
        name: "Ophthalmic Thickness Mapping Normals Sequence",
        vr: :SQ
      },
      0x1445 => %{
        keyword: :RetinalThicknessDefinitionCodeSequence,
        name: "Retinal Thickness Definition Code Sequence",
        vr: :SQ
      },
      0x1450 => %{
        keyword: :PixelValueMappingToCodedConceptSequence,
        name: "Pixel Value Mapping to Coded Concept Sequence",
        vr: :SQ
      },
      0x1452 => %{
        keyword: :MappedPixelValue,
        name: "Mapped Pixel Value",
        vr: :US
      },
      0x1454 => %{
        keyword: :PixelValueMappingExplanation,
        name: "Pixel Value Mapping Explanation",
        vr: :LO
      },
      0x1458 => %{
        keyword: :OphthalmicThicknessMapQualityThresholdSequence,
        name: "Ophthalmic Thickness Map Quality Threshold Sequence",
        vr: :SQ
      },
      0x1460 => %{
        keyword: :OphthalmicThicknessMapThresholdQualityRating,
        name: "Ophthalmic Thickness Map Threshold Quality Rating",
        vr: :FL
      },
      0x1463 => %{
        keyword: :AnatomicStructureReferencePoint,
        name: "Anatomic Structure Reference Point",
        vr: :FL
      },
      0x1465 => %{
        keyword: :RegistrationToLocalizerSequence,
        name: "Registration to Localizer Sequence",
        vr: :SQ
      },
      0x1466 => %{
        keyword: :RegisteredLocalizerUnits,
        name: "Registered Localizer Units",
        vr: :CS
      },
      0x1467 => %{
        keyword: :RegisteredLocalizerTopLeftHandCorner,
        name: "Registered Localizer Top Left Hand Corner",
        vr: :FL
      },
      0x1468 => %{
        keyword: :RegisteredLocalizerBottomRightHandCorner,
        name: "Registered Localizer Bottom Right Hand Corner",
        vr: :FL
      },
      0x1470 => %{
        keyword: :OphthalmicThicknessMapQualityRatingSequence,
        name: "Ophthalmic Thickness Map Quality Rating Sequence",
        vr: :SQ
      },
      0x1472 => %{
        keyword: :RelevantOPTAttributesSequence,
        name: "Relevant OPT Attributes Sequence",
        vr: :SQ
      },
      0x1512 => %{
        keyword: :TransformationMethodCodeSequence,
        name: "Transformation Method Code Sequence",
        vr: :SQ
      },
      0x1513 => %{
        keyword: :TransformationAlgorithmSequence,
        name: "Transformation Algorithm Sequence",
        vr: :SQ
      },
      0x1515 => %{
        keyword: :OphthalmicAxialLengthMethod,
        name: "Ophthalmic Axial Length Method",
        vr: :CS
      },
      0x1517 => %{
        keyword: :OphthalmicFOV,
        name: "Ophthalmic FOV",
        vr: :FL
      },
      0x1518 => %{
        keyword: :TwoDimensionalToThreeDimensionalMapSequence,
        name: "Two Dimensional to Three Dimensional Map Sequence",
        vr: :SQ
      },
      0x1525 => %{
        keyword: :WideFieldOphthalmicPhotographyQualityRatingSequence,
        name: "Wide Field Ophthalmic Photography Quality Rating Sequence",
        vr: :SQ
      },
      0x1526 => %{
        keyword: :WideFieldOphthalmicPhotographyQualityThresholdSequence,
        name: "Wide Field Ophthalmic Photography Quality Threshold Sequence",
        vr: :SQ
      },
      0x1527 => %{
        keyword: :WideFieldOphthalmicPhotographyThresholdQualityRating,
        name: "Wide Field Ophthalmic Photography Threshold Quality Rating",
        vr: :FL
      },
      0x1528 => %{
        keyword: :XCoordinatesCenterPixelViewAngle,
        name: "X Coordinates Center Pixel View Angle",
        vr: :FL
      },
      0x1529 => %{
        keyword: :YCoordinatesCenterPixelViewAngle,
        name: "Y Coordinates Center Pixel View Angle",
        vr: :FL
      },
      0x1530 => %{
        keyword: :NumberOfMapPoints,
        name: "Number of Map Points",
        vr: :UL
      },
      0x1531 => %{
        keyword: :TwoDimensionalToThreeDimensionalMapData,
        name: "Two Dimensional to Three Dimensional Map Data",
        vr: :OF
      },
      0x1612 => %{
        keyword: :DerivationAlgorithmSequence,
        name: "Derivation Algorithm Sequence",
        vr: :SQ
      },
      0x1615 => %{
        keyword: :OphthalmicImageTypeCodeSequence,
        name: "Ophthalmic Image Type Code Sequence",
        vr: :SQ
      },
      0x1616 => %{
        keyword: :OphthalmicImageTypeDescription,
        name: "Ophthalmic Image Type Description",
        vr: :LO
      },
      0x1618 => %{
        keyword: :ScanPatternTypeCodeSequence,
        name: "Scan Pattern Type Code Sequence",
        vr: :SQ
      },
      0x1620 => %{
        keyword: :ReferencedSurfaceMeshIdentificationSequence,
        name: "Referenced Surface Mesh Identification Sequence",
        vr: :SQ
      },
      0x1622 => %{
        keyword: :OphthalmicVolumetricPropertiesFlag,
        name: "Ophthalmic Volumetric Properties Flag",
        vr: :CS
      },
      0x1624 => %{
        keyword: :OphthalmicAnatomicReferencePointXCoordinate,
        name: "Ophthalmic Anatomic Reference Point X-Coordinate",
        vr: :FL
      },
      0x1626 => %{
        keyword: :OphthalmicAnatomicReferencePointYCoordinate,
        name: "Ophthalmic Anatomic Reference Point Y-Coordinate",
        vr: :FL
      },
      0x1627 => %{
        keyword: :OphthalmicEnFaceVolumeDescriptorSequence,
        name: "Ophthalmic En Face Volume Descriptor Sequence",
        vr: :SQ
      },
      0x1628 => %{
        keyword: :OphthalmicEnFaceImageQualityRatingSequence,
        name: "Ophthalmic En Face Image Quality Rating Sequence",
        vr: :SQ
      },
      0x1629 => %{
        keyword: :OphthalmicEnFaceVolumeDescriptorScope,
        name: "Ophthalmic En Face Volume Descriptor Scope",
        vr: :CS
      },
      0x1630 => %{
        keyword: :QualityThreshold,
        name: "Quality Threshold",
        vr: :DS
      },
      0x1640 => %{
        keyword: :OCTBscanAnalysisAcquisitionParametersSequence,
        name: "OCT B-scan Analysis Acquisition Parameters Sequence",
        vr: :SQ
      },
      0x1642 => %{
        keyword: :NumberOfBscansPerFrame,
        name: "Number of B-scans Per Frame",
        vr: :UL
      },
      0x1643 => %{
        keyword: :BscanSlabThickness,
        name: "B-scan Slab Thickness",
        vr: :FL
      },
      0x1644 => %{
        keyword: :DistanceBetweenBscanSlabs,
        name: "Distance Between B-scan Slabs",
        vr: :FL
      },
      0x1645 => %{
        keyword: :BscanCycleTime,
        name: "B-scan Cycle Time",
        vr: :FL
      },
      0x1646 => %{
        keyword: :BscanCycleTimeVector,
        name: "B-scan Cycle Time Vector",
        vr: :FL
      },
      0x1649 => %{
        keyword: :AscanRate,
        name: "A-scan Rate",
        vr: :FL
      },
      0x1650 => %{
        keyword: :BscanRate,
        name: "B-scan Rate",
        vr: :FL
      },
      0x1658 => %{
        keyword: :SurfaceMeshZPixelOffset,
        name: "Surface Mesh Z-Pixel Offset",
        vr: :UL
      }
    },
    0x0024 => %{
      0x0010 => %{
        keyword: :VisualFieldHorizontalExtent,
        name: "Visual Field Horizontal Extent",
        vr: :FL
      },
      0x0011 => %{
        keyword: :VisualFieldVerticalExtent,
        name: "Visual Field Vertical Extent",
        vr: :FL
      },
      0x0012 => %{
        keyword: :VisualFieldShape,
        name: "Visual Field Shape",
        vr: :CS
      },
      0x0016 => %{
        keyword: :ScreeningTestModeCodeSequence,
        name: "Screening Test Mode Code Sequence",
        vr: :SQ
      },
      0x0018 => %{
        keyword: :MaximumStimulusLuminance,
        name: "Maximum Stimulus Luminance",
        vr: :FL
      },
      0x0020 => %{
        keyword: :BackgroundLuminance,
        name: "Background Luminance",
        vr: :FL
      },
      0x0021 => %{
        keyword: :StimulusColorCodeSequence,
        name: "Stimulus Color Code Sequence",
        vr: :SQ
      },
      0x0024 => %{
        keyword: :BackgroundIlluminationColorCodeSequence,
        name: "Background Illumination Color Code Sequence",
        vr: :SQ
      },
      0x0025 => %{
        keyword: :StimulusArea,
        name: "Stimulus Area",
        vr: :FL
      },
      0x0028 => %{
        keyword: :StimulusPresentationTime,
        name: "Stimulus Presentation Time",
        vr: :FL
      },
      0x0032 => %{
        keyword: :FixationSequence,
        name: "Fixation Sequence",
        vr: :SQ
      },
      0x0033 => %{
        keyword: :FixationMonitoringCodeSequence,
        name: "Fixation Monitoring Code Sequence",
        vr: :SQ
      },
      0x0034 => %{
        keyword: :VisualFieldCatchTrialSequence,
        name: "Visual Field Catch Trial Sequence",
        vr: :SQ
      },
      0x0035 => %{
        keyword: :FixationCheckedQuantity,
        name: "Fixation Checked Quantity",
        vr: :US
      },
      0x0036 => %{
        keyword: :PatientNotProperlyFixatedQuantity,
        name: "Patient Not Properly Fixated Quantity",
        vr: :US
      },
      0x0037 => %{
        keyword: :PresentedVisualStimuliDataFlag,
        name: "Presented Visual Stimuli Data Flag",
        vr: :CS
      },
      0x0038 => %{
        keyword: :NumberOfVisualStimuli,
        name: "Number of Visual Stimuli",
        vr: :US
      },
      0x0039 => %{
        keyword: :ExcessiveFixationLossesDataFlag,
        name: "Excessive Fixation Losses Data Flag",
        vr: :CS
      },
      0x0040 => %{
        keyword: :ExcessiveFixationLosses,
        name: "Excessive Fixation Losses",
        vr: :CS
      },
      0x0042 => %{
        keyword: :StimuliRetestingQuantity,
        name: "Stimuli Retesting Quantity",
        vr: :US
      },
      0x0044 => %{
        keyword: :CommentsOnPatientPerformanceOfVisualField,
        name: "Comments on Patient's Performance of Visual Field",
        vr: :LT
      },
      0x0045 => %{
        keyword: :FalseNegativesEstimateFlag,
        name: "False Negatives Estimate Flag",
        vr: :CS
      },
      0x0046 => %{
        keyword: :FalseNegativesEstimate,
        name: "False Negatives Estimate",
        vr: :FL
      },
      0x0048 => %{
        keyword: :NegativeCatchTrialsQuantity,
        name: "Negative Catch Trials Quantity",
        vr: :US
      },
      0x0050 => %{
        keyword: :FalseNegativesQuantity,
        name: "False Negatives Quantity",
        vr: :US
      },
      0x0051 => %{
        keyword: :ExcessiveFalseNegativesDataFlag,
        name: "Excessive False Negatives Data Flag",
        vr: :CS
      },
      0x0052 => %{
        keyword: :ExcessiveFalseNegatives,
        name: "Excessive False Negatives",
        vr: :CS
      },
      0x0053 => %{
        keyword: :FalsePositivesEstimateFlag,
        name: "False Positives Estimate Flag",
        vr: :CS
      },
      0x0054 => %{
        keyword: :FalsePositivesEstimate,
        name: "False Positives Estimate",
        vr: :FL
      },
      0x0055 => %{
        keyword: :CatchTrialsDataFlag,
        name: "Catch Trials Data Flag",
        vr: :CS
      },
      0x0056 => %{
        keyword: :PositiveCatchTrialsQuantity,
        name: "Positive Catch Trials Quantity",
        vr: :US
      },
      0x0057 => %{
        keyword: :TestPointNormalsDataFlag,
        name: "Test Point Normals Data Flag",
        vr: :CS
      },
      0x0058 => %{
        keyword: :TestPointNormalsSequence,
        name: "Test Point Normals Sequence",
        vr: :SQ
      },
      0x0059 => %{
        keyword: :GlobalDeviationProbabilityNormalsFlag,
        name: "Global Deviation Probability Normals Flag",
        vr: :CS
      },
      0x0060 => %{
        keyword: :FalsePositivesQuantity,
        name: "False Positives Quantity",
        vr: :US
      },
      0x0061 => %{
        keyword: :ExcessiveFalsePositivesDataFlag,
        name: "Excessive False Positives Data Flag",
        vr: :CS
      },
      0x0062 => %{
        keyword: :ExcessiveFalsePositives,
        name: "Excessive False Positives",
        vr: :CS
      },
      0x0063 => %{
        keyword: :VisualFieldTestNormalsFlag,
        name: "Visual Field Test Normals Flag",
        vr: :CS
      },
      0x0064 => %{
        keyword: :ResultsNormalsSequence,
        name: "Results Normals Sequence",
        vr: :SQ
      },
      0x0065 => %{
        keyword: :AgeCorrectedSensitivityDeviationAlgorithmSequence,
        name: "Age Corrected Sensitivity Deviation Algorithm Sequence",
        vr: :SQ
      },
      0x0066 => %{
        keyword: :GlobalDeviationFromNormal,
        name: "Global Deviation From Normal",
        vr: :FL
      },
      0x0067 => %{
        keyword: :GeneralizedDefectSensitivityDeviationAlgorithmSequence,
        name: "Generalized Defect Sensitivity Deviation Algorithm Sequence",
        vr: :SQ
      },
      0x0068 => %{
        keyword: :LocalizedDeviationFromNormal,
        name: "Localized Deviation From Normal",
        vr: :FL
      },
      0x0069 => %{
        keyword: :PatientReliabilityIndicator,
        name: "Patient Reliability Indicator",
        vr: :LO
      },
      0x0070 => %{
        keyword: :VisualFieldMeanSensitivity,
        name: "Visual Field Mean Sensitivity",
        vr: :FL
      },
      0x0071 => %{
        keyword: :GlobalDeviationProbability,
        name: "Global Deviation Probability",
        vr: :FL
      },
      0x0072 => %{
        keyword: :LocalDeviationProbabilityNormalsFlag,
        name: "Local Deviation Probability Normals Flag",
        vr: :CS
      },
      0x0073 => %{
        keyword: :LocalizedDeviationProbability,
        name: "Localized Deviation Probability",
        vr: :FL
      },
      0x0074 => %{
        keyword: :ShortTermFluctuationCalculated,
        name: "Short Term Fluctuation Calculated",
        vr: :CS
      },
      0x0075 => %{
        keyword: :ShortTermFluctuation,
        name: "Short Term Fluctuation",
        vr: :FL
      },
      0x0076 => %{
        keyword: :ShortTermFluctuationProbabilityCalculated,
        name: "Short Term Fluctuation Probability Calculated",
        vr: :CS
      },
      0x0077 => %{
        keyword: :ShortTermFluctuationProbability,
        name: "Short Term Fluctuation Probability",
        vr: :FL
      },
      0x0078 => %{
        keyword: :CorrectedLocalizedDeviationFromNormalCalculated,
        name: "Corrected Localized Deviation From Normal Calculated",
        vr: :CS
      },
      0x0079 => %{
        keyword: :CorrectedLocalizedDeviationFromNormal,
        name: "Corrected Localized Deviation From Normal",
        vr: :FL
      },
      0x0080 => %{
        keyword: :CorrectedLocalizedDeviationFromNormalProbabilityCalculated,
        name: "Corrected Localized Deviation From Normal Probability Calculated",
        vr: :CS
      },
      0x0081 => %{
        keyword: :CorrectedLocalizedDeviationFromNormalProbability,
        name: "Corrected Localized Deviation From Normal Probability",
        vr: :FL
      },
      0x0083 => %{
        keyword: :GlobalDeviationProbabilitySequence,
        name: "Global Deviation Probability Sequence",
        vr: :SQ
      },
      0x0085 => %{
        keyword: :LocalizedDeviationProbabilitySequence,
        name: "Localized Deviation Probability Sequence",
        vr: :SQ
      },
      0x0086 => %{
        keyword: :FovealSensitivityMeasured,
        name: "Foveal Sensitivity Measured",
        vr: :CS
      },
      0x0087 => %{
        keyword: :FovealSensitivity,
        name: "Foveal Sensitivity",
        vr: :FL
      },
      0x0088 => %{
        keyword: :VisualFieldTestDuration,
        name: "Visual Field Test Duration",
        vr: :FL
      },
      0x0089 => %{
        keyword: :VisualFieldTestPointSequence,
        name: "Visual Field Test Point Sequence",
        vr: :SQ
      },
      0x0090 => %{
        keyword: :VisualFieldTestPointXCoordinate,
        name: "Visual Field Test Point X-Coordinate",
        vr: :FL
      },
      0x0091 => %{
        keyword: :VisualFieldTestPointYCoordinate,
        name: "Visual Field Test Point Y-Coordinate",
        vr: :FL
      },
      0x0092 => %{
        keyword: :AgeCorrectedSensitivityDeviationValue,
        name: "Age Corrected Sensitivity Deviation Value",
        vr: :FL
      },
      0x0093 => %{
        keyword: :StimulusResults,
        name: "Stimulus Results",
        vr: :CS
      },
      0x0094 => %{
        keyword: :SensitivityValue,
        name: "Sensitivity Value",
        vr: :FL
      },
      0x0095 => %{
        keyword: :RetestStimulusSeen,
        name: "Retest Stimulus Seen",
        vr: :CS
      },
      0x0096 => %{
        keyword: :RetestSensitivityValue,
        name: "Retest Sensitivity Value",
        vr: :FL
      },
      0x0097 => %{
        keyword: :VisualFieldTestPointNormalsSequence,
        name: "Visual Field Test Point Normals Sequence",
        vr: :SQ
      },
      0x0098 => %{
        keyword: :QuantifiedDefect,
        name: "Quantified Defect",
        vr: :FL
      },
      0x0100 => %{
        keyword: :AgeCorrectedSensitivityDeviationProbabilityValue,
        name: "Age Corrected Sensitivity Deviation Probability Value",
        vr: :FL
      },
      0x0102 => %{
        keyword: :GeneralizedDefectCorrectedSensitivityDeviationFlag,
        name: "Generalized Defect Corrected Sensitivity Deviation Flag",
        vr: :CS
      },
      0x0103 => %{
        keyword: :GeneralizedDefectCorrectedSensitivityDeviationValue,
        name: "Generalized Defect Corrected Sensitivity Deviation Value",
        vr: :FL
      },
      0x0104 => %{
        keyword: :GeneralizedDefectCorrectedSensitivityDeviationProbabilityValue,
        name: "Generalized Defect Corrected Sensitivity Deviation Probability Value",
        vr: :FL
      },
      0x0105 => %{
        keyword: :MinimumSensitivityValue,
        name: "Minimum Sensitivity Value",
        vr: :FL
      },
      0x0106 => %{
        keyword: :BlindSpotLocalized,
        name: "Blind Spot Localized",
        vr: :CS
      },
      0x0107 => %{
        keyword: :BlindSpotXCoordinate,
        name: "Blind Spot X-Coordinate",
        vr: :FL
      },
      0x0108 => %{
        keyword: :BlindSpotYCoordinate,
        name: "Blind Spot Y-Coordinate",
        vr: :FL
      },
      0x0110 => %{
        keyword: :VisualAcuityMeasurementSequence,
        name: "Visual Acuity Measurement Sequence",
        vr: :SQ
      },
      0x0112 => %{
        keyword: :RefractiveParametersUsedOnPatientSequence,
        name: "Refractive Parameters Used on Patient Sequence",
        vr: :SQ
      },
      0x0113 => %{
        keyword: :MeasurementLaterality,
        name: "Measurement Laterality",
        vr: :CS
      },
      0x0114 => %{
        keyword: :OphthalmicPatientClinicalInformationLeftEyeSequence,
        name: "Ophthalmic Patient Clinical Information Left Eye Sequence",
        vr: :SQ
      },
      0x0115 => %{
        keyword: :OphthalmicPatientClinicalInformationRightEyeSequence,
        name: "Ophthalmic Patient Clinical Information Right Eye Sequence",
        vr: :SQ
      },
      0x0117 => %{
        keyword: :FovealPointNormativeDataFlag,
        name: "Foveal Point Normative Data Flag",
        vr: :CS
      },
      0x0118 => %{
        keyword: :FovealPointProbabilityValue,
        name: "Foveal Point Probability Value",
        vr: :FL
      },
      0x0120 => %{
        keyword: :ScreeningBaselineMeasured,
        name: "Screening Baseline Measured",
        vr: :CS
      },
      0x0122 => %{
        keyword: :ScreeningBaselineMeasuredSequence,
        name: "Screening Baseline Measured Sequence",
        vr: :SQ
      },
      0x0124 => %{
        keyword: :ScreeningBaselineType,
        name: "Screening Baseline Type",
        vr: :CS
      },
      0x0126 => %{
        keyword: :ScreeningBaselineValue,
        name: "Screening Baseline Value",
        vr: :FL
      },
      0x0202 => %{
        keyword: :AlgorithmSource,
        name: "Algorithm Source",
        vr: :LO
      },
      0x0306 => %{
        keyword: :DataSetName,
        name: "Data Set Name",
        vr: :LO
      },
      0x0307 => %{
        keyword: :DataSetVersion,
        name: "Data Set Version",
        vr: :LO
      },
      0x0308 => %{
        keyword: :DataSetSource,
        name: "Data Set Source",
        vr: :LO
      },
      0x0309 => %{
        keyword: :DataSetDescription,
        name: "Data Set Description",
        vr: :LO
      },
      0x0317 => %{
        keyword: :VisualFieldTestReliabilityGlobalIndexSequence,
        name: "Visual Field Test Reliability Global Index Sequence",
        vr: :SQ
      },
      0x0320 => %{
        keyword: :VisualFieldGlobalResultsIndexSequence,
        name: "Visual Field Global Results Index Sequence",
        vr: :SQ
      },
      0x0325 => %{
        keyword: :DataObservationSequence,
        name: "Data Observation Sequence",
        vr: :SQ
      },
      0x0338 => %{
        keyword: :IndexNormalsFlag,
        name: "Index Normals Flag",
        vr: :CS
      },
      0x0341 => %{
        keyword: :IndexProbability,
        name: "Index Probability",
        vr: :FL
      },
      0x0344 => %{
        keyword: :IndexProbabilitySequence,
        name: "Index Probability Sequence",
        vr: :SQ
      }
    },
    0x0028 => %{
      0x0002 => %{
        keyword: :SamplesPerPixel,
        name: "Samples per Pixel",
        vr: :US
      },
      0x0003 => %{
        keyword: :SamplesPerPixelUsed,
        name: "Samples per Pixel Used",
        vr: :US
      },
      0x0004 => %{
        keyword: :PhotometricInterpretation,
        name: "Photometric Interpretation",
        vr: :CS
      },
      0x0005 => %{
        keyword: :ImageDimensions,
        name: "Image Dimensions",
        vr: :US
      },
      0x0006 => %{
        keyword: :PlanarConfiguration,
        name: "Planar Configuration",
        vr: :US
      },
      0x0008 => %{
        keyword: :NumberOfFrames,
        name: "Number of Frames",
        vr: :IS
      },
      0x0009 => %{
        keyword: :FrameIncrementPointer,
        name: "Frame Increment Pointer",
        vr: :AT
      },
      0x000A => %{
        keyword: :FrameDimensionPointer,
        name: "Frame Dimension Pointer",
        vr: :AT
      },
      0x0010 => %{
        keyword: :Rows,
        name: "Rows",
        vr: :US
      },
      0x0011 => %{
        keyword: :Columns,
        name: "Columns",
        vr: :US
      },
      0x0012 => %{
        keyword: :Planes,
        name: "Planes",
        vr: :US
      },
      0x0014 => %{
        keyword: :UltrasoundColorDataPresent,
        name: "Ultrasound Color Data Present",
        vr: :US
      },
      0x0030 => %{
        keyword: :PixelSpacing,
        name: "Pixel Spacing",
        vr: :DS
      },
      0x0031 => %{
        keyword: :ZoomFactor,
        name: "Zoom Factor",
        vr: :DS
      },
      0x0032 => %{
        keyword: :ZoomCenter,
        name: "Zoom Center",
        vr: :DS
      },
      0x0034 => %{
        keyword: :PixelAspectRatio,
        name: "Pixel Aspect Ratio",
        vr: :IS
      },
      0x0040 => %{
        keyword: :ImageFormat,
        name: "Image Format",
        vr: :CS
      },
      0x0050 => %{
        keyword: :ManipulatedImage,
        name: "Manipulated Image",
        vr: :LO
      },
      0x0051 => %{
        keyword: :CorrectedImage,
        name: "Corrected Image",
        vr: :CS
      },
      0x005F => %{
        keyword: :CompressionRecognitionCode,
        name: "Compression Recognition Code",
        vr: :LO
      },
      0x0060 => %{
        keyword: :CompressionCode,
        name: "Compression Code",
        vr: :CS
      },
      0x0061 => %{
        keyword: :CompressionOriginator,
        name: "Compression Originator",
        vr: :SH
      },
      0x0062 => %{
        keyword: :CompressionLabel,
        name: "Compression Label",
        vr: :LO
      },
      0x0063 => %{
        keyword: :CompressionDescription,
        name: "Compression Description",
        vr: :SH
      },
      0x0065 => %{
        keyword: :CompressionSequence,
        name: "Compression Sequence",
        vr: :CS
      },
      0x0066 => %{
        keyword: :CompressionStepPointers,
        name: "Compression Step Pointers",
        vr: :AT
      },
      0x0068 => %{
        keyword: :RepeatInterval,
        name: "Repeat Interval",
        vr: :US
      },
      0x0069 => %{
        keyword: :BitsGrouped,
        name: "Bits Grouped",
        vr: :US
      },
      0x0070 => %{
        keyword: :PerimeterTable,
        name: "Perimeter Table",
        vr: :US
      },
      0x0071 => %{
        keyword: :PerimeterValue,
        name: "Perimeter Value",
        vr: :US
      },
      0x0080 => %{
        keyword: :PredictorRows,
        name: "Predictor Rows",
        vr: :US
      },
      0x0081 => %{
        keyword: :PredictorColumns,
        name: "Predictor Columns",
        vr: :US
      },
      0x0082 => %{
        keyword: :PredictorConstants,
        name: "Predictor Constants",
        vr: :US
      },
      0x0090 => %{
        keyword: :BlockedPixels,
        name: "Blocked Pixels",
        vr: :CS
      },
      0x0091 => %{
        keyword: :BlockRows,
        name: "Block Rows",
        vr: :US
      },
      0x0092 => %{
        keyword: :BlockColumns,
        name: "Block Columns",
        vr: :US
      },
      0x0093 => %{
        keyword: :RowOverlap,
        name: "Row Overlap",
        vr: :US
      },
      0x0094 => %{
        keyword: :ColumnOverlap,
        name: "Column Overlap",
        vr: :US
      },
      0x0100 => %{
        keyword: :BitsAllocated,
        name: "Bits Allocated",
        vr: :US
      },
      0x0101 => %{
        keyword: :BitsStored,
        name: "Bits Stored",
        vr: :US
      },
      0x0102 => %{
        keyword: :HighBit,
        name: "High Bit",
        vr: :US
      },
      0x0103 => %{
        keyword: :PixelRepresentation,
        name: "Pixel Representation",
        vr: :US
      },
      0x0104 => %{
        keyword: :SmallestValidPixelValue,
        name: "Smallest Valid Pixel Value",
        vr: :US
      },
      0x0105 => %{
        keyword: :LargestValidPixelValue,
        name: "Largest Valid Pixel Value",
        vr: :US
      },
      0x0106 => %{
        keyword: :SmallestImagePixelValue,
        name: "Smallest Image Pixel Value",
        vr: :US
      },
      0x0107 => %{
        keyword: :LargestImagePixelValue,
        name: "Largest Image Pixel Value",
        vr: :US
      },
      0x0108 => %{
        keyword: :SmallestPixelValueInSeries,
        name: "Smallest Pixel Value in Series",
        vr: :US
      },
      0x0109 => %{
        keyword: :LargestPixelValueInSeries,
        name: "Largest Pixel Value in Series",
        vr: :US
      },
      0x0110 => %{
        keyword: :SmallestImagePixelValueInPlane,
        name: "Smallest Image Pixel Value in Plane",
        vr: :US
      },
      0x0111 => %{
        keyword: :LargestImagePixelValueInPlane,
        name: "Largest Image Pixel Value in Plane",
        vr: :US
      },
      0x0120 => %{
        keyword: :PixelPaddingValue,
        name: "Pixel Padding Value",
        vr: :US
      },
      0x0121 => %{
        keyword: :PixelPaddingRangeLimit,
        name: "Pixel Padding Range Limit",
        vr: :US
      },
      0x0122 => %{
        keyword: :FloatPixelPaddingValue,
        name: "Float Pixel Padding Value",
        vr: :FL
      },
      0x0123 => %{
        keyword: :DoubleFloatPixelPaddingValue,
        name: "Double Float Pixel Padding Value",
        vr: :FD
      },
      0x0124 => %{
        keyword: :FloatPixelPaddingRangeLimit,
        name: "Float Pixel Padding Range Limit",
        vr: :FL
      },
      0x0125 => %{
        keyword: :DoubleFloatPixelPaddingRangeLimit,
        name: "Double Float Pixel Padding Range Limit",
        vr: :FD
      },
      0x0200 => %{
        keyword: :ImageLocation,
        name: "Image Location",
        vr: :US
      },
      0x0300 => %{
        keyword: :QualityControlImage,
        name: "Quality Control Image",
        vr: :CS
      },
      0x0301 => %{
        keyword: :BurnedInAnnotation,
        name: "Burned In Annotation",
        vr: :CS
      },
      0x0302 => %{
        keyword: :RecognizableVisualFeatures,
        name: "Recognizable Visual Features",
        vr: :CS
      },
      0x0303 => %{
        keyword: :LongitudinalTemporalInformationModified,
        name: "Longitudinal Temporal Information Modified",
        vr: :CS
      },
      0x0304 => %{
        keyword: :ReferencedColorPaletteInstanceUID,
        name: "Referenced Color Palette Instance UID",
        vr: :UI
      },
      0x0400 => %{
        keyword: :TransformLabel,
        name: "Transform Label",
        vr: :LO
      },
      0x0401 => %{
        keyword: :TransformVersionNumber,
        name: "Transform Version Number",
        vr: :LO
      },
      0x0402 => %{
        keyword: :NumberOfTransformSteps,
        name: "Number of Transform Steps",
        vr: :US
      },
      0x0403 => %{
        keyword: :SequenceOfCompressedData,
        name: "Sequence of Compressed Data",
        vr: :LO
      },
      0x0404 => %{
        keyword: :DetailsOfCoefficients,
        name: "Details of Coefficients",
        vr: :AT
      },
      0x0700 => %{
        keyword: :DCTLabel,
        name: "DCT Label",
        vr: :LO
      },
      0x0701 => %{
        keyword: :DataBlockDescription,
        name: "Data Block Description",
        vr: :CS
      },
      0x0702 => %{
        keyword: :DataBlock,
        name: "Data Block",
        vr: :AT
      },
      0x0710 => %{
        keyword: :NormalizationFactorFormat,
        name: "Normalization Factor Format",
        vr: :US
      },
      0x0720 => %{
        keyword: :ZonalMapNumberFormat,
        name: "Zonal Map Number Format",
        vr: :US
      },
      0x0721 => %{
        keyword: :ZonalMapLocation,
        name: "Zonal Map Location",
        vr: :AT
      },
      0x0722 => %{
        keyword: :ZonalMapFormat,
        name: "Zonal Map Format",
        vr: :US
      },
      0x0730 => %{
        keyword: :AdaptiveMapFormat,
        name: "Adaptive Map Format",
        vr: :US
      },
      0x0740 => %{
        keyword: :CodeNumberFormat,
        name: "Code Number Format",
        vr: :US
      },
      0x0800 => %{
        keyword: :CodeLabel,
        name: "Code Label",
        vr: :CS
      },
      0x0802 => %{
        keyword: :NumberOfTables,
        name: "Number of Tables",
        vr: :US
      },
      0x0803 => %{
        keyword: :CodeTableLocation,
        name: "Code Table Location",
        vr: :AT
      },
      0x0804 => %{
        keyword: :BitsForCodeWord,
        name: "Bits For Code Word",
        vr: :US
      },
      0x0808 => %{
        keyword: :ImageDataLocation,
        name: "Image Data Location",
        vr: :AT
      },
      0x0A02 => %{
        keyword: :PixelSpacingCalibrationType,
        name: "Pixel Spacing Calibration Type",
        vr: :CS
      },
      0x0A04 => %{
        keyword: :PixelSpacingCalibrationDescription,
        name: "Pixel Spacing Calibration Description",
        vr: :LO
      },
      0x1040 => %{
        keyword: :PixelIntensityRelationship,
        name: "Pixel Intensity Relationship",
        vr: :CS
      },
      0x1041 => %{
        keyword: :PixelIntensityRelationshipSign,
        name: "Pixel Intensity Relationship Sign",
        vr: :SS
      },
      0x1050 => %{
        keyword: :WindowCenter,
        name: "Window Center",
        vr: :DS
      },
      0x1051 => %{
        keyword: :WindowWidth,
        name: "Window Width",
        vr: :DS
      },
      0x1052 => %{
        keyword: :RescaleIntercept,
        name: "Rescale Intercept",
        vr: :DS
      },
      0x1053 => %{
        keyword: :RescaleSlope,
        name: "Rescale Slope",
        vr: :DS
      },
      0x1054 => %{
        keyword: :RescaleType,
        name: "Rescale Type",
        vr: :LO
      },
      0x1055 => %{
        keyword: :WindowCenterWidthExplanation,
        name: "Window Center & Width Explanation",
        vr: :LO
      },
      0x1056 => %{
        keyword: :VOILUTFunction,
        name: "VOI LUT Function",
        vr: :CS
      },
      0x1080 => %{
        keyword: :GrayScale,
        name: "Gray Scale",
        vr: :CS
      },
      0x1090 => %{
        keyword: :RecommendedViewingMode,
        name: "Recommended Viewing Mode",
        vr: :CS
      },
      0x1100 => %{
        keyword: :GrayLookupTableDescriptor,
        name: "Gray Lookup Table Descriptor",
        vr: :US
      },
      0x1101 => %{
        keyword: :RedPaletteColorLookupTableDescriptor,
        name: "Red Palette Color Lookup Table Descriptor",
        vr: :US
      },
      0x1102 => %{
        keyword: :GreenPaletteColorLookupTableDescriptor,
        name: "Green Palette Color Lookup Table Descriptor",
        vr: :US
      },
      0x1103 => %{
        keyword: :BluePaletteColorLookupTableDescriptor,
        name: "Blue Palette Color Lookup Table Descriptor",
        vr: :US
      },
      0x1104 => %{
        keyword: :AlphaPaletteColorLookupTableDescriptor,
        name: "Alpha Palette Color Lookup Table Descriptor",
        vr: :US
      },
      0x1111 => %{
        keyword: :LargeRedPaletteColorLookupTableDescriptor,
        name: "Large Red Palette Color Lookup Table Descriptor",
        vr: :US
      },
      0x1112 => %{
        keyword: :LargeGreenPaletteColorLookupTableDescriptor,
        name: "Large Green Palette Color Lookup Table Descriptor",
        vr: :US
      },
      0x1113 => %{
        keyword: :LargeBluePaletteColorLookupTableDescriptor,
        name: "Large Blue Palette Color Lookup Table Descriptor",
        vr: :US
      },
      0x1199 => %{
        keyword: :PaletteColorLookupTableUID,
        name: "Palette Color Lookup Table UID",
        vr: :UI
      },
      0x1200 => %{
        keyword: :GrayLookupTableData,
        name: "Gray Lookup Table Data",
        vr: :US
      },
      0x1201 => %{
        keyword: :RedPaletteColorLookupTableData,
        name: "Red Palette Color Lookup Table Data",
        vr: :OW
      },
      0x1202 => %{
        keyword: :GreenPaletteColorLookupTableData,
        name: "Green Palette Color Lookup Table Data",
        vr: :OW
      },
      0x1203 => %{
        keyword: :BluePaletteColorLookupTableData,
        name: "Blue Palette Color Lookup Table Data",
        vr: :OW
      },
      0x1204 => %{
        keyword: :AlphaPaletteColorLookupTableData,
        name: "Alpha Palette Color Lookup Table Data",
        vr: :OW
      },
      0x1211 => %{
        keyword: :LargeRedPaletteColorLookupTableData,
        name: "Large Red Palette Color Lookup Table Data",
        vr: :OW
      },
      0x1212 => %{
        keyword: :LargeGreenPaletteColorLookupTableData,
        name: "Large Green Palette Color Lookup Table Data",
        vr: :OW
      },
      0x1213 => %{
        keyword: :LargeBluePaletteColorLookupTableData,
        name: "Large Blue Palette Color Lookup Table Data",
        vr: :OW
      },
      0x1214 => %{
        keyword: :LargePaletteColorLookupTableUID,
        name: "Large Palette Color Lookup Table UID",
        vr: :UI
      },
      0x1221 => %{
        keyword: :SegmentedRedPaletteColorLookupTableData,
        name: "Segmented Red Palette Color Lookup Table Data",
        vr: :OW
      },
      0x1222 => %{
        keyword: :SegmentedGreenPaletteColorLookupTableData,
        name: "Segmented Green Palette Color Lookup Table Data",
        vr: :OW
      },
      0x1223 => %{
        keyword: :SegmentedBluePaletteColorLookupTableData,
        name: "Segmented Blue Palette Color Lookup Table Data",
        vr: :OW
      },
      0x1224 => %{
        keyword: :SegmentedAlphaPaletteColorLookupTableData,
        name: "Segmented Alpha Palette Color Lookup Table Data",
        vr: :OW
      },
      0x1230 => %{
        keyword: :StoredValueColorRangeSequence,
        name: "Stored Value Color Range Sequence",
        vr: :SQ
      },
      0x1231 => %{
        keyword: :MinimumStoredValueMapped,
        name: "Minimum Stored Value Mapped",
        vr: :FD
      },
      0x1232 => %{
        keyword: :MaximumStoredValueMapped,
        name: "Maximum Stored Value Mapped",
        vr: :FD
      },
      0x1300 => %{
        keyword: :BreastImplantPresent,
        name: "Breast Implant Present",
        vr: :CS
      },
      0x1350 => %{
        keyword: :PartialView,
        name: "Partial View",
        vr: :CS
      },
      0x1351 => %{
        keyword: :PartialViewDescription,
        name: "Partial View Description",
        vr: :ST
      },
      0x1352 => %{
        keyword: :PartialViewCodeSequence,
        name: "Partial View Code Sequence",
        vr: :SQ
      },
      0x135A => %{
        keyword: :SpatialLocationsPreserved,
        name: "Spatial Locations Preserved",
        vr: :CS
      },
      0x1401 => %{
        keyword: :DataFrameAssignmentSequence,
        name: "Data Frame Assignment Sequence",
        vr: :SQ
      },
      0x1402 => %{
        keyword: :DataPathAssignment,
        name: "Data Path Assignment",
        vr: :CS
      },
      0x1403 => %{
        keyword: :BitsMappedToColorLookupTable,
        name: "Bits Mapped to Color Lookup Table",
        vr: :US
      },
      0x1404 => %{
        keyword: :BlendingLUT1Sequence,
        name: "Blending LUT 1 Sequence",
        vr: :SQ
      },
      0x1405 => %{
        keyword: :BlendingLUT1TransferFunction,
        name: "Blending LUT 1 Transfer Function",
        vr: :CS
      },
      0x1406 => %{
        keyword: :BlendingWeightConstant,
        name: "Blending Weight Constant",
        vr: :FD
      },
      0x1407 => %{
        keyword: :BlendingLookupTableDescriptor,
        name: "Blending Lookup Table Descriptor",
        vr: :US
      },
      0x1408 => %{
        keyword: :BlendingLookupTableData,
        name: "Blending Lookup Table Data",
        vr: :OW
      },
      0x140B => %{
        keyword: :EnhancedPaletteColorLookupTableSequence,
        name: "Enhanced Palette Color Lookup Table Sequence",
        vr: :SQ
      },
      0x140C => %{
        keyword: :BlendingLUT2Sequence,
        name: "Blending LUT 2 Sequence",
        vr: :SQ
      },
      0x140D => %{
        keyword: :BlendingLUT2TransferFunction,
        name: "Blending LUT 2 Transfer Function",
        vr: :CS
      },
      0x140E => %{
        keyword: :DataPathID,
        name: "Data Path ID",
        vr: :CS
      },
      0x140F => %{
        keyword: :RGBLUTTransferFunction,
        name: "RGB LUT Transfer Function",
        vr: :CS
      },
      0x1410 => %{
        keyword: :AlphaLUTTransferFunction,
        name: "Alpha LUT Transfer Function",
        vr: :CS
      },
      0x2000 => %{
        keyword: :ICCProfile,
        name: "ICC Profile",
        vr: :OB
      },
      0x2002 => %{
        keyword: :ColorSpace,
        name: "Color Space",
        vr: :CS
      },
      0x2110 => %{
        keyword: :LossyImageCompression,
        name: "Lossy Image Compression",
        vr: :CS
      },
      0x2112 => %{
        keyword: :LossyImageCompressionRatio,
        name: "Lossy Image Compression Ratio",
        vr: :DS
      },
      0x2114 => %{
        keyword: :LossyImageCompressionMethod,
        name: "Lossy Image Compression Method",
        vr: :CS
      },
      0x3000 => %{
        keyword: :ModalityLUTSequence,
        name: "Modality LUT Sequence",
        vr: :SQ
      },
      0x3001 => %{
        keyword: :VariableModalityLUTSequence,
        name: "Variable Modality LUT Sequence",
        vr: :SQ
      },
      0x3002 => %{
        keyword: :LUTDescriptor,
        name: "LUT Descriptor",
        vr: :US
      },
      0x3003 => %{
        keyword: :LUTExplanation,
        name: "LUT Explanation",
        vr: :LO
      },
      0x3004 => %{
        keyword: :ModalityLUTType,
        name: "Modality LUT Type",
        vr: :LO
      },
      0x3006 => %{
        keyword: :LUTData,
        name: "LUT Data",
        vr: :US
      },
      0x3010 => %{
        keyword: :VOILUTSequence,
        name: "VOI LUT Sequence",
        vr: :SQ
      },
      0x3110 => %{
        keyword: :SoftcopyVOILUTSequence,
        name: "Softcopy VOI LUT Sequence",
        vr: :SQ
      },
      0x4000 => %{
        keyword: :ImagePresentationComments,
        name: "Image Presentation Comments",
        vr: :LT
      },
      0x5000 => %{
        keyword: :BiPlaneAcquisitionSequence,
        name: "Bi-Plane Acquisition Sequence",
        vr: :SQ
      },
      0x6010 => %{
        keyword: :RepresentativeFrameNumber,
        name: "Representative Frame Number",
        vr: :US
      },
      0x6020 => %{
        keyword: :FrameNumbersOfInterest,
        name: "Frame Numbers of Interest (FOI)",
        vr: :US
      },
      0x6022 => %{
        keyword: :FrameOfInterestDescription,
        name: "Frame of Interest Description",
        vr: :LO
      },
      0x6023 => %{
        keyword: :FrameOfInterestType,
        name: "Frame of Interest Type",
        vr: :CS
      },
      0x6030 => %{
        keyword: :MaskPointers,
        name: "Mask Pointer(s)",
        vr: :US
      },
      0x6040 => %{
        keyword: :RWavePointer,
        name: "R Wave Pointer",
        vr: :US
      },
      0x6100 => %{
        keyword: :MaskSubtractionSequence,
        name: "Mask Subtraction Sequence",
        vr: :SQ
      },
      0x6101 => %{
        keyword: :MaskOperation,
        name: "Mask Operation",
        vr: :CS
      },
      0x6102 => %{
        keyword: :ApplicableFrameRange,
        name: "Applicable Frame Range",
        vr: :US
      },
      0x6110 => %{
        keyword: :MaskFrameNumbers,
        name: "Mask Frame Numbers",
        vr: :US
      },
      0x6112 => %{
        keyword: :ContrastFrameAveraging,
        name: "Contrast Frame Averaging",
        vr: :US
      },
      0x6114 => %{
        keyword: :MaskSubPixelShift,
        name: "Mask Sub-pixel Shift",
        vr: :FL
      },
      0x6120 => %{
        keyword: :TIDOffset,
        name: "TID Offset",
        vr: :SS
      },
      0x6190 => %{
        keyword: :MaskOperationExplanation,
        name: "Mask Operation Explanation",
        vr: :ST
      },
      0x7000 => %{
        keyword: :EquipmentAdministratorSequence,
        name: "Equipment Administrator Sequence",
        vr: :SQ
      },
      0x7001 => %{
        keyword: :NumberOfDisplaySubsystems,
        name: "Number of Display Subsystems",
        vr: :US
      },
      0x7002 => %{
        keyword: :CurrentConfigurationID,
        name: "Current Configuration ID",
        vr: :US
      },
      0x7003 => %{
        keyword: :DisplaySubsystemID,
        name: "Display Subsystem ID",
        vr: :US
      },
      0x7004 => %{
        keyword: :DisplaySubsystemName,
        name: "Display Subsystem Name",
        vr: :SH
      },
      0x7005 => %{
        keyword: :DisplaySubsystemDescription,
        name: "Display Subsystem Description",
        vr: :LO
      },
      0x7006 => %{
        keyword: :SystemStatus,
        name: "System Status",
        vr: :CS
      },
      0x7007 => %{
        keyword: :SystemStatusComment,
        name: "System Status Comment",
        vr: :LO
      },
      0x7008 => %{
        keyword: :TargetLuminanceCharacteristicsSequence,
        name: "Target Luminance Characteristics Sequence",
        vr: :SQ
      },
      0x7009 => %{
        keyword: :LuminanceCharacteristicsID,
        name: "Luminance Characteristics ID",
        vr: :US
      },
      0x700A => %{
        keyword: :DisplaySubsystemConfigurationSequence,
        name: "Display Subsystem Configuration Sequence",
        vr: :SQ
      },
      0x700B => %{
        keyword: :ConfigurationID,
        name: "Configuration ID",
        vr: :US
      },
      0x700C => %{
        keyword: :ConfigurationName,
        name: "Configuration Name",
        vr: :SH
      },
      0x700D => %{
        keyword: :ConfigurationDescription,
        name: "Configuration Description",
        vr: :LO
      },
      0x700E => %{
        keyword: :ReferencedTargetLuminanceCharacteristicsID,
        name: "Referenced Target Luminance Characteristics ID",
        vr: :US
      },
      0x700F => %{
        keyword: :QAResultsSequence,
        name: "QA Results Sequence",
        vr: :SQ
      },
      0x7010 => %{
        keyword: :DisplaySubsystemQAResultsSequence,
        name: "Display Subsystem QA Results Sequence",
        vr: :SQ
      },
      0x7011 => %{
        keyword: :ConfigurationQAResultsSequence,
        name: "Configuration QA Results Sequence",
        vr: :SQ
      },
      0x7012 => %{
        keyword: :MeasurementEquipmentSequence,
        name: "Measurement Equipment Sequence",
        vr: :SQ
      },
      0x7013 => %{
        keyword: :MeasurementFunctions,
        name: "Measurement Functions",
        vr: :CS
      },
      0x7014 => %{
        keyword: :MeasurementEquipmentType,
        name: "Measurement Equipment Type",
        vr: :CS
      },
      0x7015 => %{
        keyword: :VisualEvaluationResultSequence,
        name: "Visual Evaluation Result Sequence",
        vr: :SQ
      },
      0x7016 => %{
        keyword: :DisplayCalibrationResultSequence,
        name: "Display Calibration Result Sequence",
        vr: :SQ
      },
      0x7017 => %{
        keyword: :DDLValue,
        name: "DDL Value",
        vr: :US
      },
      0x7018 => %{
        keyword: :CIExyWhitePoint,
        name: "CIExy White Point",
        vr: :FL
      },
      0x7019 => %{
        keyword: :DisplayFunctionType,
        name: "Display Function Type",
        vr: :CS
      },
      0x701A => %{
        keyword: :GammaValue,
        name: "Gamma Value",
        vr: :FL
      },
      0x701B => %{
        keyword: :NumberOfLuminancePoints,
        name: "Number of Luminance Points",
        vr: :US
      },
      0x701C => %{
        keyword: :LuminanceResponseSequence,
        name: "Luminance Response Sequence",
        vr: :SQ
      },
      0x701D => %{
        keyword: :TargetMinimumLuminance,
        name: "Target Minimum Luminance",
        vr: :FL
      },
      0x701E => %{
        keyword: :TargetMaximumLuminance,
        name: "Target Maximum Luminance",
        vr: :FL
      },
      0x701F => %{
        keyword: :LuminanceValue,
        name: "Luminance Value",
        vr: :FL
      },
      0x7020 => %{
        keyword: :LuminanceResponseDescription,
        name: "Luminance Response Description",
        vr: :LO
      },
      0x7021 => %{
        keyword: :WhitePointFlag,
        name: "White Point Flag",
        vr: :CS
      },
      0x7022 => %{
        keyword: :DisplayDeviceTypeCodeSequence,
        name: "Display Device Type Code Sequence",
        vr: :SQ
      },
      0x7023 => %{
        keyword: :DisplaySubsystemSequence,
        name: "Display Subsystem Sequence",
        vr: :SQ
      },
      0x7024 => %{
        keyword: :LuminanceResultSequence,
        name: "Luminance Result Sequence",
        vr: :SQ
      },
      0x7025 => %{
        keyword: :AmbientLightValueSource,
        name: "Ambient Light Value Source",
        vr: :CS
      },
      0x7026 => %{
        keyword: :MeasuredCharacteristics,
        name: "Measured Characteristics",
        vr: :CS
      },
      0x7027 => %{
        keyword: :LuminanceUniformityResultSequence,
        name: "Luminance Uniformity Result Sequence",
        vr: :SQ
      },
      0x7028 => %{
        keyword: :VisualEvaluationTestSequence,
        name: "Visual Evaluation Test Sequence",
        vr: :SQ
      },
      0x7029 => %{
        keyword: :TestResult,
        name: "Test Result",
        vr: :CS
      },
      0x702A => %{
        keyword: :TestResultComment,
        name: "Test Result Comment",
        vr: :LO
      },
      0x702B => %{
        keyword: :TestImageValidation,
        name: "Test Image Validation",
        vr: :CS
      },
      0x702C => %{
        keyword: :TestPatternCodeSequence,
        name: "Test Pattern Code Sequence",
        vr: :SQ
      },
      0x702D => %{
        keyword: :MeasurementPatternCodeSequence,
        name: "Measurement Pattern Code Sequence",
        vr: :SQ
      },
      0x702E => %{
        keyword: :VisualEvaluationMethodCodeSequence,
        name: "Visual Evaluation Method Code Sequence",
        vr: :SQ
      },
      0x7FE0 => %{
        keyword: :PixelDataProviderURL,
        name: "Pixel Data Provider URL",
        vr: :UR
      },
      0x9001 => %{
        keyword: :DataPointRows,
        name: "Data Point Rows",
        vr: :UL
      },
      0x9002 => %{
        keyword: :DataPointColumns,
        name: "Data Point Columns",
        vr: :UL
      },
      0x9003 => %{
        keyword: :SignalDomainColumns,
        name: "Signal Domain Columns",
        vr: :CS
      },
      0x9099 => %{
        keyword: :LargestMonochromePixelValue,
        name: "Largest Monochrome Pixel Value",
        vr: :US
      },
      0x9108 => %{
        keyword: :DataRepresentation,
        name: "Data Representation",
        vr: :CS
      },
      0x9110 => %{
        keyword: :PixelMeasuresSequence,
        name: "Pixel Measures Sequence",
        vr: :SQ
      },
      0x9132 => %{
        keyword: :FrameVOILUTSequence,
        name: "Frame VOI LUT Sequence",
        vr: :SQ
      },
      0x9145 => %{
        keyword: :PixelValueTransformationSequence,
        name: "Pixel Value Transformation Sequence",
        vr: :SQ
      },
      0x9235 => %{
        keyword: :SignalDomainRows,
        name: "Signal Domain Rows",
        vr: :CS
      },
      0x9411 => %{
        keyword: :DisplayFilterPercentage,
        name: "Display Filter Percentage",
        vr: :FL
      },
      0x9415 => %{
        keyword: :FramePixelShiftSequence,
        name: "Frame Pixel Shift Sequence",
        vr: :SQ
      },
      0x9416 => %{
        keyword: :SubtractionItemID,
        name: "Subtraction Item ID",
        vr: :US
      },
      0x9422 => %{
        keyword: :PixelIntensityRelationshipLUTSequence,
        name: "Pixel Intensity Relationship LUT Sequence",
        vr: :SQ
      },
      0x9443 => %{
        keyword: :FramePixelDataPropertiesSequence,
        name: "Frame Pixel Data Properties Sequence",
        vr: :SQ
      },
      0x9444 => %{
        keyword: :GeometricalProperties,
        name: "Geometrical Properties",
        vr: :CS
      },
      0x9445 => %{
        keyword: :GeometricMaximumDistortion,
        name: "Geometric Maximum Distortion",
        vr: :FL
      },
      0x9446 => %{
        keyword: :ImageProcessingApplied,
        name: "Image Processing Applied",
        vr: :CS
      },
      0x9454 => %{
        keyword: :MaskSelectionMode,
        name: "Mask Selection Mode",
        vr: :CS
      },
      0x9474 => %{
        keyword: :LUTFunction,
        name: "LUT Function",
        vr: :CS
      },
      0x9478 => %{
        keyword: :MaskVisibilityPercentage,
        name: "Mask Visibility Percentage",
        vr: :FL
      },
      0x9501 => %{
        keyword: :PixelShiftSequence,
        name: "Pixel Shift Sequence",
        vr: :SQ
      },
      0x9502 => %{
        keyword: :RegionPixelShiftSequence,
        name: "Region Pixel Shift Sequence",
        vr: :SQ
      },
      0x9503 => %{
        keyword: :VerticesOfTheRegion,
        name: "Vertices of the Region",
        vr: :SS
      },
      0x9505 => %{
        keyword: :MultiFramePresentationSequence,
        name: "Multi-frame Presentation Sequence",
        vr: :SQ
      },
      0x9506 => %{
        keyword: :PixelShiftFrameRange,
        name: "Pixel Shift Frame Range",
        vr: :US
      },
      0x9507 => %{
        keyword: :LUTFrameRange,
        name: "LUT Frame Range",
        vr: :US
      },
      0x9520 => %{
        keyword: :ImageToEquipmentMappingMatrix,
        name: "Image to Equipment Mapping Matrix",
        vr: :DS
      },
      0x9537 => %{
        keyword: :EquipmentCoordinateSystemIdentification,
        name: "Equipment Coordinate System Identification",
        vr: :CS
      }
    },
    0x0032 => %{
      0x000A => %{
        keyword: :StudyStatusID,
        name: "Study Status ID",
        vr: :CS
      },
      0x000C => %{
        keyword: :StudyPriorityID,
        name: "Study Priority ID",
        vr: :CS
      },
      0x0012 => %{
        keyword: :StudyIDIssuer,
        name: "Study ID Issuer",
        vr: :LO
      },
      0x0032 => %{
        keyword: :StudyVerifiedDate,
        name: "Study Verified Date",
        vr: :DA
      },
      0x0033 => %{
        keyword: :StudyVerifiedTime,
        name: "Study Verified Time",
        vr: :TM
      },
      0x0034 => %{
        keyword: :StudyReadDate,
        name: "Study Read Date",
        vr: :DA
      },
      0x0035 => %{
        keyword: :StudyReadTime,
        name: "Study Read Time",
        vr: :TM
      },
      0x1000 => %{
        keyword: :ScheduledStudyStartDate,
        name: "Scheduled Study Start Date",
        vr: :DA
      },
      0x1001 => %{
        keyword: :ScheduledStudyStartTime,
        name: "Scheduled Study Start Time",
        vr: :TM
      },
      0x1010 => %{
        keyword: :ScheduledStudyStopDate,
        name: "Scheduled Study Stop Date",
        vr: :DA
      },
      0x1011 => %{
        keyword: :ScheduledStudyStopTime,
        name: "Scheduled Study Stop Time",
        vr: :TM
      },
      0x1020 => %{
        keyword: :ScheduledStudyLocation,
        name: "Scheduled Study Location",
        vr: :LO
      },
      0x1021 => %{
        keyword: :ScheduledStudyLocationAETitle,
        name: "Scheduled Study Location AE Title",
        vr: :AE
      },
      0x1030 => %{
        keyword: :ReasonForStudy,
        name: "Reason for Study",
        vr: :LO
      },
      0x1031 => %{
        keyword: :RequestingPhysicianIdentificationSequence,
        name: "Requesting Physician Identification Sequence",
        vr: :SQ
      },
      0x1032 => %{
        keyword: :RequestingPhysician,
        name: "Requesting Physician",
        vr: :PN
      },
      0x1033 => %{
        keyword: :RequestingService,
        name: "Requesting Service",
        vr: :LO
      },
      0x1034 => %{
        keyword: :RequestingServiceCodeSequence,
        name: "Requesting Service Code Sequence",
        vr: :SQ
      },
      0x1040 => %{
        keyword: :StudyArrivalDate,
        name: "Study Arrival Date",
        vr: :DA
      },
      0x1041 => %{
        keyword: :StudyArrivalTime,
        name: "Study Arrival Time",
        vr: :TM
      },
      0x1050 => %{
        keyword: :StudyCompletionDate,
        name: "Study Completion Date",
        vr: :DA
      },
      0x1051 => %{
        keyword: :StudyCompletionTime,
        name: "Study Completion Time",
        vr: :TM
      },
      0x1055 => %{
        keyword: :StudyComponentStatusID,
        name: "Study Component Status ID",
        vr: :CS
      },
      0x1060 => %{
        keyword: :RequestedProcedureDescription,
        name: "Requested Procedure Description",
        vr: :LO
      },
      0x1064 => %{
        keyword: :RequestedProcedureCodeSequence,
        name: "Requested Procedure Code Sequence",
        vr: :SQ
      },
      0x1065 => %{
        keyword: :RequestedLateralityCodeSequence,
        name: "Requested Laterality Code Sequence",
        vr: :SQ
      },
      0x1066 => %{
        keyword: :ReasonForVisit,
        name: "Reason for Visit",
        vr: :UT
      },
      0x1067 => %{
        keyword: :ReasonForVisitCodeSequence,
        name: "Reason for Visit Code Sequence",
        vr: :SQ
      },
      0x1070 => %{
        keyword: :RequestedContrastAgent,
        name: "Requested Contrast Agent",
        vr: :LO
      },
      0x4000 => %{
        keyword: :StudyComments,
        name: "Study Comments",
        vr: :LT
      }
    },
    0x0034 => %{
      0x0001 => %{
        keyword: :FlowIdentifierSequence,
        name: "Flow Identifier Sequence",
        vr: :SQ
      },
      0x0002 => %{
        keyword: :FlowIdentifier,
        name: "Flow Identifier",
        vr: :OB
      },
      0x0003 => %{
        keyword: :FlowTransferSyntaxUID,
        name: "Flow Transfer Syntax UID",
        vr: :UI
      },
      0x0004 => %{
        keyword: :FlowRTPSamplingRate,
        name: "Flow RTP Sampling Rate",
        vr: :UL
      },
      0x0005 => %{
        keyword: :SourceIdentifier,
        name: "Source Identifier",
        vr: :OB
      },
      0x0007 => %{
        keyword: :FrameOriginTimestamp,
        name: "Frame Origin Timestamp",
        vr: :OB
      },
      0x0008 => %{
        keyword: :IncludesImagingSubject,
        name: "Includes Imaging Subject",
        vr: :CS
      },
      0x0009 => %{
        keyword: :FrameUsefulnessGroupSequence,
        name: "Frame Usefulness Group Sequence",
        vr: :SQ
      },
      0x000A => %{
        keyword: :RealTimeBulkDataFlowSequence,
        name: "Real-Time Bulk Data Flow Sequence",
        vr: :SQ
      },
      0x000B => %{
        keyword: :CameraPositionGroupSequence,
        name: "Camera Position Group Sequence",
        vr: :SQ
      },
      0x000C => %{
        keyword: :IncludesInformation,
        name: "Includes Information",
        vr: :CS
      },
      0x000D => %{
        keyword: :TimeOfFrameGroupSequence,
        name: "Time of Frame Group Sequence",
        vr: :SQ
      }
    },
    0x0038 => %{
      0x0004 => %{
        keyword: :ReferencedPatientAliasSequence,
        name: "Referenced Patient Alias Sequence",
        vr: :SQ
      },
      0x0008 => %{
        keyword: :VisitStatusID,
        name: "Visit Status ID",
        vr: :CS
      },
      0x0010 => %{
        keyword: :AdmissionID,
        name: "Admission ID",
        vr: :LO
      },
      0x0011 => %{
        keyword: :IssuerOfAdmissionID,
        name: "Issuer of Admission ID",
        vr: :LO
      },
      0x0014 => %{
        keyword: :IssuerOfAdmissionIDSequence,
        name: "Issuer of Admission ID Sequence",
        vr: :SQ
      },
      0x0016 => %{
        keyword: :RouteOfAdmissions,
        name: "Route of Admissions",
        vr: :LO
      },
      0x001A => %{
        keyword: :ScheduledAdmissionDate,
        name: "Scheduled Admission Date",
        vr: :DA
      },
      0x001B => %{
        keyword: :ScheduledAdmissionTime,
        name: "Scheduled Admission Time",
        vr: :TM
      },
      0x001C => %{
        keyword: :ScheduledDischargeDate,
        name: "Scheduled Discharge Date",
        vr: :DA
      },
      0x001D => %{
        keyword: :ScheduledDischargeTime,
        name: "Scheduled Discharge Time",
        vr: :TM
      },
      0x001E => %{
        keyword: :ScheduledPatientInstitutionResidence,
        name: "Scheduled Patient Institution Residence",
        vr: :LO
      },
      0x0020 => %{
        keyword: :AdmittingDate,
        name: "Admitting Date",
        vr: :DA
      },
      0x0021 => %{
        keyword: :AdmittingTime,
        name: "Admitting Time",
        vr: :TM
      },
      0x0030 => %{
        keyword: :DischargeDate,
        name: "Discharge Date",
        vr: :DA
      },
      0x0032 => %{
        keyword: :DischargeTime,
        name: "Discharge Time",
        vr: :TM
      },
      0x0040 => %{
        keyword: :DischargeDiagnosisDescription,
        name: "Discharge Diagnosis Description",
        vr: :LO
      },
      0x0044 => %{
        keyword: :DischargeDiagnosisCodeSequence,
        name: "Discharge Diagnosis Code Sequence",
        vr: :SQ
      },
      0x0050 => %{
        keyword: :SpecialNeeds,
        name: "Special Needs",
        vr: :LO
      },
      0x0060 => %{
        keyword: :ServiceEpisodeID,
        name: "Service Episode ID",
        vr: :LO
      },
      0x0061 => %{
        keyword: :IssuerOfServiceEpisodeID,
        name: "Issuer of Service Episode ID",
        vr: :LO
      },
      0x0062 => %{
        keyword: :ServiceEpisodeDescription,
        name: "Service Episode Description",
        vr: :LO
      },
      0x0064 => %{
        keyword: :IssuerOfServiceEpisodeIDSequence,
        name: "Issuer of Service Episode ID Sequence",
        vr: :SQ
      },
      0x0100 => %{
        keyword: :PertinentDocumentsSequence,
        name: "Pertinent Documents Sequence",
        vr: :SQ
      },
      0x0101 => %{
        keyword: :PertinentResourcesSequence,
        name: "Pertinent Resources Sequence",
        vr: :SQ
      },
      0x0102 => %{
        keyword: :ResourceDescription,
        name: "Resource Description",
        vr: :LO
      },
      0x0300 => %{
        keyword: :CurrentPatientLocation,
        name: "Current Patient Location",
        vr: :LO
      },
      0x0400 => %{
        keyword: :PatientInstitutionResidence,
        name: "Patient's Institution Residence",
        vr: :LO
      },
      0x0500 => %{
        keyword: :PatientState,
        name: "Patient State",
        vr: :LO
      },
      0x0502 => %{
        keyword: :PatientClinicalTrialParticipationSequence,
        name: "Patient Clinical Trial Participation Sequence",
        vr: :SQ
      },
      0x4000 => %{
        keyword: :VisitComments,
        name: "Visit Comments",
        vr: :LT
      }
    },
    0x003A => %{
      0x0004 => %{
        keyword: :WaveformOriginality,
        name: "Waveform Originality",
        vr: :CS
      },
      0x0005 => %{
        keyword: :NumberOfWaveformChannels,
        name: "Number of Waveform Channels",
        vr: :US
      },
      0x0010 => %{
        keyword: :NumberOfWaveformSamples,
        name: "Number of Waveform Samples",
        vr: :UL
      },
      0x001A => %{
        keyword: :SamplingFrequency,
        name: "Sampling Frequency",
        vr: :DS
      },
      0x0020 => %{
        keyword: :MultiplexGroupLabel,
        name: "Multiplex Group Label",
        vr: :SH
      },
      0x0200 => %{
        keyword: :ChannelDefinitionSequence,
        name: "Channel Definition Sequence",
        vr: :SQ
      },
      0x0202 => %{
        keyword: :WaveformChannelNumber,
        name: "Waveform Channel Number",
        vr: :IS
      },
      0x0203 => %{
        keyword: :ChannelLabel,
        name: "Channel Label",
        vr: :SH
      },
      0x0205 => %{
        keyword: :ChannelStatus,
        name: "Channel Status",
        vr: :CS
      },
      0x0208 => %{
        keyword: :ChannelSourceSequence,
        name: "Channel Source Sequence",
        vr: :SQ
      },
      0x0209 => %{
        keyword: :ChannelSourceModifiersSequence,
        name: "Channel Source Modifiers Sequence",
        vr: :SQ
      },
      0x020A => %{
        keyword: :SourceWaveformSequence,
        name: "Source Waveform Sequence",
        vr: :SQ
      },
      0x020C => %{
        keyword: :ChannelDerivationDescription,
        name: "Channel Derivation Description",
        vr: :LO
      },
      0x0210 => %{
        keyword: :ChannelSensitivity,
        name: "Channel Sensitivity",
        vr: :DS
      },
      0x0211 => %{
        keyword: :ChannelSensitivityUnitsSequence,
        name: "Channel Sensitivity Units Sequence",
        vr: :SQ
      },
      0x0212 => %{
        keyword: :ChannelSensitivityCorrectionFactor,
        name: "Channel Sensitivity Correction Factor",
        vr: :DS
      },
      0x0213 => %{
        keyword: :ChannelBaseline,
        name: "Channel Baseline",
        vr: :DS
      },
      0x0214 => %{
        keyword: :ChannelTimeSkew,
        name: "Channel Time Skew",
        vr: :DS
      },
      0x0215 => %{
        keyword: :ChannelSampleSkew,
        name: "Channel Sample Skew",
        vr: :DS
      },
      0x0218 => %{
        keyword: :ChannelOffset,
        name: "Channel Offset",
        vr: :DS
      },
      0x021A => %{
        keyword: :WaveformBitsStored,
        name: "Waveform Bits Stored",
        vr: :US
      },
      0x0220 => %{
        keyword: :FilterLowFrequency,
        name: "Filter Low Frequency",
        vr: :DS
      },
      0x0221 => %{
        keyword: :FilterHighFrequency,
        name: "Filter High Frequency",
        vr: :DS
      },
      0x0222 => %{
        keyword: :NotchFilterFrequency,
        name: "Notch Filter Frequency",
        vr: :DS
      },
      0x0223 => %{
        keyword: :NotchFilterBandwidth,
        name: "Notch Filter Bandwidth",
        vr: :DS
      },
      0x0230 => %{
        keyword: :WaveformDataDisplayScale,
        name: "Waveform Data Display Scale",
        vr: :FL
      },
      0x0231 => %{
        keyword: :WaveformDisplayBackgroundCIELabValue,
        name: "Waveform Display Background CIELab Value",
        vr: :US
      },
      0x0240 => %{
        keyword: :WaveformPresentationGroupSequence,
        name: "Waveform Presentation Group Sequence",
        vr: :SQ
      },
      0x0241 => %{
        keyword: :PresentationGroupNumber,
        name: "Presentation Group Number",
        vr: :US
      },
      0x0242 => %{
        keyword: :ChannelDisplaySequence,
        name: "Channel Display Sequence",
        vr: :SQ
      },
      0x0244 => %{
        keyword: :ChannelRecommendedDisplayCIELabValue,
        name: "Channel Recommended Display CIELab Value",
        vr: :US
      },
      0x0245 => %{
        keyword: :ChannelPosition,
        name: "Channel Position",
        vr: :FL
      },
      0x0246 => %{
        keyword: :DisplayShadingFlag,
        name: "Display Shading Flag",
        vr: :CS
      },
      0x0247 => %{
        keyword: :FractionalChannelDisplayScale,
        name: "Fractional Channel Display Scale",
        vr: :FL
      },
      0x0248 => %{
        keyword: :AbsoluteChannelDisplayScale,
        name: "Absolute Channel Display Scale",
        vr: :FL
      },
      0x0300 => %{
        keyword: :MultiplexedAudioChannelsDescriptionCodeSequence,
        name: "Multiplexed Audio Channels Description Code Sequence",
        vr: :SQ
      },
      0x0301 => %{
        keyword: :ChannelIdentificationCode,
        name: "Channel Identification Code",
        vr: :IS
      },
      0x0302 => %{
        keyword: :ChannelMode,
        name: "Channel Mode",
        vr: :CS
      },
      0x0310 => %{
        keyword: :MultiplexGroupUID,
        name: "Multiplex Group UID",
        vr: :UI
      },
      0x0311 => %{
        keyword: :PowerlineFrequency,
        name: "Powerline Frequency",
        vr: :DS
      },
      0x0312 => %{
        keyword: :ChannelImpedanceSequence,
        name: "Channel Impedance Sequence",
        vr: :SQ
      },
      0x0313 => %{
        keyword: :ImpedanceValue,
        name: "Impedance Value",
        vr: :DS
      },
      0x0314 => %{
        keyword: :ImpedanceMeasurementDateTime,
        name: "Impedance Measurement DateTime",
        vr: :DT
      },
      0x0315 => %{
        keyword: :ImpedanceMeasurementFrequency,
        name: "Impedance Measurement Frequency",
        vr: :DS
      },
      0x0316 => %{
        keyword: :ImpedanceMeasurementCurrentType,
        name: "Impedance Measurement Current Type",
        vr: :CS
      },
      0x0317 => %{
        keyword: :WaveformAmplifierType,
        name: "Waveform Amplifier Type",
        vr: :CS
      },
      0x0318 => %{
        keyword: :FilterLowFrequencyCharacteristicsSequence,
        name: "Filter Low Frequency Characteristics Sequence",
        vr: :SQ
      },
      0x0319 => %{
        keyword: :FilterHighFrequencyCharacteristicsSequence,
        name: "Filter High Frequency Characteristics Sequence",
        vr: :SQ
      },
      0x0320 => %{
        keyword: :SummarizedFilterLookupTableSequence,
        name: "Summarized Filter Lookup Table Sequence",
        vr: :SQ
      },
      0x0321 => %{
        keyword: :NotchFilterCharacteristicsSequence,
        name: "Notch Filter Characteristics Sequence",
        vr: :SQ
      },
      0x0322 => %{
        keyword: :WaveformFilterType,
        name: "Waveform Filter Type",
        vr: :CS
      },
      0x0323 => %{
        keyword: :AnalogFilterCharacteristicsSequence,
        name: "Analog Filter Characteristics Sequence",
        vr: :SQ
      },
      0x0324 => %{
        keyword: :AnalogFilterRollOff,
        name: "Analog Filter Roll Off",
        vr: :DS
      },
      0x0325 => %{
        keyword: :AnalogFilterTypeCodeSequence,
        name: "Analog Filter Type Code Sequence",
        vr: :SQ
      },
      0x0326 => %{
        keyword: :DigitalFilterCharacteristicsSequence,
        name: "Digital Filter Characteristics Sequence",
        vr: :SQ
      },
      0x0327 => %{
        keyword: :DigitalFilterOrder,
        name: "Digital Filter Order",
        vr: :IS
      },
      0x0328 => %{
        keyword: :DigitalFilterTypeCodeSequence,
        name: "Digital Filter Type Code Sequence",
        vr: :SQ
      },
      0x0329 => %{
        keyword: :WaveformFilterDescription,
        name: "Waveform Filter Description",
        vr: :ST
      },
      0x032A => %{
        keyword: :FilterLookupTableSequence,
        name: "Filter Lookup Table Sequence",
        vr: :SQ
      },
      0x032B => %{
        keyword: :FilterLookupTableDescription,
        name: "Filter Lookup Table Description",
        vr: :ST
      },
      0x032C => %{
        keyword: :FrequencyEncodingCodeSequence,
        name: "Frequency Encoding Code Sequence",
        vr: :SQ
      },
      0x032D => %{
        keyword: :MagnitudeEncodingCodeSequence,
        name: "Magnitude Encoding Code Sequence",
        vr: :SQ
      },
      0x032E => %{
        keyword: :FilterLookupTableData,
        name: "Filter Lookup Table Data",
        vr: :OD
      }
    },
    0x0040 => %{
      0x0001 => %{
        keyword: :ScheduledStationAETitle,
        name: "Scheduled Station AE Title",
        vr: :AE
      },
      0x0002 => %{
        keyword: :ScheduledProcedureStepStartDate,
        name: "Scheduled Procedure Step Start Date",
        vr: :DA
      },
      0x0003 => %{
        keyword: :ScheduledProcedureStepStartTime,
        name: "Scheduled Procedure Step Start Time",
        vr: :TM
      },
      0x0004 => %{
        keyword: :ScheduledProcedureStepEndDate,
        name: "Scheduled Procedure Step End Date",
        vr: :DA
      },
      0x0005 => %{
        keyword: :ScheduledProcedureStepEndTime,
        name: "Scheduled Procedure Step End Time",
        vr: :TM
      },
      0x0006 => %{
        keyword: :ScheduledPerformingPhysicianName,
        name: "Scheduled Performing Physician's Name",
        vr: :PN
      },
      0x0007 => %{
        keyword: :ScheduledProcedureStepDescription,
        name: "Scheduled Procedure Step Description",
        vr: :LO
      },
      0x0008 => %{
        keyword: :ScheduledProtocolCodeSequence,
        name: "Scheduled Protocol Code Sequence",
        vr: :SQ
      },
      0x0009 => %{
        keyword: :ScheduledProcedureStepID,
        name: "Scheduled Procedure Step ID",
        vr: :SH
      },
      0x000A => %{
        keyword: :StageCodeSequence,
        name: "Stage Code Sequence",
        vr: :SQ
      },
      0x000B => %{
        keyword: :ScheduledPerformingPhysicianIdentificationSequence,
        name: "Scheduled Performing Physician Identification Sequence",
        vr: :SQ
      },
      0x0010 => %{
        keyword: :ScheduledStationName,
        name: "Scheduled Station Name",
        vr: :SH
      },
      0x0011 => %{
        keyword: :ScheduledProcedureStepLocation,
        name: "Scheduled Procedure Step Location",
        vr: :SH
      },
      0x0012 => %{
        keyword: :PreMedication,
        name: "Pre-Medication",
        vr: :LO
      },
      0x0020 => %{
        keyword: :ScheduledProcedureStepStatus,
        name: "Scheduled Procedure Step Status",
        vr: :CS
      },
      0x0026 => %{
        keyword: :OrderPlacerIdentifierSequence,
        name: "Order Placer Identifier Sequence",
        vr: :SQ
      },
      0x0027 => %{
        keyword: :OrderFillerIdentifierSequence,
        name: "Order Filler Identifier Sequence",
        vr: :SQ
      },
      0x0031 => %{
        keyword: :LocalNamespaceEntityID,
        name: "Local Namespace Entity ID",
        vr: :UT
      },
      0x0032 => %{
        keyword: :UniversalEntityID,
        name: "Universal Entity ID",
        vr: :UT
      },
      0x0033 => %{
        keyword: :UniversalEntityIDType,
        name: "Universal Entity ID Type",
        vr: :CS
      },
      0x0035 => %{
        keyword: :IdentifierTypeCode,
        name: "Identifier Type Code",
        vr: :CS
      },
      0x0036 => %{
        keyword: :AssigningFacilitySequence,
        name: "Assigning Facility Sequence",
        vr: :SQ
      },
      0x0039 => %{
        keyword: :AssigningJurisdictionCodeSequence,
        name: "Assigning Jurisdiction Code Sequence",
        vr: :SQ
      },
      0x003A => %{
        keyword: :AssigningAgencyOrDepartmentCodeSequence,
        name: "Assigning Agency or Department Code Sequence",
        vr: :SQ
      },
      0x0100 => %{
        keyword: :ScheduledProcedureStepSequence,
        name: "Scheduled Procedure Step Sequence",
        vr: :SQ
      },
      0x0220 => %{
        keyword: :ReferencedNonImageCompositeSOPInstanceSequence,
        name: "Referenced Non-Image Composite SOP Instance Sequence",
        vr: :SQ
      },
      0x0241 => %{
        keyword: :PerformedStationAETitle,
        name: "Performed Station AE Title",
        vr: :AE
      },
      0x0242 => %{
        keyword: :PerformedStationName,
        name: "Performed Station Name",
        vr: :SH
      },
      0x0243 => %{
        keyword: :PerformedLocation,
        name: "Performed Location",
        vr: :SH
      },
      0x0244 => %{
        keyword: :PerformedProcedureStepStartDate,
        name: "Performed Procedure Step Start Date",
        vr: :DA
      },
      0x0245 => %{
        keyword: :PerformedProcedureStepStartTime,
        name: "Performed Procedure Step Start Time",
        vr: :TM
      },
      0x0250 => %{
        keyword: :PerformedProcedureStepEndDate,
        name: "Performed Procedure Step End Date",
        vr: :DA
      },
      0x0251 => %{
        keyword: :PerformedProcedureStepEndTime,
        name: "Performed Procedure Step End Time",
        vr: :TM
      },
      0x0252 => %{
        keyword: :PerformedProcedureStepStatus,
        name: "Performed Procedure Step Status",
        vr: :CS
      },
      0x0253 => %{
        keyword: :PerformedProcedureStepID,
        name: "Performed Procedure Step ID",
        vr: :SH
      },
      0x0254 => %{
        keyword: :PerformedProcedureStepDescription,
        name: "Performed Procedure Step Description",
        vr: :LO
      },
      0x0255 => %{
        keyword: :PerformedProcedureTypeDescription,
        name: "Performed Procedure Type Description",
        vr: :LO
      },
      0x0260 => %{
        keyword: :PerformedProtocolCodeSequence,
        name: "Performed Protocol Code Sequence",
        vr: :SQ
      },
      0x0261 => %{
        keyword: :PerformedProtocolType,
        name: "Performed Protocol Type",
        vr: :CS
      },
      0x0270 => %{
        keyword: :ScheduledStepAttributesSequence,
        name: "Scheduled Step Attributes Sequence",
        vr: :SQ
      },
      0x0275 => %{
        keyword: :RequestAttributesSequence,
        name: "Request Attributes Sequence",
        vr: :SQ
      },
      0x0280 => %{
        keyword: :CommentsOnThePerformedProcedureStep,
        name: "Comments on the Performed Procedure Step",
        vr: :ST
      },
      0x0281 => %{
        keyword: :PerformedProcedureStepDiscontinuationReasonCodeSequence,
        name: "Performed Procedure Step Discontinuation Reason Code Sequence",
        vr: :SQ
      },
      0x0293 => %{
        keyword: :QuantitySequence,
        name: "Quantity Sequence",
        vr: :SQ
      },
      0x0294 => %{
        keyword: :Quantity,
        name: "Quantity",
        vr: :DS
      },
      0x0295 => %{
        keyword: :MeasuringUnitsSequence,
        name: "Measuring Units Sequence",
        vr: :SQ
      },
      0x0296 => %{
        keyword: :BillingItemSequence,
        name: "Billing Item Sequence",
        vr: :SQ
      },
      0x0300 => %{
        keyword: :TotalTimeOfFluoroscopy,
        name: "Total Time of Fluoroscopy",
        vr: :US
      },
      0x0301 => %{
        keyword: :TotalNumberOfExposures,
        name: "Total Number of Exposures",
        vr: :US
      },
      0x0302 => %{
        keyword: :EntranceDose,
        name: "Entrance Dose",
        vr: :US
      },
      0x0303 => %{
        keyword: :ExposedArea,
        name: "Exposed Area",
        vr: :US
      },
      0x0306 => %{
        keyword: :DistanceSourceToEntrance,
        name: "Distance Source to Entrance",
        vr: :DS
      },
      0x0307 => %{
        keyword: :DistanceSourceToSupport,
        name: "Distance Source to Support",
        vr: :DS
      },
      0x030E => %{
        keyword: :ExposureDoseSequence,
        name: "Exposure Dose Sequence",
        vr: :SQ
      },
      0x0310 => %{
        keyword: :CommentsOnRadiationDose,
        name: "Comments on Radiation Dose",
        vr: :ST
      },
      0x0312 => %{
        keyword: :XRayOutput,
        name: "X-Ray Output",
        vr: :DS
      },
      0x0314 => %{
        keyword: :HalfValueLayer,
        name: "Half Value Layer",
        vr: :DS
      },
      0x0316 => %{
        keyword: :OrganDose,
        name: "Organ Dose",
        vr: :DS
      },
      0x0318 => %{
        keyword: :OrganExposed,
        name: "Organ Exposed",
        vr: :CS
      },
      0x0320 => %{
        keyword: :BillingProcedureStepSequence,
        name: "Billing Procedure Step Sequence",
        vr: :SQ
      },
      0x0321 => %{
        keyword: :FilmConsumptionSequence,
        name: "Film Consumption Sequence",
        vr: :SQ
      },
      0x0324 => %{
        keyword: :BillingSuppliesAndDevicesSequence,
        name: "Billing Supplies and Devices Sequence",
        vr: :SQ
      },
      0x0330 => %{
        keyword: :ReferencedProcedureStepSequence,
        name: "Referenced Procedure Step Sequence",
        vr: :SQ
      },
      0x0340 => %{
        keyword: :PerformedSeriesSequence,
        name: "Performed Series Sequence",
        vr: :SQ
      },
      0x0400 => %{
        keyword: :CommentsOnTheScheduledProcedureStep,
        name: "Comments on the Scheduled Procedure Step",
        vr: :LT
      },
      0x0440 => %{
        keyword: :ProtocolContextSequence,
        name: "Protocol Context Sequence",
        vr: :SQ
      },
      0x0441 => %{
        keyword: :ContentItemModifierSequence,
        name: "Content Item Modifier Sequence",
        vr: :SQ
      },
      0x0500 => %{
        keyword: :ScheduledSpecimenSequence,
        name: "Scheduled Specimen Sequence",
        vr: :SQ
      },
      0x050A => %{
        keyword: :SpecimenAccessionNumber,
        name: "Specimen Accession Number",
        vr: :LO
      },
      0x0512 => %{
        keyword: :ContainerIdentifier,
        name: "Container Identifier",
        vr: :LO
      },
      0x0513 => %{
        keyword: :IssuerOfTheContainerIdentifierSequence,
        name: "Issuer of the Container Identifier Sequence",
        vr: :SQ
      },
      0x0515 => %{
        keyword: :AlternateContainerIdentifierSequence,
        name: "Alternate Container Identifier Sequence",
        vr: :SQ
      },
      0x0518 => %{
        keyword: :ContainerTypeCodeSequence,
        name: "Container Type Code Sequence",
        vr: :SQ
      },
      0x051A => %{
        keyword: :ContainerDescription,
        name: "Container Description",
        vr: :LO
      },
      0x0520 => %{
        keyword: :ContainerComponentSequence,
        name: "Container Component Sequence",
        vr: :SQ
      },
      0x0550 => %{
        keyword: :SpecimenSequence,
        name: "Specimen Sequence",
        vr: :SQ
      },
      0x0551 => %{
        keyword: :SpecimenIdentifier,
        name: "Specimen Identifier",
        vr: :LO
      },
      0x0552 => %{
        keyword: :SpecimenDescriptionSequenceTrial,
        name: "Specimen Description Sequence (Trial)",
        vr: :SQ
      },
      0x0553 => %{
        keyword: :SpecimenDescriptionTrial,
        name: "Specimen Description (Trial)",
        vr: :ST
      },
      0x0554 => %{
        keyword: :SpecimenUID,
        name: "Specimen UID",
        vr: :UI
      },
      0x0555 => %{
        keyword: :AcquisitionContextSequence,
        name: "Acquisition Context Sequence",
        vr: :SQ
      },
      0x0556 => %{
        keyword: :AcquisitionContextDescription,
        name: "Acquisition Context Description",
        vr: :ST
      },
      0x0560 => %{
        keyword: :SpecimenDescriptionSequence,
        name: "Specimen Description Sequence",
        vr: :SQ
      },
      0x0562 => %{
        keyword: :IssuerOfTheSpecimenIdentifierSequence,
        name: "Issuer of the Specimen Identifier Sequence",
        vr: :SQ
      },
      0x059A => %{
        keyword: :SpecimenTypeCodeSequence,
        name: "Specimen Type Code Sequence",
        vr: :SQ
      },
      0x0600 => %{
        keyword: :SpecimenShortDescription,
        name: "Specimen Short Description",
        vr: :LO
      },
      0x0602 => %{
        keyword: :SpecimenDetailedDescription,
        name: "Specimen Detailed Description",
        vr: :UT
      },
      0x0610 => %{
        keyword: :SpecimenPreparationSequence,
        name: "Specimen Preparation Sequence",
        vr: :SQ
      },
      0x0612 => %{
        keyword: :SpecimenPreparationStepContentItemSequence,
        name: "Specimen Preparation Step Content Item Sequence",
        vr: :SQ
      },
      0x0620 => %{
        keyword: :SpecimenLocalizationContentItemSequence,
        name: "Specimen Localization Content Item Sequence",
        vr: :SQ
      },
      0x06FA => %{
        keyword: :SlideIdentifier,
        name: "Slide Identifier",
        vr: :LO
      },
      0x0710 => %{
        keyword: :WholeSlideMicroscopyImageFrameTypeSequence,
        name: "Whole Slide Microscopy Image Frame Type Sequence",
        vr: :SQ
      },
      0x071A => %{
        keyword: :ImageCenterPointCoordinatesSequence,
        name: "Image Center Point Coordinates Sequence",
        vr: :SQ
      },
      0x072A => %{
        keyword: :XOffsetInSlideCoordinateSystem,
        name: "X Offset in Slide Coordinate System",
        vr: :DS
      },
      0x073A => %{
        keyword: :YOffsetInSlideCoordinateSystem,
        name: "Y Offset in Slide Coordinate System",
        vr: :DS
      },
      0x074A => %{
        keyword: :ZOffsetInSlideCoordinateSystem,
        name: "Z Offset in Slide Coordinate System",
        vr: :DS
      },
      0x08D8 => %{
        keyword: :PixelSpacingSequence,
        name: "Pixel Spacing Sequence",
        vr: :SQ
      },
      0x08DA => %{
        keyword: :CoordinateSystemAxisCodeSequence,
        name: "Coordinate System Axis Code Sequence",
        vr: :SQ
      },
      0x08EA => %{
        keyword: :MeasurementUnitsCodeSequence,
        name: "Measurement Units Code Sequence",
        vr: :SQ
      },
      0x09F8 => %{
        keyword: :VitalStainCodeSequenceTrial,
        name: "Vital Stain Code Sequence (Trial)",
        vr: :SQ
      },
      0x1001 => %{
        keyword: :RequestedProcedureID,
        name: "Requested Procedure ID",
        vr: :SH
      },
      0x1002 => %{
        keyword: :ReasonForTheRequestedProcedure,
        name: "Reason for the Requested Procedure",
        vr: :LO
      },
      0x1003 => %{
        keyword: :RequestedProcedurePriority,
        name: "Requested Procedure Priority",
        vr: :SH
      },
      0x1004 => %{
        keyword: :PatientTransportArrangements,
        name: "Patient Transport Arrangements",
        vr: :LO
      },
      0x1005 => %{
        keyword: :RequestedProcedureLocation,
        name: "Requested Procedure Location",
        vr: :LO
      },
      0x1006 => %{
        keyword: :PlacerOrderNumberProcedure,
        name: "Placer Order Number / Procedure",
        vr: :SH
      },
      0x1007 => %{
        keyword: :FillerOrderNumberProcedure,
        name: "Filler Order Number / Procedure",
        vr: :SH
      },
      0x1008 => %{
        keyword: :ConfidentialityCode,
        name: "Confidentiality Code",
        vr: :LO
      },
      0x1009 => %{
        keyword: :ReportingPriority,
        name: "Reporting Priority",
        vr: :SH
      },
      0x100A => %{
        keyword: :ReasonForRequestedProcedureCodeSequence,
        name: "Reason for Requested Procedure Code Sequence",
        vr: :SQ
      },
      0x1010 => %{
        keyword: :NamesOfIntendedRecipientsOfResults,
        name: "Names of Intended Recipients of Results",
        vr: :PN
      },
      0x1011 => %{
        keyword: :IntendedRecipientsOfResultsIdentificationSequence,
        name: "Intended Recipients of Results Identification Sequence",
        vr: :SQ
      },
      0x1012 => %{
        keyword: :ReasonForPerformedProcedureCodeSequence,
        name: "Reason For Performed Procedure Code Sequence",
        vr: :SQ
      },
      0x1060 => %{
        keyword: :RequestedProcedureDescriptionTrial,
        name: "Requested Procedure Description (Trial)",
        vr: :LO
      },
      0x1101 => %{
        keyword: :PersonIdentificationCodeSequence,
        name: "Person Identification Code Sequence",
        vr: :SQ
      },
      0x1102 => %{
        keyword: :PersonAddress,
        name: "Person's Address",
        vr: :ST
      },
      0x1103 => %{
        keyword: :PersonTelephoneNumbers,
        name: "Person's Telephone Numbers",
        vr: :LO
      },
      0x1104 => %{
        keyword: :PersonTelecomInformation,
        name: "Person's Telecom Information",
        vr: :LT
      },
      0x1400 => %{
        keyword: :RequestedProcedureComments,
        name: "Requested Procedure Comments",
        vr: :LT
      },
      0x2001 => %{
        keyword: :ReasonForTheImagingServiceRequest,
        name: "Reason for the Imaging Service Request",
        vr: :LO
      },
      0x2004 => %{
        keyword: :IssueDateOfImagingServiceRequest,
        name: "Issue Date of Imaging Service Request",
        vr: :DA
      },
      0x2005 => %{
        keyword: :IssueTimeOfImagingServiceRequest,
        name: "Issue Time of Imaging Service Request",
        vr: :TM
      },
      0x2006 => %{
        keyword: :PlacerOrderNumberImagingServiceRequestRetired,
        name: "Placer Order Number / Imaging Service Request (Retired)",
        vr: :SH
      },
      0x2007 => %{
        keyword: :FillerOrderNumberImagingServiceRequestRetired,
        name: "Filler Order Number / Imaging Service Request (Retired)",
        vr: :SH
      },
      0x2008 => %{
        keyword: :OrderEnteredBy,
        name: "Order Entered By",
        vr: :PN
      },
      0x2009 => %{
        keyword: :OrderEntererLocation,
        name: "Order Enterer's Location",
        vr: :SH
      },
      0x2010 => %{
        keyword: :OrderCallbackPhoneNumber,
        name: "Order Callback Phone Number",
        vr: :SH
      },
      0x2011 => %{
        keyword: :OrderCallbackTelecomInformation,
        name: "Order Callback Telecom Information",
        vr: :LT
      },
      0x2016 => %{
        keyword: :PlacerOrderNumberImagingServiceRequest,
        name: "Placer Order Number / Imaging Service Request",
        vr: :LO
      },
      0x2017 => %{
        keyword: :FillerOrderNumberImagingServiceRequest,
        name: "Filler Order Number / Imaging Service Request",
        vr: :LO
      },
      0x2400 => %{
        keyword: :ImagingServiceRequestComments,
        name: "Imaging Service Request Comments",
        vr: :LT
      },
      0x3001 => %{
        keyword: :ConfidentialityConstraintOnPatientDataDescription,
        name: "Confidentiality Constraint on Patient Data Description",
        vr: :LO
      },
      0x4001 => %{
        keyword: :GeneralPurposeScheduledProcedureStepStatus,
        name: "General Purpose Scheduled Procedure Step Status",
        vr: :CS
      },
      0x4002 => %{
        keyword: :GeneralPurposePerformedProcedureStepStatus,
        name: "General Purpose Performed Procedure Step Status",
        vr: :CS
      },
      0x4003 => %{
        keyword: :GeneralPurposeScheduledProcedureStepPriority,
        name: "General Purpose Scheduled Procedure Step Priority",
        vr: :CS
      },
      0x4004 => %{
        keyword: :ScheduledProcessingApplicationsCodeSequence,
        name: "Scheduled Processing Applications Code Sequence",
        vr: :SQ
      },
      0x4005 => %{
        keyword: :ScheduledProcedureStepStartDateTime,
        name: "Scheduled Procedure Step Start DateTime",
        vr: :DT
      },
      0x4006 => %{
        keyword: :MultipleCopiesFlag,
        name: "Multiple Copies Flag",
        vr: :CS
      },
      0x4007 => %{
        keyword: :PerformedProcessingApplicationsCodeSequence,
        name: "Performed Processing Applications Code Sequence",
        vr: :SQ
      },
      0x4008 => %{
        keyword: :ScheduledProcedureStepExpirationDateTime,
        name: "Scheduled Procedure Step Expiration DateTime",
        vr: :DT
      },
      0x4009 => %{
        keyword: :HumanPerformerCodeSequence,
        name: "Human Performer Code Sequence",
        vr: :SQ
      },
      0x4010 => %{
        keyword: :ScheduledProcedureStepModificationDateTime,
        name: "Scheduled Procedure Step Modification DateTime",
        vr: :DT
      },
      0x4011 => %{
        keyword: :ExpectedCompletionDateTime,
        name: "Expected Completion DateTime",
        vr: :DT
      },
      0x4015 => %{
        keyword: :ResultingGeneralPurposePerformedProcedureStepsSequence,
        name: "Resulting General Purpose Performed Procedure Steps Sequence",
        vr: :SQ
      },
      0x4016 => %{
        keyword: :ReferencedGeneralPurposeScheduledProcedureStepSequence,
        name: "Referenced General Purpose Scheduled Procedure Step Sequence",
        vr: :SQ
      },
      0x4018 => %{
        keyword: :ScheduledWorkitemCodeSequence,
        name: "Scheduled Workitem Code Sequence",
        vr: :SQ
      },
      0x4019 => %{
        keyword: :PerformedWorkitemCodeSequence,
        name: "Performed Workitem Code Sequence",
        vr: :SQ
      },
      0x4020 => %{
        keyword: :InputAvailabilityFlag,
        name: "Input Availability Flag",
        vr: :CS
      },
      0x4021 => %{
        keyword: :InputInformationSequence,
        name: "Input Information Sequence",
        vr: :SQ
      },
      0x4022 => %{
        keyword: :RelevantInformationSequence,
        name: "Relevant Information Sequence",
        vr: :SQ
      },
      0x4023 => %{
        keyword: :ReferencedGeneralPurposeScheduledProcedureStepTransactionUID,
        name: "Referenced General Purpose Scheduled Procedure Step Transaction UID",
        vr: :UI
      },
      0x4025 => %{
        keyword: :ScheduledStationNameCodeSequence,
        name: "Scheduled Station Name Code Sequence",
        vr: :SQ
      },
      0x4026 => %{
        keyword: :ScheduledStationClassCodeSequence,
        name: "Scheduled Station Class Code Sequence",
        vr: :SQ
      },
      0x4027 => %{
        keyword: :ScheduledStationGeographicLocationCodeSequence,
        name: "Scheduled Station Geographic Location Code Sequence",
        vr: :SQ
      },
      0x4028 => %{
        keyword: :PerformedStationNameCodeSequence,
        name: "Performed Station Name Code Sequence",
        vr: :SQ
      },
      0x4029 => %{
        keyword: :PerformedStationClassCodeSequence,
        name: "Performed Station Class Code Sequence",
        vr: :SQ
      },
      0x4030 => %{
        keyword: :PerformedStationGeographicLocationCodeSequence,
        name: "Performed Station Geographic Location Code Sequence",
        vr: :SQ
      },
      0x4031 => %{
        keyword: :RequestedSubsequentWorkitemCodeSequence,
        name: "Requested Subsequent Workitem Code Sequence",
        vr: :SQ
      },
      0x4032 => %{
        keyword: :NonDICOMOutputCodeSequence,
        name: "Non-DICOM Output Code Sequence",
        vr: :SQ
      },
      0x4033 => %{
        keyword: :OutputInformationSequence,
        name: "Output Information Sequence",
        vr: :SQ
      },
      0x4034 => %{
        keyword: :ScheduledHumanPerformersSequence,
        name: "Scheduled Human Performers Sequence",
        vr: :SQ
      },
      0x4035 => %{
        keyword: :ActualHumanPerformersSequence,
        name: "Actual Human Performers Sequence",
        vr: :SQ
      },
      0x4036 => %{
        keyword: :HumanPerformerOrganization,
        name: "Human Performer's Organization",
        vr: :LO
      },
      0x4037 => %{
        keyword: :HumanPerformerName,
        name: "Human Performer's Name",
        vr: :PN
      },
      0x4040 => %{
        keyword: :RawDataHandling,
        name: "Raw Data Handling",
        vr: :CS
      },
      0x4041 => %{
        keyword: :InputReadinessState,
        name: "Input Readiness State",
        vr: :CS
      },
      0x4050 => %{
        keyword: :PerformedProcedureStepStartDateTime,
        name: "Performed Procedure Step Start DateTime",
        vr: :DT
      },
      0x4051 => %{
        keyword: :PerformedProcedureStepEndDateTime,
        name: "Performed Procedure Step End DateTime",
        vr: :DT
      },
      0x4052 => %{
        keyword: :ProcedureStepCancellationDateTime,
        name: "Procedure Step Cancellation DateTime",
        vr: :DT
      },
      0x4070 => %{
        keyword: :OutputDestinationSequence,
        name: "Output Destination Sequence",
        vr: :SQ
      },
      0x4071 => %{
        keyword: :DICOMStorageSequence,
        name: "DICOM Storage Sequence",
        vr: :SQ
      },
      0x4072 => %{
        keyword: :STOWRSStorageSequence,
        name: "STOW-RS Storage Sequence",
        vr: :SQ
      },
      0x4073 => %{
        keyword: :StorageURL,
        name: "Storage URL",
        vr: :UR
      },
      0x4074 => %{
        keyword: :XDSStorageSequence,
        name: "XDS Storage Sequence",
        vr: :SQ
      },
      0x8302 => %{
        keyword: :EntranceDoseInmGy,
        name: "Entrance Dose in mGy",
        vr: :DS
      },
      0x8303 => %{
        keyword: :EntranceDoseDerivation,
        name: "Entrance Dose Derivation",
        vr: :CS
      },
      0x9092 => %{
        keyword: :ParametricMapFrameTypeSequence,
        name: "Parametric Map Frame Type Sequence",
        vr: :SQ
      },
      0x9094 => %{
        keyword: :ReferencedImageRealWorldValueMappingSequence,
        name: "Referenced Image Real World Value Mapping Sequence",
        vr: :SQ
      },
      0x9096 => %{
        keyword: :RealWorldValueMappingSequence,
        name: "Real World Value Mapping Sequence",
        vr: :SQ
      },
      0x9098 => %{
        keyword: :PixelValueMappingCodeSequence,
        name: "Pixel Value Mapping Code Sequence",
        vr: :SQ
      },
      0x9210 => %{
        keyword: :LUTLabel,
        name: "LUT Label",
        vr: :SH
      },
      0x9211 => %{
        keyword: :RealWorldValueLastValueMapped,
        name: "Real World Value Last Value Mapped",
        vr: :US
      },
      0x9212 => %{
        keyword: :RealWorldValueLUTData,
        name: "Real World Value LUT Data",
        vr: :FD
      },
      0x9213 => %{
        keyword: :DoubleFloatRealWorldValueLastValueMapped,
        name: "Double Float Real World Value Last Value Mapped",
        vr: :FD
      },
      0x9214 => %{
        keyword: :DoubleFloatRealWorldValueFirstValueMapped,
        name: "Double Float Real World Value First Value Mapped",
        vr: :FD
      },
      0x9216 => %{
        keyword: :RealWorldValueFirstValueMapped,
        name: "Real World Value First Value Mapped",
        vr: :US
      },
      0x9220 => %{
        keyword: :QuantityDefinitionSequence,
        name: "Quantity Definition Sequence",
        vr: :SQ
      },
      0x9224 => %{
        keyword: :RealWorldValueIntercept,
        name: "Real World Value Intercept",
        vr: :FD
      },
      0x9225 => %{
        keyword: :RealWorldValueSlope,
        name: "Real World Value Slope",
        vr: :FD
      },
      0xA007 => %{
        keyword: :FindingsFlagTrial,
        name: "Findings Flag (Trial)",
        vr: :CS
      },
      0xA010 => %{
        keyword: :RelationshipType,
        name: "Relationship Type",
        vr: :CS
      },
      0xA020 => %{
        keyword: :FindingsSequenceTrial,
        name: "Findings Sequence (Trial)",
        vr: :SQ
      },
      0xA021 => %{
        keyword: :FindingsGroupUIDTrial,
        name: "Findings Group UID (Trial)",
        vr: :UI
      },
      0xA022 => %{
        keyword: :ReferencedFindingsGroupUIDTrial,
        name: "Referenced Findings Group UID (Trial)",
        vr: :UI
      },
      0xA023 => %{
        keyword: :FindingsGroupRecordingDateTrial,
        name: "Findings Group Recording Date (Trial)",
        vr: :DA
      },
      0xA024 => %{
        keyword: :FindingsGroupRecordingTimeTrial,
        name: "Findings Group Recording Time (Trial)",
        vr: :TM
      },
      0xA026 => %{
        keyword: :FindingsSourceCategoryCodeSequenceTrial,
        name: "Findings Source Category Code Sequence (Trial)",
        vr: :SQ
      },
      0xA027 => %{
        keyword: :VerifyingOrganization,
        name: "Verifying Organization",
        vr: :LO
      },
      0xA028 => %{
        keyword: :DocumentingOrganizationIdentifierCodeSequenceTrial,
        name: "Documenting Organization Identifier Code Sequence (Trial)",
        vr: :SQ
      },
      0xA030 => %{
        keyword: :VerificationDateTime,
        name: "Verification DateTime",
        vr: :DT
      },
      0xA032 => %{
        keyword: :ObservationDateTime,
        name: "Observation DateTime",
        vr: :DT
      },
      0xA033 => %{
        keyword: :ObservationStartDateTime,
        name: "Observation Start DateTime",
        vr: :DT
      },
      0xA040 => %{
        keyword: :ValueType,
        name: "Value Type",
        vr: :CS
      },
      0xA043 => %{
        keyword: :ConceptNameCodeSequence,
        name: "Concept Name Code Sequence",
        vr: :SQ
      },
      0xA047 => %{
        keyword: :MeasurementPrecisionDescriptionTrial,
        name: "Measurement Precision Description (Trial)",
        vr: :LO
      },
      0xA050 => %{
        keyword: :ContinuityOfContent,
        name: "Continuity Of Content",
        vr: :CS
      },
      0xA057 => %{
        keyword: :UrgencyOrPriorityAlertsTrial,
        name: "Urgency or Priority Alerts (Trial)",
        vr: :CS
      },
      0xA060 => %{
        keyword: :SequencingIndicatorTrial,
        name: "Sequencing Indicator (Trial)",
        vr: :LO
      },
      0xA066 => %{
        keyword: :DocumentIdentifierCodeSequenceTrial,
        name: "Document Identifier Code Sequence (Trial)",
        vr: :SQ
      },
      0xA067 => %{
        keyword: :DocumentAuthorTrial,
        name: "Document Author (Trial)",
        vr: :PN
      },
      0xA068 => %{
        keyword: :DocumentAuthorIdentifierCodeSequenceTrial,
        name: "Document Author Identifier Code Sequence (Trial)",
        vr: :SQ
      },
      0xA070 => %{
        keyword: :IdentifierCodeSequenceTrial,
        name: "Identifier Code Sequence (Trial)",
        vr: :SQ
      },
      0xA073 => %{
        keyword: :VerifyingObserverSequence,
        name: "Verifying Observer Sequence",
        vr: :SQ
      },
      0xA074 => %{
        keyword: :ObjectBinaryIdentifierTrial,
        name: "Object Binary Identifier (Trial)",
        vr: :OB
      },
      0xA075 => %{
        keyword: :VerifyingObserverName,
        name: "Verifying Observer Name",
        vr: :PN
      },
      0xA076 => %{
        keyword: :DocumentingObserverIdentifierCodeSequenceTrial,
        name: "Documenting Observer Identifier Code Sequence (Trial)",
        vr: :SQ
      },
      0xA078 => %{
        keyword: :AuthorObserverSequence,
        name: "Author Observer Sequence",
        vr: :SQ
      },
      0xA07A => %{
        keyword: :ParticipantSequence,
        name: "Participant Sequence",
        vr: :SQ
      },
      0xA07C => %{
        keyword: :CustodialOrganizationSequence,
        name: "Custodial Organization Sequence",
        vr: :SQ
      },
      0xA080 => %{
        keyword: :ParticipationType,
        name: "Participation Type",
        vr: :CS
      },
      0xA082 => %{
        keyword: :ParticipationDateTime,
        name: "Participation DateTime",
        vr: :DT
      },
      0xA084 => %{
        keyword: :ObserverType,
        name: "Observer Type",
        vr: :CS
      },
      0xA085 => %{
        keyword: :ProcedureIdentifierCodeSequenceTrial,
        name: "Procedure Identifier Code Sequence (Trial)",
        vr: :SQ
      },
      0xA088 => %{
        keyword: :VerifyingObserverIdentificationCodeSequence,
        name: "Verifying Observer Identification Code Sequence",
        vr: :SQ
      },
      0xA089 => %{
        keyword: :ObjectDirectoryBinaryIdentifierTrial,
        name: "Object Directory Binary Identifier (Trial)",
        vr: :OB
      },
      0xA090 => %{
        keyword: :EquivalentCDADocumentSequence,
        name: "Equivalent CDA Document Sequence",
        vr: :SQ
      },
      0xA0B0 => %{
        keyword: :ReferencedWaveformChannels,
        name: "Referenced Waveform Channels",
        vr: :US
      },
      0xA110 => %{
        keyword: :DateOfDocumentOrVerbalTransactionTrial,
        name: "Date of Document or Verbal Transaction (Trial)",
        vr: :DA
      },
      0xA112 => %{
        keyword: :TimeOfDocumentCreationOrVerbalTransactionTrial,
        name: "Time of Document Creation or Verbal Transaction (Trial)",
        vr: :TM
      },
      0xA120 => %{
        keyword: :DateTime,
        name: "DateTime",
        vr: :DT
      },
      0xA121 => %{
        keyword: :Date,
        name: "Date",
        vr: :DA
      },
      0xA122 => %{
        keyword: :Time,
        name: "Time",
        vr: :TM
      },
      0xA123 => %{
        keyword: :PersonName,
        name: "Person Name",
        vr: :PN
      },
      0xA124 => %{
        keyword: :UID,
        name: "UID",
        vr: :UI
      },
      0xA125 => %{
        keyword: :ReportStatusIDTrial,
        name: "Report Status ID (Trial)",
        vr: :CS
      },
      0xA130 => %{
        keyword: :TemporalRangeType,
        name: "Temporal Range Type",
        vr: :CS
      },
      0xA132 => %{
        keyword: :ReferencedSamplePositions,
        name: "Referenced Sample Positions",
        vr: :UL
      },
      0xA136 => %{
        keyword: :ReferencedFrameNumbers,
        name: "Referenced Frame Numbers",
        vr: :US
      },
      0xA138 => %{
        keyword: :ReferencedTimeOffsets,
        name: "Referenced Time Offsets",
        vr: :DS
      },
      0xA13A => %{
        keyword: :ReferencedDateTime,
        name: "Referenced DateTime",
        vr: :DT
      },
      0xA160 => %{
        keyword: :TextValue,
        name: "Text Value",
        vr: :UT
      },
      0xA161 => %{
        keyword: :FloatingPointValue,
        name: "Floating Point Value",
        vr: :FD
      },
      0xA162 => %{
        keyword: :RationalNumeratorValue,
        name: "Rational Numerator Value",
        vr: :SL
      },
      0xA163 => %{
        keyword: :RationalDenominatorValue,
        name: "Rational Denominator Value",
        vr: :UL
      },
      0xA167 => %{
        keyword: :ObservationCategoryCodeSequenceTrial,
        name: "Observation Category Code Sequence (Trial)",
        vr: :SQ
      },
      0xA168 => %{
        keyword: :ConceptCodeSequence,
        name: "Concept Code Sequence",
        vr: :SQ
      },
      0xA16A => %{
        keyword: :BibliographicCitationTrial,
        name: "Bibliographic Citation (Trial)",
        vr: :ST
      },
      0xA170 => %{
        keyword: :PurposeOfReferenceCodeSequence,
        name: "Purpose of Reference Code Sequence",
        vr: :SQ
      },
      0xA171 => %{
        keyword: :ObservationUID,
        name: "Observation UID",
        vr: :UI
      },
      0xA172 => %{
        keyword: :ReferencedObservationUIDTrial,
        name: "Referenced Observation UID (Trial)",
        vr: :UI
      },
      0xA173 => %{
        keyword: :ReferencedObservationClassTrial,
        name: "Referenced Observation Class (Trial)",
        vr: :CS
      },
      0xA174 => %{
        keyword: :ReferencedObjectObservationClassTrial,
        name: "Referenced Object Observation Class (Trial)",
        vr: :CS
      },
      0xA180 => %{
        keyword: :AnnotationGroupNumber,
        name: "Annotation Group Number",
        vr: :US
      },
      0xA192 => %{
        keyword: :ObservationDateTrial,
        name: "Observation Date (Trial)",
        vr: :DA
      },
      0xA193 => %{
        keyword: :ObservationTimeTrial,
        name: "Observation Time (Trial)",
        vr: :TM
      },
      0xA194 => %{
        keyword: :MeasurementAutomationTrial,
        name: "Measurement Automation (Trial)",
        vr: :CS
      },
      0xA195 => %{
        keyword: :ModifierCodeSequence,
        name: "Modifier Code Sequence",
        vr: :SQ
      },
      0xA224 => %{
        keyword: :IdentificationDescriptionTrial,
        name: "Identification Description (Trial)",
        vr: :ST
      },
      0xA290 => %{
        keyword: :CoordinatesSetGeometricTypeTrial,
        name: "Coordinates Set Geometric Type (Trial)",
        vr: :CS
      },
      0xA296 => %{
        keyword: :AlgorithmCodeSequenceTrial,
        name: "Algorithm Code Sequence (Trial)",
        vr: :SQ
      },
      0xA297 => %{
        keyword: :AlgorithmDescriptionTrial,
        name: "Algorithm Description (Trial)",
        vr: :ST
      },
      0xA29A => %{
        keyword: :PixelCoordinatesSetTrial,
        name: "Pixel Coordinates Set (Trial)",
        vr: :SL
      },
      0xA300 => %{
        keyword: :MeasuredValueSequence,
        name: "Measured Value Sequence",
        vr: :SQ
      },
      0xA301 => %{
        keyword: :NumericValueQualifierCodeSequence,
        name: "Numeric Value Qualifier Code Sequence",
        vr: :SQ
      },
      0xA307 => %{
        keyword: :CurrentObserverTrial,
        name: "Current Observer (Trial)",
        vr: :PN
      },
      0xA30A => %{
        keyword: :NumericValue,
        name: "Numeric Value",
        vr: :DS
      },
      0xA313 => %{
        keyword: :ReferencedAccessionSequenceTrial,
        name: "Referenced Accession Sequence (Trial)",
        vr: :SQ
      },
      0xA33A => %{
        keyword: :ReportStatusCommentTrial,
        name: "Report Status Comment (Trial)",
        vr: :ST
      },
      0xA340 => %{
        keyword: :ProcedureContextSequenceTrial,
        name: "Procedure Context Sequence (Trial)",
        vr: :SQ
      },
      0xA352 => %{
        keyword: :VerbalSourceTrial,
        name: "Verbal Source (Trial)",
        vr: :PN
      },
      0xA353 => %{
        keyword: :AddressTrial,
        name: "Address (Trial)",
        vr: :ST
      },
      0xA354 => %{
        keyword: :TelephoneNumberTrial,
        name: "Telephone Number (Trial)",
        vr: :LO
      },
      0xA358 => %{
        keyword: :VerbalSourceIdentifierCodeSequenceTrial,
        name: "Verbal Source Identifier Code Sequence (Trial)",
        vr: :SQ
      },
      0xA360 => %{
        keyword: :PredecessorDocumentsSequence,
        name: "Predecessor Documents Sequence",
        vr: :SQ
      },
      0xA370 => %{
        keyword: :ReferencedRequestSequence,
        name: "Referenced Request Sequence",
        vr: :SQ
      },
      0xA372 => %{
        keyword: :PerformedProcedureCodeSequence,
        name: "Performed Procedure Code Sequence",
        vr: :SQ
      },
      0xA375 => %{
        keyword: :CurrentRequestedProcedureEvidenceSequence,
        name: "Current Requested Procedure Evidence Sequence",
        vr: :SQ
      },
      0xA380 => %{
        keyword: :ReportDetailSequenceTrial,
        name: "Report Detail Sequence (Trial)",
        vr: :SQ
      },
      0xA385 => %{
        keyword: :PertinentOtherEvidenceSequence,
        name: "Pertinent Other Evidence Sequence",
        vr: :SQ
      },
      0xA390 => %{
        keyword: :HL7StructuredDocumentReferenceSequence,
        name: "HL7 Structured Document Reference Sequence",
        vr: :SQ
      },
      0xA402 => %{
        keyword: :ObservationSubjectUIDTrial,
        name: "Observation Subject UID (Trial)",
        vr: :UI
      },
      0xA403 => %{
        keyword: :ObservationSubjectClassTrial,
        name: "Observation Subject Class (Trial)",
        vr: :CS
      },
      0xA404 => %{
        keyword: :ObservationSubjectTypeCodeSequenceTrial,
        name: "Observation Subject Type Code Sequence (Trial)",
        vr: :SQ
      },
      0xA491 => %{
        keyword: :CompletionFlag,
        name: "Completion Flag",
        vr: :CS
      },
      0xA492 => %{
        keyword: :CompletionFlagDescription,
        name: "Completion Flag Description",
        vr: :LO
      },
      0xA493 => %{
        keyword: :VerificationFlag,
        name: "Verification Flag",
        vr: :CS
      },
      0xA494 => %{
        keyword: :ArchiveRequested,
        name: "Archive Requested",
        vr: :CS
      },
      0xA496 => %{
        keyword: :PreliminaryFlag,
        name: "Preliminary Flag",
        vr: :CS
      },
      0xA504 => %{
        keyword: :ContentTemplateSequence,
        name: "Content Template Sequence",
        vr: :SQ
      },
      0xA525 => %{
        keyword: :IdenticalDocumentsSequence,
        name: "Identical Documents Sequence",
        vr: :SQ
      },
      0xA600 => %{
        keyword: :ObservationSubjectContextFlagTrial,
        name: "Observation Subject Context Flag (Trial)",
        vr: :CS
      },
      0xA601 => %{
        keyword: :ObserverContextFlagTrial,
        name: "Observer Context Flag (Trial)",
        vr: :CS
      },
      0xA603 => %{
        keyword: :ProcedureContextFlagTrial,
        name: "Procedure Context Flag (Trial)",
        vr: :CS
      },
      0xA730 => %{
        keyword: :ContentSequence,
        name: "Content Sequence",
        vr: :SQ
      },
      0xA731 => %{
        keyword: :RelationshipSequenceTrial,
        name: "Relationship Sequence (Trial)",
        vr: :SQ
      },
      0xA732 => %{
        keyword: :RelationshipTypeCodeSequenceTrial,
        name: "Relationship Type Code Sequence (Trial)",
        vr: :SQ
      },
      0xA744 => %{
        keyword: :LanguageCodeSequenceTrial,
        name: "Language Code Sequence (Trial)",
        vr: :SQ
      },
      0xA801 => %{
        keyword: :TabulatedValuesSequence,
        name: "Tabulated Values Sequence",
        vr: :SQ
      },
      0xA802 => %{
        keyword: :NumberOfTableRows,
        name: "Number of Table Rows",
        vr: :UL
      },
      0xA803 => %{
        keyword: :NumberOfTableColumns,
        name: "Number of Table Columns",
        vr: :UL
      },
      0xA804 => %{
        keyword: :TableRowNumber,
        name: "Table Row Number",
        vr: :UL
      },
      0xA805 => %{
        keyword: :TableColumnNumber,
        name: "Table Column Number",
        vr: :UL
      },
      0xA806 => %{
        keyword: :TableRowDefinitionSequence,
        name: "Table Row Definition Sequence",
        vr: :SQ
      },
      0xA807 => %{
        keyword: :TableColumnDefinitionSequence,
        name: "Table Column Definition Sequence",
        vr: :SQ
      },
      0xA808 => %{
        keyword: :CellValuesSequence,
        name: "Cell Values Sequence",
        vr: :SQ
      },
      0xA992 => %{
        keyword: :UniformResourceLocatorTrial,
        name: "Uniform Resource Locator (Trial)",
        vr: :ST
      },
      0xB020 => %{
        keyword: :WaveformAnnotationSequence,
        name: "Waveform Annotation Sequence",
        vr: :SQ
      },
      0xDB00 => %{
        keyword: :TemplateIdentifier,
        name: "Template Identifier",
        vr: :CS
      },
      0xDB06 => %{
        keyword: :TemplateVersion,
        name: "Template Version",
        vr: :DT
      },
      0xDB07 => %{
        keyword: :TemplateLocalVersion,
        name: "Template Local Version",
        vr: :DT
      },
      0xDB0B => %{
        keyword: :TemplateExtensionFlag,
        name: "Template Extension Flag",
        vr: :CS
      },
      0xDB0C => %{
        keyword: :TemplateExtensionOrganizationUID,
        name: "Template Extension Organization UID",
        vr: :UI
      },
      0xDB0D => %{
        keyword: :TemplateExtensionCreatorUID,
        name: "Template Extension Creator UID",
        vr: :UI
      },
      0xDB73 => %{
        keyword: :ReferencedContentItemIdentifier,
        name: "Referenced Content Item Identifier",
        vr: :UL
      },
      0xE001 => %{
        keyword: :HL7InstanceIdentifier,
        name: "HL7 Instance Identifier",
        vr: :ST
      },
      0xE004 => %{
        keyword: :HL7DocumentEffectiveTime,
        name: "HL7 Document Effective Time",
        vr: :DT
      },
      0xE006 => %{
        keyword: :HL7DocumentTypeCodeSequence,
        name: "HL7 Document Type Code Sequence",
        vr: :SQ
      },
      0xE008 => %{
        keyword: :DocumentClassCodeSequence,
        name: "Document Class Code Sequence",
        vr: :SQ
      },
      0xE010 => %{
        keyword: :RetrieveURI,
        name: "Retrieve URI",
        vr: :UR
      },
      0xE011 => %{
        keyword: :RetrieveLocationUID,
        name: "Retrieve Location UID",
        vr: :UI
      },
      0xE020 => %{
        keyword: :TypeOfInstances,
        name: "Type of Instances",
        vr: :CS
      },
      0xE021 => %{
        keyword: :DICOMRetrievalSequence,
        name: "DICOM Retrieval Sequence",
        vr: :SQ
      },
      0xE022 => %{
        keyword: :DICOMMediaRetrievalSequence,
        name: "DICOM Media Retrieval Sequence",
        vr: :SQ
      },
      0xE023 => %{
        keyword: :WADORetrievalSequence,
        name: "WADO Retrieval Sequence",
        vr: :SQ
      },
      0xE024 => %{
        keyword: :XDSRetrievalSequence,
        name: "XDS Retrieval Sequence",
        vr: :SQ
      },
      0xE025 => %{
        keyword: :WADORSRetrievalSequence,
        name: "WADO-RS Retrieval Sequence",
        vr: :SQ
      },
      0xE030 => %{
        keyword: :RepositoryUniqueID,
        name: "Repository Unique ID",
        vr: :UI
      },
      0xE031 => %{
        keyword: :HomeCommunityID,
        name: "Home Community ID",
        vr: :UI
      }
    },
    0x0042 => %{
      0x0010 => %{
        keyword: :DocumentTitle,
        name: "Document Title",
        vr: :ST
      },
      0x0011 => %{
        keyword: :EncapsulatedDocument,
        name: "Encapsulated Document",
        vr: :OB
      },
      0x0012 => %{
        keyword: :MIMETypeOfEncapsulatedDocument,
        name: "MIME Type of Encapsulated Document",
        vr: :LO
      },
      0x0013 => %{
        keyword: :SourceInstanceSequence,
        name: "Source Instance Sequence",
        vr: :SQ
      },
      0x0014 => %{
        keyword: :ListOfMIMETypes,
        name: "List of MIME Types",
        vr: :LO
      },
      0x0015 => %{
        keyword: :EncapsulatedDocumentLength,
        name: "Encapsulated Document Length",
        vr: :UL
      }
    },
    0x0044 => %{
      0x0001 => %{
        keyword: :ProductPackageIdentifier,
        name: "Product Package Identifier",
        vr: :ST
      },
      0x0002 => %{
        keyword: :SubstanceAdministrationApproval,
        name: "Substance Administration Approval",
        vr: :CS
      },
      0x0003 => %{
        keyword: :ApprovalStatusFurtherDescription,
        name: "Approval Status Further Description",
        vr: :LT
      },
      0x0004 => %{
        keyword: :ApprovalStatusDateTime,
        name: "Approval Status DateTime",
        vr: :DT
      },
      0x0007 => %{
        keyword: :ProductTypeCodeSequence,
        name: "Product Type Code Sequence",
        vr: :SQ
      },
      0x0008 => %{
        keyword: :ProductName,
        name: "Product Name",
        vr: :LO
      },
      0x0009 => %{
        keyword: :ProductDescription,
        name: "Product Description",
        vr: :LT
      },
      0x000A => %{
        keyword: :ProductLotIdentifier,
        name: "Product Lot Identifier",
        vr: :LO
      },
      0x000B => %{
        keyword: :ProductExpirationDateTime,
        name: "Product Expiration DateTime",
        vr: :DT
      },
      0x0010 => %{
        keyword: :SubstanceAdministrationDateTime,
        name: "Substance Administration DateTime",
        vr: :DT
      },
      0x0011 => %{
        keyword: :SubstanceAdministrationNotes,
        name: "Substance Administration Notes",
        vr: :LO
      },
      0x0012 => %{
        keyword: :SubstanceAdministrationDeviceID,
        name: "Substance Administration Device ID",
        vr: :LO
      },
      0x0013 => %{
        keyword: :ProductParameterSequence,
        name: "Product Parameter Sequence",
        vr: :SQ
      },
      0x0019 => %{
        keyword: :SubstanceAdministrationParameterSequence,
        name: "Substance Administration Parameter Sequence",
        vr: :SQ
      },
      0x0100 => %{
        keyword: :ApprovalSequence,
        name: "Approval Sequence",
        vr: :SQ
      },
      0x0101 => %{
        keyword: :AssertionCodeSequence,
        name: "Assertion Code Sequence",
        vr: :SQ
      },
      0x0102 => %{
        keyword: :AssertionUID,
        name: "Assertion UID",
        vr: :UI
      },
      0x0103 => %{
        keyword: :AsserterIdentificationSequence,
        name: "Asserter Identification Sequence",
        vr: :SQ
      },
      0x0104 => %{
        keyword: :AssertionDateTime,
        name: "Assertion DateTime",
        vr: :DT
      },
      0x0105 => %{
        keyword: :AssertionExpirationDateTime,
        name: "Assertion Expiration DateTime",
        vr: :DT
      },
      0x0106 => %{
        keyword: :AssertionComments,
        name: "Assertion Comments",
        vr: :UT
      },
      0x0107 => %{
        keyword: :RelatedAssertionSequence,
        name: "Related Assertion Sequence",
        vr: :SQ
      },
      0x0108 => %{
        keyword: :ReferencedAssertionUID,
        name: "Referenced Assertion UID",
        vr: :UI
      },
      0x0109 => %{
        keyword: :ApprovalSubjectSequence,
        name: "Approval Subject Sequence",
        vr: :SQ
      },
      0x010A => %{
        keyword: :OrganizationalRoleCodeSequence,
        name: "Organizational Role Code Sequence",
        vr: :SQ
      }
    },
    0x0046 => %{
      0x0012 => %{
        keyword: :LensDescription,
        name: "Lens Description",
        vr: :LO
      },
      0x0014 => %{
        keyword: :RightLensSequence,
        name: "Right Lens Sequence",
        vr: :SQ
      },
      0x0015 => %{
        keyword: :LeftLensSequence,
        name: "Left Lens Sequence",
        vr: :SQ
      },
      0x0016 => %{
        keyword: :UnspecifiedLateralityLensSequence,
        name: "Unspecified Laterality Lens Sequence",
        vr: :SQ
      },
      0x0018 => %{
        keyword: :CylinderSequence,
        name: "Cylinder Sequence",
        vr: :SQ
      },
      0x0028 => %{
        keyword: :PrismSequence,
        name: "Prism Sequence",
        vr: :SQ
      },
      0x0030 => %{
        keyword: :HorizontalPrismPower,
        name: "Horizontal Prism Power",
        vr: :FD
      },
      0x0032 => %{
        keyword: :HorizontalPrismBase,
        name: "Horizontal Prism Base",
        vr: :CS
      },
      0x0034 => %{
        keyword: :VerticalPrismPower,
        name: "Vertical Prism Power",
        vr: :FD
      },
      0x0036 => %{
        keyword: :VerticalPrismBase,
        name: "Vertical Prism Base",
        vr: :CS
      },
      0x0038 => %{
        keyword: :LensSegmentType,
        name: "Lens Segment Type",
        vr: :CS
      },
      0x0040 => %{
        keyword: :OpticalTransmittance,
        name: "Optical Transmittance",
        vr: :FD
      },
      0x0042 => %{
        keyword: :ChannelWidth,
        name: "Channel Width",
        vr: :FD
      },
      0x0044 => %{
        keyword: :PupilSize,
        name: "Pupil Size",
        vr: :FD
      },
      0x0046 => %{
        keyword: :CornealSize,
        name: "Corneal Size",
        vr: :FD
      },
      0x0047 => %{
        keyword: :CornealSizeSequence,
        name: "Corneal Size Sequence",
        vr: :SQ
      },
      0x0050 => %{
        keyword: :AutorefractionRightEyeSequence,
        name: "Autorefraction Right Eye Sequence",
        vr: :SQ
      },
      0x0052 => %{
        keyword: :AutorefractionLeftEyeSequence,
        name: "Autorefraction Left Eye Sequence",
        vr: :SQ
      },
      0x0060 => %{
        keyword: :DistancePupillaryDistance,
        name: "Distance Pupillary Distance",
        vr: :FD
      },
      0x0062 => %{
        keyword: :NearPupillaryDistance,
        name: "Near Pupillary Distance",
        vr: :FD
      },
      0x0063 => %{
        keyword: :IntermediatePupillaryDistance,
        name: "Intermediate Pupillary Distance",
        vr: :FD
      },
      0x0064 => %{
        keyword: :OtherPupillaryDistance,
        name: "Other Pupillary Distance",
        vr: :FD
      },
      0x0070 => %{
        keyword: :KeratometryRightEyeSequence,
        name: "Keratometry Right Eye Sequence",
        vr: :SQ
      },
      0x0071 => %{
        keyword: :KeratometryLeftEyeSequence,
        name: "Keratometry Left Eye Sequence",
        vr: :SQ
      },
      0x0074 => %{
        keyword: :SteepKeratometricAxisSequence,
        name: "Steep Keratometric Axis Sequence",
        vr: :SQ
      },
      0x0075 => %{
        keyword: :RadiusOfCurvature,
        name: "Radius of Curvature",
        vr: :FD
      },
      0x0076 => %{
        keyword: :KeratometricPower,
        name: "Keratometric Power",
        vr: :FD
      },
      0x0077 => %{
        keyword: :KeratometricAxis,
        name: "Keratometric Axis",
        vr: :FD
      },
      0x0080 => %{
        keyword: :FlatKeratometricAxisSequence,
        name: "Flat Keratometric Axis Sequence",
        vr: :SQ
      },
      0x0092 => %{
        keyword: :BackgroundColor,
        name: "Background Color",
        vr: :CS
      },
      0x0094 => %{
        keyword: :Optotype,
        name: "Optotype",
        vr: :CS
      },
      0x0095 => %{
        keyword: :OptotypePresentation,
        name: "Optotype Presentation",
        vr: :CS
      },
      0x0097 => %{
        keyword: :SubjectiveRefractionRightEyeSequence,
        name: "Subjective Refraction Right Eye Sequence",
        vr: :SQ
      },
      0x0098 => %{
        keyword: :SubjectiveRefractionLeftEyeSequence,
        name: "Subjective Refraction Left Eye Sequence",
        vr: :SQ
      },
      0x0100 => %{
        keyword: :AddNearSequence,
        name: "Add Near Sequence",
        vr: :SQ
      },
      0x0101 => %{
        keyword: :AddIntermediateSequence,
        name: "Add Intermediate Sequence",
        vr: :SQ
      },
      0x0102 => %{
        keyword: :AddOtherSequence,
        name: "Add Other Sequence",
        vr: :SQ
      },
      0x0104 => %{
        keyword: :AddPower,
        name: "Add Power",
        vr: :FD
      },
      0x0106 => %{
        keyword: :ViewingDistance,
        name: "Viewing Distance",
        vr: :FD
      },
      0x0110 => %{
        keyword: :CorneaMeasurementsSequence,
        name: "Cornea Measurements Sequence",
        vr: :SQ
      },
      0x0111 => %{
        keyword: :SourceOfCorneaMeasurementDataCodeSequence,
        name: "Source of Cornea Measurement Data Code Sequence",
        vr: :SQ
      },
      0x0112 => %{
        keyword: :SteepCornealAxisSequence,
        name: "Steep Corneal Axis Sequence",
        vr: :SQ
      },
      0x0113 => %{
        keyword: :FlatCornealAxisSequence,
        name: "Flat Corneal Axis Sequence",
        vr: :SQ
      },
      0x0114 => %{
        keyword: :CornealPower,
        name: "Corneal Power",
        vr: :FD
      },
      0x0115 => %{
        keyword: :CornealAxis,
        name: "Corneal Axis",
        vr: :FD
      },
      0x0116 => %{
        keyword: :CorneaMeasurementMethodCodeSequence,
        name: "Cornea Measurement Method Code Sequence",
        vr: :SQ
      },
      0x0117 => %{
        keyword: :RefractiveIndexOfCornea,
        name: "Refractive Index of Cornea",
        vr: :FL
      },
      0x0118 => %{
        keyword: :RefractiveIndexOfAqueousHumor,
        name: "Refractive Index of Aqueous Humor",
        vr: :FL
      },
      0x0121 => %{
        keyword: :VisualAcuityTypeCodeSequence,
        name: "Visual Acuity Type Code Sequence",
        vr: :SQ
      },
      0x0122 => %{
        keyword: :VisualAcuityRightEyeSequence,
        name: "Visual Acuity Right Eye Sequence",
        vr: :SQ
      },
      0x0123 => %{
        keyword: :VisualAcuityLeftEyeSequence,
        name: "Visual Acuity Left Eye Sequence",
        vr: :SQ
      },
      0x0124 => %{
        keyword: :VisualAcuityBothEyesOpenSequence,
        name: "Visual Acuity Both Eyes Open Sequence",
        vr: :SQ
      },
      0x0125 => %{
        keyword: :ViewingDistanceType,
        name: "Viewing Distance Type",
        vr: :CS
      },
      0x0135 => %{
        keyword: :VisualAcuityModifiers,
        name: "Visual Acuity Modifiers",
        vr: :SS
      },
      0x0137 => %{
        keyword: :DecimalVisualAcuity,
        name: "Decimal Visual Acuity",
        vr: :FD
      },
      0x0139 => %{
        keyword: :OptotypeDetailedDefinition,
        name: "Optotype Detailed Definition",
        vr: :LO
      },
      0x0145 => %{
        keyword: :ReferencedRefractiveMeasurementsSequence,
        name: "Referenced Refractive Measurements Sequence",
        vr: :SQ
      },
      0x0146 => %{
        keyword: :SpherePower,
        name: "Sphere Power",
        vr: :FD
      },
      0x0147 => %{
        keyword: :CylinderPower,
        name: "Cylinder Power",
        vr: :FD
      },
      0x0201 => %{
        keyword: :CornealTopographySurface,
        name: "Corneal Topography Surface",
        vr: :CS
      },
      0x0202 => %{
        keyword: :CornealVertexLocation,
        name: "Corneal Vertex Location",
        vr: :FL
      },
      0x0203 => %{
        keyword: :PupilCentroidXCoordinate,
        name: "Pupil Centroid X-Coordinate",
        vr: :FL
      },
      0x0204 => %{
        keyword: :PupilCentroidYCoordinate,
        name: "Pupil Centroid Y-Coordinate",
        vr: :FL
      },
      0x0205 => %{
        keyword: :EquivalentPupilRadius,
        name: "Equivalent Pupil Radius",
        vr: :FL
      },
      0x0207 => %{
        keyword: :CornealTopographyMapTypeCodeSequence,
        name: "Corneal Topography Map Type Code Sequence",
        vr: :SQ
      },
      0x0208 => %{
        keyword: :VerticesOfTheOutlineOfPupil,
        name: "Vertices of the Outline of Pupil",
        vr: :IS
      },
      0x0210 => %{
        keyword: :CornealTopographyMappingNormalsSequence,
        name: "Corneal Topography Mapping Normals Sequence",
        vr: :SQ
      },
      0x0211 => %{
        keyword: :MaximumCornealCurvatureSequence,
        name: "Maximum Corneal Curvature Sequence",
        vr: :SQ
      },
      0x0212 => %{
        keyword: :MaximumCornealCurvature,
        name: "Maximum Corneal Curvature",
        vr: :FL
      },
      0x0213 => %{
        keyword: :MaximumCornealCurvatureLocation,
        name: "Maximum Corneal Curvature Location",
        vr: :FL
      },
      0x0215 => %{
        keyword: :MinimumKeratometricSequence,
        name: "Minimum Keratometric Sequence",
        vr: :SQ
      },
      0x0218 => %{
        keyword: :SimulatedKeratometricCylinderSequence,
        name: "Simulated Keratometric Cylinder Sequence",
        vr: :SQ
      },
      0x0220 => %{
        keyword: :AverageCornealPower,
        name: "Average Corneal Power",
        vr: :FL
      },
      0x0224 => %{
        keyword: :CornealISValue,
        name: "Corneal I-S Value",
        vr: :FL
      },
      0x0227 => %{
        keyword: :AnalyzedArea,
        name: "Analyzed Area",
        vr: :FL
      },
      0x0230 => %{
        keyword: :SurfaceRegularityIndex,
        name: "Surface Regularity Index",
        vr: :FL
      },
      0x0232 => %{
        keyword: :SurfaceAsymmetryIndex,
        name: "Surface Asymmetry Index",
        vr: :FL
      },
      0x0234 => %{
        keyword: :CornealEccentricityIndex,
        name: "Corneal Eccentricity Index",
        vr: :FL
      },
      0x0236 => %{
        keyword: :KeratoconusPredictionIndex,
        name: "Keratoconus Prediction Index",
        vr: :FL
      },
      0x0238 => %{
        keyword: :DecimalPotentialVisualAcuity,
        name: "Decimal Potential Visual Acuity",
        vr: :FL
      },
      0x0242 => %{
        keyword: :CornealTopographyMapQualityEvaluation,
        name: "Corneal Topography Map Quality Evaluation",
        vr: :CS
      },
      0x0244 => %{
        keyword: :SourceImageCornealProcessedDataSequence,
        name: "Source Image Corneal Processed Data Sequence",
        vr: :SQ
      },
      0x0247 => %{
        keyword: :CornealPointLocation,
        name: "Corneal Point Location",
        vr: :FL
      },
      0x0248 => %{
        keyword: :CornealPointEstimated,
        name: "Corneal Point Estimated",
        vr: :CS
      },
      0x0249 => %{
        keyword: :AxialPower,
        name: "Axial Power",
        vr: :FL
      },
      0x0250 => %{
        keyword: :TangentialPower,
        name: "Tangential Power",
        vr: :FL
      },
      0x0251 => %{
        keyword: :RefractivePower,
        name: "Refractive Power",
        vr: :FL
      },
      0x0252 => %{
        keyword: :RelativeElevation,
        name: "Relative Elevation",
        vr: :FL
      },
      0x0253 => %{
        keyword: :CornealWavefront,
        name: "Corneal Wavefront",
        vr: :FL
      }
    },
    0x0048 => %{
      0x0001 => %{
        keyword: :ImagedVolumeWidth,
        name: "Imaged Volume Width",
        vr: :FL
      },
      0x0002 => %{
        keyword: :ImagedVolumeHeight,
        name: "Imaged Volume Height",
        vr: :FL
      },
      0x0003 => %{
        keyword: :ImagedVolumeDepth,
        name: "Imaged Volume Depth",
        vr: :FL
      },
      0x0006 => %{
        keyword: :TotalPixelMatrixColumns,
        name: "Total Pixel Matrix Columns",
        vr: :UL
      },
      0x0007 => %{
        keyword: :TotalPixelMatrixRows,
        name: "Total Pixel Matrix Rows",
        vr: :UL
      },
      0x0008 => %{
        keyword: :TotalPixelMatrixOriginSequence,
        name: "Total Pixel Matrix Origin Sequence",
        vr: :SQ
      },
      0x0010 => %{
        keyword: :SpecimenLabelInImage,
        name: "Specimen Label in Image",
        vr: :CS
      },
      0x0011 => %{
        keyword: :FocusMethod,
        name: "Focus Method",
        vr: :CS
      },
      0x0012 => %{
        keyword: :ExtendedDepthOfField,
        name: "Extended Depth of Field",
        vr: :CS
      },
      0x0013 => %{
        keyword: :NumberOfFocalPlanes,
        name: "Number of Focal Planes",
        vr: :US
      },
      0x0014 => %{
        keyword: :DistanceBetweenFocalPlanes,
        name: "Distance Between Focal Planes",
        vr: :FL
      },
      0x0015 => %{
        keyword: :RecommendedAbsentPixelCIELabValue,
        name: "Recommended Absent Pixel CIELab Value",
        vr: :US
      },
      0x0100 => %{
        keyword: :IlluminatorTypeCodeSequence,
        name: "Illuminator Type Code Sequence",
        vr: :SQ
      },
      0x0102 => %{
        keyword: :ImageOrientationSlide,
        name: "Image Orientation (Slide)",
        vr: :DS
      },
      0x0105 => %{
        keyword: :OpticalPathSequence,
        name: "Optical Path Sequence",
        vr: :SQ
      },
      0x0106 => %{
        keyword: :OpticalPathIdentifier,
        name: "Optical Path Identifier",
        vr: :SH
      },
      0x0107 => %{
        keyword: :OpticalPathDescription,
        name: "Optical Path Description",
        vr: :ST
      },
      0x0108 => %{
        keyword: :IlluminationColorCodeSequence,
        name: "Illumination Color Code Sequence",
        vr: :SQ
      },
      0x0110 => %{
        keyword: :SpecimenReferenceSequence,
        name: "Specimen Reference Sequence",
        vr: :SQ
      },
      0x0111 => %{
        keyword: :CondenserLensPower,
        name: "Condenser Lens Power",
        vr: :DS
      },
      0x0112 => %{
        keyword: :ObjectiveLensPower,
        name: "Objective Lens Power",
        vr: :DS
      },
      0x0113 => %{
        keyword: :ObjectiveLensNumericalAperture,
        name: "Objective Lens Numerical Aperture",
        vr: :DS
      },
      0x0114 => %{
        keyword: :ConfocalMode,
        name: "Confocal Mode",
        vr: :CS
      },
      0x0115 => %{
        keyword: :TissueLocation,
        name: "Tissue Location",
        vr: :CS
      },
      0x0116 => %{
        keyword: :ConfocalMicroscopyImageFrameTypeSequence,
        name: "Confocal Microscopy Image Frame Type Sequence",
        vr: :SQ
      },
      0x0117 => %{
        keyword: :ImageAcquisitionDepth,
        name: "Image Acquisition Depth",
        vr: :FD
      },
      0x0120 => %{
        keyword: :PaletteColorLookupTableSequence,
        name: "Palette Color Lookup Table Sequence",
        vr: :SQ
      },
      0x0200 => %{
        keyword: :ReferencedImageNavigationSequence,
        name: "Referenced Image Navigation Sequence",
        vr: :SQ
      },
      0x0201 => %{
        keyword: :TopLeftHandCornerOfLocalizerArea,
        name: "Top Left Hand Corner of Localizer Area",
        vr: :US
      },
      0x0202 => %{
        keyword: :BottomRightHandCornerOfLocalizerArea,
        name: "Bottom Right Hand Corner of Localizer Area",
        vr: :US
      },
      0x0207 => %{
        keyword: :OpticalPathIdentificationSequence,
        name: "Optical Path Identification Sequence",
        vr: :SQ
      },
      0x021A => %{
        keyword: :PlanePositionSlideSequence,
        name: "Plane Position (Slide) Sequence",
        vr: :SQ
      },
      0x021E => %{
        keyword: :ColumnPositionInTotalImagePixelMatrix,
        name: "Column Position In Total Image Pixel Matrix",
        vr: :SL
      },
      0x021F => %{
        keyword: :RowPositionInTotalImagePixelMatrix,
        name: "Row Position In Total Image Pixel Matrix",
        vr: :SL
      },
      0x0301 => %{
        keyword: :PixelOriginInterpretation,
        name: "Pixel Origin Interpretation",
        vr: :CS
      },
      0x0302 => %{
        keyword: :NumberOfOpticalPaths,
        name: "Number of Optical Paths",
        vr: :UL
      },
      0x0303 => %{
        keyword: :TotalPixelMatrixFocalPlanes,
        name: "Total Pixel Matrix Focal Planes",
        vr: :UL
      }
    },
    0x0050 => %{
      0x0004 => %{
        keyword: :CalibrationImage,
        name: "Calibration Image",
        vr: :CS
      },
      0x0010 => %{
        keyword: :DeviceSequence,
        name: "Device Sequence",
        vr: :SQ
      },
      0x0012 => %{
        keyword: :ContainerComponentTypeCodeSequence,
        name: "Container Component Type Code Sequence",
        vr: :SQ
      },
      0x0013 => %{
        keyword: :ContainerComponentThickness,
        name: "Container Component Thickness",
        vr: :FD
      },
      0x0014 => %{
        keyword: :DeviceLength,
        name: "Device Length",
        vr: :DS
      },
      0x0015 => %{
        keyword: :ContainerComponentWidth,
        name: "Container Component Width",
        vr: :FD
      },
      0x0016 => %{
        keyword: :DeviceDiameter,
        name: "Device Diameter",
        vr: :DS
      },
      0x0017 => %{
        keyword: :DeviceDiameterUnits,
        name: "Device Diameter Units",
        vr: :CS
      },
      0x0018 => %{
        keyword: :DeviceVolume,
        name: "Device Volume",
        vr: :DS
      },
      0x0019 => %{
        keyword: :InterMarkerDistance,
        name: "Inter-Marker Distance",
        vr: :DS
      },
      0x001A => %{
        keyword: :ContainerComponentMaterial,
        name: "Container Component Material",
        vr: :CS
      },
      0x001B => %{
        keyword: :ContainerComponentID,
        name: "Container Component ID",
        vr: :LO
      },
      0x001C => %{
        keyword: :ContainerComponentLength,
        name: "Container Component Length",
        vr: :FD
      },
      0x001D => %{
        keyword: :ContainerComponentDiameter,
        name: "Container Component Diameter",
        vr: :FD
      },
      0x001E => %{
        keyword: :ContainerComponentDescription,
        name: "Container Component Description",
        vr: :LO
      },
      0x0020 => %{
        keyword: :DeviceDescription,
        name: "Device Description",
        vr: :LO
      },
      0x0021 => %{
        keyword: :LongDeviceDescription,
        name: "Long Device Description",
        vr: :ST
      }
    },
    0x0052 => %{
      0x0001 => %{
        keyword: :ContrastBolusIngredientPercentByVolume,
        name: "Contrast/Bolus Ingredient Percent by Volume",
        vr: :FL
      },
      0x0002 => %{
        keyword: :OCTFocalDistance,
        name: "OCT Focal Distance",
        vr: :FD
      },
      0x0003 => %{
        keyword: :BeamSpotSize,
        name: "Beam Spot Size",
        vr: :FD
      },
      0x0004 => %{
        keyword: :EffectiveRefractiveIndex,
        name: "Effective Refractive Index",
        vr: :FD
      },
      0x0006 => %{
        keyword: :OCTAcquisitionDomain,
        name: "OCT Acquisition Domain",
        vr: :CS
      },
      0x0007 => %{
        keyword: :OCTOpticalCenterWavelength,
        name: "OCT Optical Center Wavelength",
        vr: :FD
      },
      0x0008 => %{
        keyword: :AxialResolution,
        name: "Axial Resolution",
        vr: :FD
      },
      0x0009 => %{
        keyword: :RangingDepth,
        name: "Ranging Depth",
        vr: :FD
      },
      0x0011 => %{
        keyword: :ALineRate,
        name: "A-line Rate",
        vr: :FD
      },
      0x0012 => %{
        keyword: :ALinesPerFrame,
        name: "A-lines Per Frame",
        vr: :US
      },
      0x0013 => %{
        keyword: :CatheterRotationalRate,
        name: "Catheter Rotational Rate",
        vr: :FD
      },
      0x0014 => %{
        keyword: :ALinePixelSpacing,
        name: "A-line Pixel Spacing",
        vr: :FD
      },
      0x0016 => %{
        keyword: :ModeOfPercutaneousAccessSequence,
        name: "Mode of Percutaneous Access Sequence",
        vr: :SQ
      },
      0x0025 => %{
        keyword: :IntravascularOCTFrameTypeSequence,
        name: "Intravascular OCT Frame Type Sequence",
        vr: :SQ
      },
      0x0026 => %{
        keyword: :OCTZOffsetApplied,
        name: "OCT Z Offset Applied",
        vr: :CS
      },
      0x0027 => %{
        keyword: :IntravascularFrameContentSequence,
        name: "Intravascular Frame Content Sequence",
        vr: :SQ
      },
      0x0028 => %{
        keyword: :IntravascularLongitudinalDistance,
        name: "Intravascular Longitudinal Distance",
        vr: :FD
      },
      0x0029 => %{
        keyword: :IntravascularOCTFrameContentSequence,
        name: "Intravascular OCT Frame Content Sequence",
        vr: :SQ
      },
      0x0030 => %{
        keyword: :OCTZOffsetCorrection,
        name: "OCT Z Offset Correction",
        vr: :SS
      },
      0x0031 => %{
        keyword: :CatheterDirectionOfRotation,
        name: "Catheter Direction of Rotation",
        vr: :CS
      },
      0x0033 => %{
        keyword: :SeamLineLocation,
        name: "Seam Line Location",
        vr: :FD
      },
      0x0034 => %{
        keyword: :FirstALineLocation,
        name: "First A-line Location",
        vr: :FD
      },
      0x0036 => %{
        keyword: :SeamLineIndex,
        name: "Seam Line Index",
        vr: :US
      },
      0x0038 => %{
        keyword: :NumberOfPaddedALines,
        name: "Number of Padded A-lines",
        vr: :US
      },
      0x0039 => %{
        keyword: :InterpolationType,
        name: "Interpolation Type",
        vr: :CS
      },
      0x003A => %{
        keyword: :RefractiveIndexApplied,
        name: "Refractive Index Applied",
        vr: :CS
      }
    },
    0x0054 => %{
      0x0010 => %{
        keyword: :EnergyWindowVector,
        name: "Energy Window Vector",
        vr: :US
      },
      0x0011 => %{
        keyword: :NumberOfEnergyWindows,
        name: "Number of Energy Windows",
        vr: :US
      },
      0x0012 => %{
        keyword: :EnergyWindowInformationSequence,
        name: "Energy Window Information Sequence",
        vr: :SQ
      },
      0x0013 => %{
        keyword: :EnergyWindowRangeSequence,
        name: "Energy Window Range Sequence",
        vr: :SQ
      },
      0x0014 => %{
        keyword: :EnergyWindowLowerLimit,
        name: "Energy Window Lower Limit",
        vr: :DS
      },
      0x0015 => %{
        keyword: :EnergyWindowUpperLimit,
        name: "Energy Window Upper Limit",
        vr: :DS
      },
      0x0016 => %{
        keyword: :RadiopharmaceuticalInformationSequence,
        name: "Radiopharmaceutical Information Sequence",
        vr: :SQ
      },
      0x0017 => %{
        keyword: :ResidualSyringeCounts,
        name: "Residual Syringe Counts",
        vr: :IS
      },
      0x0018 => %{
        keyword: :EnergyWindowName,
        name: "Energy Window Name",
        vr: :SH
      },
      0x0020 => %{
        keyword: :DetectorVector,
        name: "Detector Vector",
        vr: :US
      },
      0x0021 => %{
        keyword: :NumberOfDetectors,
        name: "Number of Detectors",
        vr: :US
      },
      0x0022 => %{
        keyword: :DetectorInformationSequence,
        name: "Detector Information Sequence",
        vr: :SQ
      },
      0x0030 => %{
        keyword: :PhaseVector,
        name: "Phase Vector",
        vr: :US
      },
      0x0031 => %{
        keyword: :NumberOfPhases,
        name: "Number of Phases",
        vr: :US
      },
      0x0032 => %{
        keyword: :PhaseInformationSequence,
        name: "Phase Information Sequence",
        vr: :SQ
      },
      0x0033 => %{
        keyword: :NumberOfFramesInPhase,
        name: "Number of Frames in Phase",
        vr: :US
      },
      0x0036 => %{
        keyword: :PhaseDelay,
        name: "Phase Delay",
        vr: :IS
      },
      0x0038 => %{
        keyword: :PauseBetweenFrames,
        name: "Pause Between Frames",
        vr: :IS
      },
      0x0039 => %{
        keyword: :PhaseDescription,
        name: "Phase Description",
        vr: :CS
      },
      0x0050 => %{
        keyword: :RotationVector,
        name: "Rotation Vector",
        vr: :US
      },
      0x0051 => %{
        keyword: :NumberOfRotations,
        name: "Number of Rotations",
        vr: :US
      },
      0x0052 => %{
        keyword: :RotationInformationSequence,
        name: "Rotation Information Sequence",
        vr: :SQ
      },
      0x0053 => %{
        keyword: :NumberOfFramesInRotation,
        name: "Number of Frames in Rotation",
        vr: :US
      },
      0x0060 => %{
        keyword: :RRIntervalVector,
        name: "R-R Interval Vector",
        vr: :US
      },
      0x0061 => %{
        keyword: :NumberOfRRIntervals,
        name: "Number of R-R Intervals",
        vr: :US
      },
      0x0062 => %{
        keyword: :GatedInformationSequence,
        name: "Gated Information Sequence",
        vr: :SQ
      },
      0x0063 => %{
        keyword: :DataInformationSequence,
        name: "Data Information Sequence",
        vr: :SQ
      },
      0x0070 => %{
        keyword: :TimeSlotVector,
        name: "Time Slot Vector",
        vr: :US
      },
      0x0071 => %{
        keyword: :NumberOfTimeSlots,
        name: "Number of Time Slots",
        vr: :US
      },
      0x0072 => %{
        keyword: :TimeSlotInformationSequence,
        name: "Time Slot Information Sequence",
        vr: :SQ
      },
      0x0073 => %{
        keyword: :TimeSlotTime,
        name: "Time Slot Time",
        vr: :DS
      },
      0x0080 => %{
        keyword: :SliceVector,
        name: "Slice Vector",
        vr: :US
      },
      0x0081 => %{
        keyword: :NumberOfSlices,
        name: "Number of Slices",
        vr: :US
      },
      0x0090 => %{
        keyword: :AngularViewVector,
        name: "Angular View Vector",
        vr: :US
      },
      0x0100 => %{
        keyword: :TimeSliceVector,
        name: "Time Slice Vector",
        vr: :US
      },
      0x0101 => %{
        keyword: :NumberOfTimeSlices,
        name: "Number of Time Slices",
        vr: :US
      },
      0x0200 => %{
        keyword: :StartAngle,
        name: "Start Angle",
        vr: :DS
      },
      0x0202 => %{
        keyword: :TypeOfDetectorMotion,
        name: "Type of Detector Motion",
        vr: :CS
      },
      0x0210 => %{
        keyword: :TriggerVector,
        name: "Trigger Vector",
        vr: :IS
      },
      0x0211 => %{
        keyword: :NumberOfTriggersInPhase,
        name: "Number of Triggers in Phase",
        vr: :US
      },
      0x0220 => %{
        keyword: :ViewCodeSequence,
        name: "View Code Sequence",
        vr: :SQ
      },
      0x0222 => %{
        keyword: :ViewModifierCodeSequence,
        name: "View Modifier Code Sequence",
        vr: :SQ
      },
      0x0300 => %{
        keyword: :RadionuclideCodeSequence,
        name: "Radionuclide Code Sequence",
        vr: :SQ
      },
      0x0302 => %{
        keyword: :AdministrationRouteCodeSequence,
        name: "Administration Route Code Sequence",
        vr: :SQ
      },
      0x0304 => %{
        keyword: :RadiopharmaceuticalCodeSequence,
        name: "Radiopharmaceutical Code Sequence",
        vr: :SQ
      },
      0x0306 => %{
        keyword: :CalibrationDataSequence,
        name: "Calibration Data Sequence",
        vr: :SQ
      },
      0x0308 => %{
        keyword: :EnergyWindowNumber,
        name: "Energy Window Number",
        vr: :US
      },
      0x0400 => %{
        keyword: :ImageID,
        name: "Image ID",
        vr: :SH
      },
      0x0410 => %{
        keyword: :PatientOrientationCodeSequence,
        name: "Patient Orientation Code Sequence",
        vr: :SQ
      },
      0x0412 => %{
        keyword: :PatientOrientationModifierCodeSequence,
        name: "Patient Orientation Modifier Code Sequence",
        vr: :SQ
      },
      0x0414 => %{
        keyword: :PatientGantryRelationshipCodeSequence,
        name: "Patient Gantry Relationship Code Sequence",
        vr: :SQ
      },
      0x0500 => %{
        keyword: :SliceProgressionDirection,
        name: "Slice Progression Direction",
        vr: :CS
      },
      0x0501 => %{
        keyword: :ScanProgressionDirection,
        name: "Scan Progression Direction",
        vr: :CS
      },
      0x1000 => %{
        keyword: :SeriesType,
        name: "Series Type",
        vr: :CS
      },
      0x1001 => %{
        keyword: :Units,
        name: "Units",
        vr: :CS
      },
      0x1002 => %{
        keyword: :CountsSource,
        name: "Counts Source",
        vr: :CS
      },
      0x1004 => %{
        keyword: :ReprojectionMethod,
        name: "Reprojection Method",
        vr: :CS
      },
      0x1006 => %{
        keyword: :SUVType,
        name: "SUV Type",
        vr: :CS
      },
      0x1100 => %{
        keyword: :RandomsCorrectionMethod,
        name: "Randoms Correction Method",
        vr: :CS
      },
      0x1101 => %{
        keyword: :AttenuationCorrectionMethod,
        name: "Attenuation Correction Method",
        vr: :LO
      },
      0x1102 => %{
        keyword: :DecayCorrection,
        name: "Decay Correction",
        vr: :CS
      },
      0x1103 => %{
        keyword: :ReconstructionMethod,
        name: "Reconstruction Method",
        vr: :LO
      },
      0x1104 => %{
        keyword: :DetectorLinesOfResponseUsed,
        name: "Detector Lines of Response Used",
        vr: :LO
      },
      0x1105 => %{
        keyword: :ScatterCorrectionMethod,
        name: "Scatter Correction Method",
        vr: :LO
      },
      0x1200 => %{
        keyword: :AxialAcceptance,
        name: "Axial Acceptance",
        vr: :DS
      },
      0x1201 => %{
        keyword: :AxialMash,
        name: "Axial Mash",
        vr: :IS
      },
      0x1202 => %{
        keyword: :TransverseMash,
        name: "Transverse Mash",
        vr: :IS
      },
      0x1203 => %{
        keyword: :DetectorElementSize,
        name: "Detector Element Size",
        vr: :DS
      },
      0x1210 => %{
        keyword: :CoincidenceWindowWidth,
        name: "Coincidence Window Width",
        vr: :DS
      },
      0x1220 => %{
        keyword: :SecondaryCountsType,
        name: "Secondary Counts Type",
        vr: :CS
      },
      0x1300 => %{
        keyword: :FrameReferenceTime,
        name: "Frame Reference Time",
        vr: :DS
      },
      0x1310 => %{
        keyword: :PrimaryPromptsCountsAccumulated,
        name: "Primary (Prompts) Counts Accumulated",
        vr: :IS
      },
      0x1311 => %{
        keyword: :SecondaryCountsAccumulated,
        name: "Secondary Counts Accumulated",
        vr: :IS
      },
      0x1320 => %{
        keyword: :SliceSensitivityFactor,
        name: "Slice Sensitivity Factor",
        vr: :DS
      },
      0x1321 => %{
        keyword: :DecayFactor,
        name: "Decay Factor",
        vr: :DS
      },
      0x1322 => %{
        keyword: :DoseCalibrationFactor,
        name: "Dose Calibration Factor",
        vr: :DS
      },
      0x1323 => %{
        keyword: :ScatterFractionFactor,
        name: "Scatter Fraction Factor",
        vr: :DS
      },
      0x1324 => %{
        keyword: :DeadTimeFactor,
        name: "Dead Time Factor",
        vr: :DS
      },
      0x1330 => %{
        keyword: :ImageIndex,
        name: "Image Index",
        vr: :US
      },
      0x1400 => %{
        keyword: :CountsIncluded,
        name: "Counts Included",
        vr: :CS
      },
      0x1401 => %{
        keyword: :DeadTimeCorrectionFlag,
        name: "Dead Time Correction Flag",
        vr: :CS
      }
    },
    0x0060 => %{
      0x3000 => %{
        keyword: :HistogramSequence,
        name: "Histogram Sequence",
        vr: :SQ
      },
      0x3002 => %{
        keyword: :HistogramNumberOfBins,
        name: "Histogram Number of Bins",
        vr: :US
      },
      0x3004 => %{
        keyword: :HistogramFirstBinValue,
        name: "Histogram First Bin Value",
        vr: :US
      },
      0x3006 => %{
        keyword: :HistogramLastBinValue,
        name: "Histogram Last Bin Value",
        vr: :US
      },
      0x3008 => %{
        keyword: :HistogramBinWidth,
        name: "Histogram Bin Width",
        vr: :US
      },
      0x3010 => %{
        keyword: :HistogramExplanation,
        name: "Histogram Explanation",
        vr: :LO
      },
      0x3020 => %{
        keyword: :HistogramData,
        name: "Histogram Data",
        vr: :UL
      }
    },
    0x0062 => %{
      0x0001 => %{
        keyword: :SegmentationType,
        name: "Segmentation Type",
        vr: :CS
      },
      0x0002 => %{
        keyword: :SegmentSequence,
        name: "Segment Sequence",
        vr: :SQ
      },
      0x0003 => %{
        keyword: :SegmentedPropertyCategoryCodeSequence,
        name: "Segmented Property Category Code Sequence",
        vr: :SQ
      },
      0x0004 => %{
        keyword: :SegmentNumber,
        name: "Segment Number",
        vr: :US
      },
      0x0005 => %{
        keyword: :SegmentLabel,
        name: "Segment Label",
        vr: :LO
      },
      0x0006 => %{
        keyword: :SegmentDescription,
        name: "Segment Description",
        vr: :ST
      },
      0x0007 => %{
        keyword: :SegmentationAlgorithmIdentificationSequence,
        name: "Segmentation Algorithm Identification Sequence",
        vr: :SQ
      },
      0x0008 => %{
        keyword: :SegmentAlgorithmType,
        name: "Segment Algorithm Type",
        vr: :CS
      },
      0x0009 => %{
        keyword: :SegmentAlgorithmName,
        name: "Segment Algorithm Name",
        vr: :LO
      },
      0x000A => %{
        keyword: :SegmentIdentificationSequence,
        name: "Segment Identification Sequence",
        vr: :SQ
      },
      0x000B => %{
        keyword: :ReferencedSegmentNumber,
        name: "Referenced Segment Number",
        vr: :US
      },
      0x000C => %{
        keyword: :RecommendedDisplayGrayscaleValue,
        name: "Recommended Display Grayscale Value",
        vr: :US
      },
      0x000D => %{
        keyword: :RecommendedDisplayCIELabValue,
        name: "Recommended Display CIELab Value",
        vr: :US
      },
      0x000E => %{
        keyword: :MaximumFractionalValue,
        name: "Maximum Fractional Value",
        vr: :US
      },
      0x000F => %{
        keyword: :SegmentedPropertyTypeCodeSequence,
        name: "Segmented Property Type Code Sequence",
        vr: :SQ
      },
      0x0010 => %{
        keyword: :SegmentationFractionalType,
        name: "Segmentation Fractional Type",
        vr: :CS
      },
      0x0011 => %{
        keyword: :SegmentedPropertyTypeModifierCodeSequence,
        name: "Segmented Property Type Modifier Code Sequence",
        vr: :SQ
      },
      0x0012 => %{
        keyword: :UsedSegmentsSequence,
        name: "Used Segments Sequence",
        vr: :SQ
      },
      0x0013 => %{
        keyword: :SegmentsOverlap,
        name: "Segments Overlap",
        vr: :CS
      },
      0x0020 => %{
        keyword: :TrackingID,
        name: "Tracking ID",
        vr: :UT
      },
      0x0021 => %{
        keyword: :TrackingUID,
        name: "Tracking UID",
        vr: :UI
      }
    },
    0x0064 => %{
      0x0002 => %{
        keyword: :DeformableRegistrationSequence,
        name: "Deformable Registration Sequence",
        vr: :SQ
      },
      0x0003 => %{
        keyword: :SourceFrameOfReferenceUID,
        name: "Source Frame of Reference UID",
        vr: :UI
      },
      0x0005 => %{
        keyword: :DeformableRegistrationGridSequence,
        name: "Deformable Registration Grid Sequence",
        vr: :SQ
      },
      0x0007 => %{
        keyword: :GridDimensions,
        name: "Grid Dimensions",
        vr: :UL
      },
      0x0008 => %{
        keyword: :GridResolution,
        name: "Grid Resolution",
        vr: :FD
      },
      0x0009 => %{
        keyword: :VectorGridData,
        name: "Vector Grid Data",
        vr: :OF
      },
      0x000F => %{
        keyword: :PreDeformationMatrixRegistrationSequence,
        name: "Pre Deformation Matrix Registration Sequence",
        vr: :SQ
      },
      0x0010 => %{
        keyword: :PostDeformationMatrixRegistrationSequence,
        name: "Post Deformation Matrix Registration Sequence",
        vr: :SQ
      }
    },
    0x0066 => %{
      0x0001 => %{
        keyword: :NumberOfSurfaces,
        name: "Number of Surfaces",
        vr: :UL
      },
      0x0002 => %{
        keyword: :SurfaceSequence,
        name: "Surface Sequence",
        vr: :SQ
      },
      0x0003 => %{
        keyword: :SurfaceNumber,
        name: "Surface Number",
        vr: :UL
      },
      0x0004 => %{
        keyword: :SurfaceComments,
        name: "Surface Comments",
        vr: :LT
      },
      0x0005 => %{
        keyword: :SurfaceOffset,
        name: "Surface Offset",
        vr: :FL
      },
      0x0009 => %{
        keyword: :SurfaceProcessing,
        name: "Surface Processing",
        vr: :CS
      },
      0x000A => %{
        keyword: :SurfaceProcessingRatio,
        name: "Surface Processing Ratio",
        vr: :FL
      },
      0x000B => %{
        keyword: :SurfaceProcessingDescription,
        name: "Surface Processing Description",
        vr: :LO
      },
      0x000C => %{
        keyword: :RecommendedPresentationOpacity,
        name: "Recommended Presentation Opacity",
        vr: :FL
      },
      0x000D => %{
        keyword: :RecommendedPresentationType,
        name: "Recommended Presentation Type",
        vr: :CS
      },
      0x000E => %{
        keyword: :FiniteVolume,
        name: "Finite Volume",
        vr: :CS
      },
      0x0010 => %{
        keyword: :Manifold,
        name: "Manifold",
        vr: :CS
      },
      0x0011 => %{
        keyword: :SurfacePointsSequence,
        name: "Surface Points Sequence",
        vr: :SQ
      },
      0x0012 => %{
        keyword: :SurfacePointsNormalsSequence,
        name: "Surface Points Normals Sequence",
        vr: :SQ
      },
      0x0013 => %{
        keyword: :SurfaceMeshPrimitivesSequence,
        name: "Surface Mesh Primitives Sequence",
        vr: :SQ
      },
      0x0015 => %{
        keyword: :NumberOfSurfacePoints,
        name: "Number of Surface Points",
        vr: :UL
      },
      0x0016 => %{
        keyword: :PointCoordinatesData,
        name: "Point Coordinates Data",
        vr: :OF
      },
      0x0017 => %{
        keyword: :PointPositionAccuracy,
        name: "Point Position Accuracy",
        vr: :FL
      },
      0x0018 => %{
        keyword: :MeanPointDistance,
        name: "Mean Point Distance",
        vr: :FL
      },
      0x0019 => %{
        keyword: :MaximumPointDistance,
        name: "Maximum Point Distance",
        vr: :FL
      },
      0x001A => %{
        keyword: :PointsBoundingBoxCoordinates,
        name: "Points Bounding Box Coordinates",
        vr: :FL
      },
      0x001B => %{
        keyword: :AxisOfRotation,
        name: "Axis of Rotation",
        vr: :FL
      },
      0x001C => %{
        keyword: :CenterOfRotation,
        name: "Center of Rotation",
        vr: :FL
      },
      0x001E => %{
        keyword: :NumberOfVectors,
        name: "Number of Vectors",
        vr: :UL
      },
      0x001F => %{
        keyword: :VectorDimensionality,
        name: "Vector Dimensionality",
        vr: :US
      },
      0x0020 => %{
        keyword: :VectorAccuracy,
        name: "Vector Accuracy",
        vr: :FL
      },
      0x0021 => %{
        keyword: :VectorCoordinateData,
        name: "Vector Coordinate Data",
        vr: :OF
      },
      0x0022 => %{
        keyword: :DoublePointCoordinatesData,
        name: "Double Point Coordinates Data",
        vr: :OD
      },
      0x0023 => %{
        keyword: :TrianglePointIndexList,
        name: "Triangle Point Index List",
        vr: :OW
      },
      0x0024 => %{
        keyword: :EdgePointIndexList,
        name: "Edge Point Index List",
        vr: :OW
      },
      0x0025 => %{
        keyword: :VertexPointIndexList,
        name: "Vertex Point Index List",
        vr: :OW
      },
      0x0026 => %{
        keyword: :TriangleStripSequence,
        name: "Triangle Strip Sequence",
        vr: :SQ
      },
      0x0027 => %{
        keyword: :TriangleFanSequence,
        name: "Triangle Fan Sequence",
        vr: :SQ
      },
      0x0028 => %{
        keyword: :LineSequence,
        name: "Line Sequence",
        vr: :SQ
      },
      0x0029 => %{
        keyword: :PrimitivePointIndexList,
        name: "Primitive Point Index List",
        vr: :OW
      },
      0x002A => %{
        keyword: :SurfaceCount,
        name: "Surface Count",
        vr: :UL
      },
      0x002B => %{
        keyword: :ReferencedSurfaceSequence,
        name: "Referenced Surface Sequence",
        vr: :SQ
      },
      0x002C => %{
        keyword: :ReferencedSurfaceNumber,
        name: "Referenced Surface Number",
        vr: :UL
      },
      0x002D => %{
        keyword: :SegmentSurfaceGenerationAlgorithmIdentificationSequence,
        name: "Segment Surface Generation Algorithm Identification Sequence",
        vr: :SQ
      },
      0x002E => %{
        keyword: :SegmentSurfaceSourceInstanceSequence,
        name: "Segment Surface Source Instance Sequence",
        vr: :SQ
      },
      0x002F => %{
        keyword: :AlgorithmFamilyCodeSequence,
        name: "Algorithm Family Code Sequence",
        vr: :SQ
      },
      0x0030 => %{
        keyword: :AlgorithmNameCodeSequence,
        name: "Algorithm Name Code Sequence",
        vr: :SQ
      },
      0x0031 => %{
        keyword: :AlgorithmVersion,
        name: "Algorithm Version",
        vr: :LO
      },
      0x0032 => %{
        keyword: :AlgorithmParameters,
        name: "Algorithm Parameters",
        vr: :LT
      },
      0x0034 => %{
        keyword: :FacetSequence,
        name: "Facet Sequence",
        vr: :SQ
      },
      0x0035 => %{
        keyword: :SurfaceProcessingAlgorithmIdentificationSequence,
        name: "Surface Processing Algorithm Identification Sequence",
        vr: :SQ
      },
      0x0036 => %{
        keyword: :AlgorithmName,
        name: "Algorithm Name",
        vr: :LO
      },
      0x0037 => %{
        keyword: :RecommendedPointRadius,
        name: "Recommended Point Radius",
        vr: :FL
      },
      0x0038 => %{
        keyword: :RecommendedLineThickness,
        name: "Recommended Line Thickness",
        vr: :FL
      },
      0x0040 => %{
        keyword: :LongPrimitivePointIndexList,
        name: "Long Primitive Point Index List",
        vr: :OL
      },
      0x0041 => %{
        keyword: :LongTrianglePointIndexList,
        name: "Long Triangle Point Index List",
        vr: :OL
      },
      0x0042 => %{
        keyword: :LongEdgePointIndexList,
        name: "Long Edge Point Index List",
        vr: :OL
      },
      0x0043 => %{
        keyword: :LongVertexPointIndexList,
        name: "Long Vertex Point Index List",
        vr: :OL
      },
      0x0101 => %{
        keyword: :TrackSetSequence,
        name: "Track Set Sequence",
        vr: :SQ
      },
      0x0102 => %{
        keyword: :TrackSequence,
        name: "Track Sequence",
        vr: :SQ
      },
      0x0103 => %{
        keyword: :RecommendedDisplayCIELabValueList,
        name: "Recommended Display CIELab Value List",
        vr: :OW
      },
      0x0104 => %{
        keyword: :TrackingAlgorithmIdentificationSequence,
        name: "Tracking Algorithm Identification Sequence",
        vr: :SQ
      },
      0x0105 => %{
        keyword: :TrackSetNumber,
        name: "Track Set Number",
        vr: :UL
      },
      0x0106 => %{
        keyword: :TrackSetLabel,
        name: "Track Set Label",
        vr: :LO
      },
      0x0107 => %{
        keyword: :TrackSetDescription,
        name: "Track Set Description",
        vr: :UT
      },
      0x0108 => %{
        keyword: :TrackSetAnatomicalTypeCodeSequence,
        name: "Track Set Anatomical Type Code Sequence",
        vr: :SQ
      },
      0x0121 => %{
        keyword: :MeasurementsSequence,
        name: "Measurements Sequence",
        vr: :SQ
      },
      0x0124 => %{
        keyword: :TrackSetStatisticsSequence,
        name: "Track Set Statistics Sequence",
        vr: :SQ
      },
      0x0125 => %{
        keyword: :FloatingPointValues,
        name: "Floating Point Values",
        vr: :OF
      },
      0x0129 => %{
        keyword: :TrackPointIndexList,
        name: "Track Point Index List",
        vr: :OL
      },
      0x0130 => %{
        keyword: :TrackStatisticsSequence,
        name: "Track Statistics Sequence",
        vr: :SQ
      },
      0x0132 => %{
        keyword: :MeasurementValuesSequence,
        name: "Measurement Values Sequence",
        vr: :SQ
      },
      0x0133 => %{
        keyword: :DiffusionAcquisitionCodeSequence,
        name: "Diffusion Acquisition Code Sequence",
        vr: :SQ
      },
      0x0134 => %{
        keyword: :DiffusionModelCodeSequence,
        name: "Diffusion Model Code Sequence",
        vr: :SQ
      }
    },
    0x0068 => %{
      0x6210 => %{
        keyword: :ImplantSize,
        name: "Implant Size",
        vr: :LO
      },
      0x6221 => %{
        keyword: :ImplantTemplateVersion,
        name: "Implant Template Version",
        vr: :LO
      },
      0x6222 => %{
        keyword: :ReplacedImplantTemplateSequence,
        name: "Replaced Implant Template Sequence",
        vr: :SQ
      },
      0x6223 => %{
        keyword: :ImplantType,
        name: "Implant Type",
        vr: :CS
      },
      0x6224 => %{
        keyword: :DerivationImplantTemplateSequence,
        name: "Derivation Implant Template Sequence",
        vr: :SQ
      },
      0x6225 => %{
        keyword: :OriginalImplantTemplateSequence,
        name: "Original Implant Template Sequence",
        vr: :SQ
      },
      0x6226 => %{
        keyword: :EffectiveDateTime,
        name: "Effective DateTime",
        vr: :DT
      },
      0x6230 => %{
        keyword: :ImplantTargetAnatomySequence,
        name: "Implant Target Anatomy Sequence",
        vr: :SQ
      },
      0x6260 => %{
        keyword: :InformationFromManufacturerSequence,
        name: "Information From Manufacturer Sequence",
        vr: :SQ
      },
      0x6265 => %{
        keyword: :NotificationFromManufacturerSequence,
        name: "Notification From Manufacturer Sequence",
        vr: :SQ
      },
      0x6270 => %{
        keyword: :InformationIssueDateTime,
        name: "Information Issue DateTime",
        vr: :DT
      },
      0x6280 => %{
        keyword: :InformationSummary,
        name: "Information Summary",
        vr: :ST
      },
      0x62A0 => %{
        keyword: :ImplantRegulatoryDisapprovalCodeSequence,
        name: "Implant Regulatory Disapproval Code Sequence",
        vr: :SQ
      },
      0x62A5 => %{
        keyword: :OverallTemplateSpatialTolerance,
        name: "Overall Template Spatial Tolerance",
        vr: :FD
      },
      0x62C0 => %{
        keyword: :HPGLDocumentSequence,
        name: "HPGL Document Sequence",
        vr: :SQ
      },
      0x62D0 => %{
        keyword: :HPGLDocumentID,
        name: "HPGL Document ID",
        vr: :US
      },
      0x62D5 => %{
        keyword: :HPGLDocumentLabel,
        name: "HPGL Document Label",
        vr: :LO
      },
      0x62E0 => %{
        keyword: :ViewOrientationCodeSequence,
        name: "View Orientation Code Sequence",
        vr: :SQ
      },
      0x62F0 => %{
        keyword: :ViewOrientationModifierCodeSequence,
        name: "View Orientation Modifier Code Sequence",
        vr: :SQ
      },
      0x62F2 => %{
        keyword: :HPGLDocumentScaling,
        name: "HPGL Document Scaling",
        vr: :FD
      },
      0x6300 => %{
        keyword: :HPGLDocument,
        name: "HPGL Document",
        vr: :OB
      },
      0x6310 => %{
        keyword: :HPGLContourPenNumber,
        name: "HPGL Contour Pen Number",
        vr: :US
      },
      0x6320 => %{
        keyword: :HPGLPenSequence,
        name: "HPGL Pen Sequence",
        vr: :SQ
      },
      0x6330 => %{
        keyword: :HPGLPenNumber,
        name: "HPGL Pen Number",
        vr: :US
      },
      0x6340 => %{
        keyword: :HPGLPenLabel,
        name: "HPGL Pen Label",
        vr: :LO
      },
      0x6345 => %{
        keyword: :HPGLPenDescription,
        name: "HPGL Pen Description",
        vr: :ST
      },
      0x6346 => %{
        keyword: :RecommendedRotationPoint,
        name: "Recommended Rotation Point",
        vr: :FD
      },
      0x6347 => %{
        keyword: :BoundingRectangle,
        name: "Bounding Rectangle",
        vr: :FD
      },
      0x6350 => %{
        keyword: :ImplantTemplate3DModelSurfaceNumber,
        name: "Implant Template 3D Model Surface Number",
        vr: :US
      },
      0x6360 => %{
        keyword: :SurfaceModelDescriptionSequence,
        name: "Surface Model Description Sequence",
        vr: :SQ
      },
      0x6380 => %{
        keyword: :SurfaceModelLabel,
        name: "Surface Model Label",
        vr: :LO
      },
      0x6390 => %{
        keyword: :SurfaceModelScalingFactor,
        name: "Surface Model Scaling Factor",
        vr: :FD
      },
      0x63A0 => %{
        keyword: :MaterialsCodeSequence,
        name: "Materials Code Sequence",
        vr: :SQ
      },
      0x63A4 => %{
        keyword: :CoatingMaterialsCodeSequence,
        name: "Coating Materials Code Sequence",
        vr: :SQ
      },
      0x63A8 => %{
        keyword: :ImplantTypeCodeSequence,
        name: "Implant Type Code Sequence",
        vr: :SQ
      },
      0x63AC => %{
        keyword: :FixationMethodCodeSequence,
        name: "Fixation Method Code Sequence",
        vr: :SQ
      },
      0x63B0 => %{
        keyword: :MatingFeatureSetsSequence,
        name: "Mating Feature Sets Sequence",
        vr: :SQ
      },
      0x63C0 => %{
        keyword: :MatingFeatureSetID,
        name: "Mating Feature Set ID",
        vr: :US
      },
      0x63D0 => %{
        keyword: :MatingFeatureSetLabel,
        name: "Mating Feature Set Label",
        vr: :LO
      },
      0x63E0 => %{
        keyword: :MatingFeatureSequence,
        name: "Mating Feature Sequence",
        vr: :SQ
      },
      0x63F0 => %{
        keyword: :MatingFeatureID,
        name: "Mating Feature ID",
        vr: :US
      },
      0x6400 => %{
        keyword: :MatingFeatureDegreeOfFreedomSequence,
        name: "Mating Feature Degree of Freedom Sequence",
        vr: :SQ
      },
      0x6410 => %{
        keyword: :DegreeOfFreedomID,
        name: "Degree of Freedom ID",
        vr: :US
      },
      0x6420 => %{
        keyword: :DegreeOfFreedomType,
        name: "Degree of Freedom Type",
        vr: :CS
      },
      0x6430 => %{
        keyword: :TwoDMatingFeatureCoordinatesSequence,
        name: "2D Mating Feature Coordinates Sequence",
        vr: :SQ
      },
      0x6440 => %{
        keyword: :ReferencedHPGLDocumentID,
        name: "Referenced HPGL Document ID",
        vr: :US
      },
      0x6450 => %{
        keyword: :TwoDMatingPoint,
        name: "2D Mating Point",
        vr: :FD
      },
      0x6460 => %{
        keyword: :TwoDMatingAxes,
        name: "2D Mating Axes",
        vr: :FD
      },
      0x6470 => %{
        keyword: :TwoDDegreeOfFreedomSequence,
        name: "2D Degree of Freedom Sequence",
        vr: :SQ
      },
      0x6490 => %{
        keyword: :ThreeDDegreeOfFreedomAxis,
        name: "3D Degree of Freedom Axis",
        vr: :FD
      },
      0x64A0 => %{
        keyword: :RangeOfFreedom,
        name: "Range of Freedom",
        vr: :FD
      },
      0x64C0 => %{
        keyword: :ThreeDMatingPoint,
        name: "3D Mating Point",
        vr: :FD
      },
      0x64D0 => %{
        keyword: :ThreeDMatingAxes,
        name: "3D Mating Axes",
        vr: :FD
      },
      0x64F0 => %{
        keyword: :TwoDDegreeOfFreedomAxis,
        name: "2D Degree of Freedom Axis",
        vr: :FD
      },
      0x6500 => %{
        keyword: :PlanningLandmarkPointSequence,
        name: "Planning Landmark Point Sequence",
        vr: :SQ
      },
      0x6510 => %{
        keyword: :PlanningLandmarkLineSequence,
        name: "Planning Landmark Line Sequence",
        vr: :SQ
      },
      0x6520 => %{
        keyword: :PlanningLandmarkPlaneSequence,
        name: "Planning Landmark Plane Sequence",
        vr: :SQ
      },
      0x6530 => %{
        keyword: :PlanningLandmarkID,
        name: "Planning Landmark ID",
        vr: :US
      },
      0x6540 => %{
        keyword: :PlanningLandmarkDescription,
        name: "Planning Landmark Description",
        vr: :LO
      },
      0x6545 => %{
        keyword: :PlanningLandmarkIdentificationCodeSequence,
        name: "Planning Landmark Identification Code Sequence",
        vr: :SQ
      },
      0x6550 => %{
        keyword: :TwoDPointCoordinatesSequence,
        name: "2D Point Coordinates Sequence",
        vr: :SQ
      },
      0x6560 => %{
        keyword: :TwoDPointCoordinates,
        name: "2D Point Coordinates",
        vr: :FD
      },
      0x6590 => %{
        keyword: :ThreeDPointCoordinates,
        name: "3D Point Coordinates",
        vr: :FD
      },
      0x65A0 => %{
        keyword: :TwoDLineCoordinatesSequence,
        name: "2D Line Coordinates Sequence",
        vr: :SQ
      },
      0x65B0 => %{
        keyword: :TwoDLineCoordinates,
        name: "2D Line Coordinates",
        vr: :FD
      },
      0x65D0 => %{
        keyword: :ThreeDLineCoordinates,
        name: "3D Line Coordinates",
        vr: :FD
      },
      0x65E0 => %{
        keyword: :TwoDPlaneCoordinatesSequence,
        name: "2D Plane Coordinates Sequence",
        vr: :SQ
      },
      0x65F0 => %{
        keyword: :TwoDPlaneIntersection,
        name: "2D Plane Intersection",
        vr: :FD
      },
      0x6610 => %{
        keyword: :ThreeDPlaneOrigin,
        name: "3D Plane Origin",
        vr: :FD
      },
      0x6620 => %{
        keyword: :ThreeDPlaneNormal,
        name: "3D Plane Normal",
        vr: :FD
      },
      0x7001 => %{
        keyword: :ModelModification,
        name: "Model Modification",
        vr: :CS
      },
      0x7002 => %{
        keyword: :ModelMirroring,
        name: "Model Mirroring",
        vr: :CS
      },
      0x7003 => %{
        keyword: :ModelUsageCodeSequence,
        name: "Model Usage Code Sequence",
        vr: :SQ
      },
      0x7004 => %{
        keyword: :ModelGroupUID,
        name: "Model Group UID",
        vr: :UI
      },
      0x7005 => %{
        keyword: :RelativeURIReferenceWithinEncapsulatedDocument,
        name: "Relative URI Reference Within Encapsulated Document",
        vr: :UR
      }
    },
    0x006A => %{
      0x0001 => %{
        keyword: :AnnotationCoordinateType,
        name: "Annotation Coordinate Type",
        vr: :CS
      },
      0x0002 => %{
        keyword: :AnnotationGroupSequence,
        name: "Annotation Group Sequence",
        vr: :SQ
      },
      0x0003 => %{
        keyword: :AnnotationGroupUID,
        name: "Annotation Group UID",
        vr: :UI
      },
      0x0005 => %{
        keyword: :AnnotationGroupLabel,
        name: "Annotation Group Label",
        vr: :LO
      },
      0x0006 => %{
        keyword: :AnnotationGroupDescription,
        name: "Annotation Group Description",
        vr: :UT
      },
      0x0007 => %{
        keyword: :AnnotationGroupGenerationType,
        name: "Annotation Group Generation Type",
        vr: :CS
      },
      0x0008 => %{
        keyword: :AnnotationGroupAlgorithmIdentificationSequence,
        name: "Annotation Group Algorithm Identification Sequence",
        vr: :SQ
      },
      0x0009 => %{
        keyword: :AnnotationPropertyCategoryCodeSequence,
        name: "Annotation Property Category Code Sequence",
        vr: :SQ
      },
      0x000A => %{
        keyword: :AnnotationPropertyTypeCodeSequence,
        name: "Annotation Property Type Code Sequence",
        vr: :SQ
      },
      0x000B => %{
        keyword: :AnnotationPropertyTypeModifierCodeSequence,
        name: "Annotation Property Type Modifier Code Sequence",
        vr: :SQ
      },
      0x000C => %{
        keyword: :NumberOfAnnotations,
        name: "Number of Annotations",
        vr: :UL
      },
      0x000D => %{
        keyword: :AnnotationAppliesToAllOpticalPaths,
        name: "Annotation Applies to All Optical Paths",
        vr: :CS
      },
      0x000E => %{
        keyword: :ReferencedOpticalPathIdentifier,
        name: "Referenced Optical Path Identifier",
        vr: :SH
      },
      0x000F => %{
        keyword: :AnnotationAppliesToAllZPlanes,
        name: "Annotation Applies to All Z Planes",
        vr: :CS
      },
      0x0010 => %{
        keyword: :CommonZCoordinateValue,
        name: "Common Z Coordinate Value",
        vr: :FD
      },
      0x0011 => %{
        keyword: :AnnotationIndexList,
        name: "Annotation Index List",
        vr: :OL
      }
    },
    0x0070 => %{
      0x0001 => %{
        keyword: :GraphicAnnotationSequence,
        name: "Graphic Annotation Sequence",
        vr: :SQ
      },
      0x0002 => %{
        keyword: :GraphicLayer,
        name: "Graphic Layer",
        vr: :CS
      },
      0x0003 => %{
        keyword: :BoundingBoxAnnotationUnits,
        name: "Bounding Box Annotation Units",
        vr: :CS
      },
      0x0004 => %{
        keyword: :AnchorPointAnnotationUnits,
        name: "Anchor Point Annotation Units",
        vr: :CS
      },
      0x0005 => %{
        keyword: :GraphicAnnotationUnits,
        name: "Graphic Annotation Units",
        vr: :CS
      },
      0x0006 => %{
        keyword: :UnformattedTextValue,
        name: "Unformatted Text Value",
        vr: :ST
      },
      0x0008 => %{
        keyword: :TextObjectSequence,
        name: "Text Object Sequence",
        vr: :SQ
      },
      0x0009 => %{
        keyword: :GraphicObjectSequence,
        name: "Graphic Object Sequence",
        vr: :SQ
      },
      0x0010 => %{
        keyword: :BoundingBoxTopLeftHandCorner,
        name: "Bounding Box Top Left Hand Corner",
        vr: :FL
      },
      0x0011 => %{
        keyword: :BoundingBoxBottomRightHandCorner,
        name: "Bounding Box Bottom Right Hand Corner",
        vr: :FL
      },
      0x0012 => %{
        keyword: :BoundingBoxTextHorizontalJustification,
        name: "Bounding Box Text Horizontal Justification",
        vr: :CS
      },
      0x0014 => %{
        keyword: :AnchorPoint,
        name: "Anchor Point",
        vr: :FL
      },
      0x0015 => %{
        keyword: :AnchorPointVisibility,
        name: "Anchor Point Visibility",
        vr: :CS
      },
      0x0020 => %{
        keyword: :GraphicDimensions,
        name: "Graphic Dimensions",
        vr: :US
      },
      0x0021 => %{
        keyword: :NumberOfGraphicPoints,
        name: "Number of Graphic Points",
        vr: :US
      },
      0x0022 => %{
        keyword: :GraphicData,
        name: "Graphic Data",
        vr: :FL
      },
      0x0023 => %{
        keyword: :GraphicType,
        name: "Graphic Type",
        vr: :CS
      },
      0x0024 => %{
        keyword: :GraphicFilled,
        name: "Graphic Filled",
        vr: :CS
      },
      0x0040 => %{
        keyword: :ImageRotationRetired,
        name: "Image Rotation (Retired)",
        vr: :IS
      },
      0x0041 => %{
        keyword: :ImageHorizontalFlip,
        name: "Image Horizontal Flip",
        vr: :CS
      },
      0x0042 => %{
        keyword: :ImageRotation,
        name: "Image Rotation",
        vr: :US
      },
      0x0050 => %{
        keyword: :DisplayedAreaTopLeftHandCornerTrial,
        name: "Displayed Area Top Left Hand Corner (Trial)",
        vr: :US
      },
      0x0051 => %{
        keyword: :DisplayedAreaBottomRightHandCornerTrial,
        name: "Displayed Area Bottom Right Hand Corner (Trial)",
        vr: :US
      },
      0x0052 => %{
        keyword: :DisplayedAreaTopLeftHandCorner,
        name: "Displayed Area Top Left Hand Corner",
        vr: :SL
      },
      0x0053 => %{
        keyword: :DisplayedAreaBottomRightHandCorner,
        name: "Displayed Area Bottom Right Hand Corner",
        vr: :SL
      },
      0x005A => %{
        keyword: :DisplayedAreaSelectionSequence,
        name: "Displayed Area Selection Sequence",
        vr: :SQ
      },
      0x0060 => %{
        keyword: :GraphicLayerSequence,
        name: "Graphic Layer Sequence",
        vr: :SQ
      },
      0x0062 => %{
        keyword: :GraphicLayerOrder,
        name: "Graphic Layer Order",
        vr: :IS
      },
      0x0066 => %{
        keyword: :GraphicLayerRecommendedDisplayGrayscaleValue,
        name: "Graphic Layer Recommended Display Grayscale Value",
        vr: :US
      },
      0x0067 => %{
        keyword: :GraphicLayerRecommendedDisplayRGBValue,
        name: "Graphic Layer Recommended Display RGB Value",
        vr: :US
      },
      0x0068 => %{
        keyword: :GraphicLayerDescription,
        name: "Graphic Layer Description",
        vr: :LO
      },
      0x0080 => %{
        keyword: :ContentLabel,
        name: "Content Label",
        vr: :CS
      },
      0x0081 => %{
        keyword: :ContentDescription,
        name: "Content Description",
        vr: :LO
      },
      0x0082 => %{
        keyword: :PresentationCreationDate,
        name: "Presentation Creation Date",
        vr: :DA
      },
      0x0083 => %{
        keyword: :PresentationCreationTime,
        name: "Presentation Creation Time",
        vr: :TM
      },
      0x0084 => %{
        keyword: :ContentCreatorName,
        name: "Content Creator's Name",
        vr: :PN
      },
      0x0086 => %{
        keyword: :ContentCreatorIdentificationCodeSequence,
        name: "Content Creator's Identification Code Sequence",
        vr: :SQ
      },
      0x0087 => %{
        keyword: :AlternateContentDescriptionSequence,
        name: "Alternate Content Description Sequence",
        vr: :SQ
      },
      0x0100 => %{
        keyword: :PresentationSizeMode,
        name: "Presentation Size Mode",
        vr: :CS
      },
      0x0101 => %{
        keyword: :PresentationPixelSpacing,
        name: "Presentation Pixel Spacing",
        vr: :DS
      },
      0x0102 => %{
        keyword: :PresentationPixelAspectRatio,
        name: "Presentation Pixel Aspect Ratio",
        vr: :IS
      },
      0x0103 => %{
        keyword: :PresentationPixelMagnificationRatio,
        name: "Presentation Pixel Magnification Ratio",
        vr: :FL
      },
      0x0207 => %{
        keyword: :GraphicGroupLabel,
        name: "Graphic Group Label",
        vr: :LO
      },
      0x0208 => %{
        keyword: :GraphicGroupDescription,
        name: "Graphic Group Description",
        vr: :ST
      },
      0x0209 => %{
        keyword: :CompoundGraphicSequence,
        name: "Compound Graphic Sequence",
        vr: :SQ
      },
      0x0226 => %{
        keyword: :CompoundGraphicInstanceID,
        name: "Compound Graphic Instance ID",
        vr: :UL
      },
      0x0227 => %{
        keyword: :FontName,
        name: "Font Name",
        vr: :LO
      },
      0x0228 => %{
        keyword: :FontNameType,
        name: "Font Name Type",
        vr: :CS
      },
      0x0229 => %{
        keyword: :CSSFontName,
        name: "CSS Font Name",
        vr: :LO
      },
      0x0230 => %{
        keyword: :RotationAngle,
        name: "Rotation Angle",
        vr: :FD
      },
      0x0231 => %{
        keyword: :TextStyleSequence,
        name: "Text Style Sequence",
        vr: :SQ
      },
      0x0232 => %{
        keyword: :LineStyleSequence,
        name: "Line Style Sequence",
        vr: :SQ
      },
      0x0233 => %{
        keyword: :FillStyleSequence,
        name: "Fill Style Sequence",
        vr: :SQ
      },
      0x0234 => %{
        keyword: :GraphicGroupSequence,
        name: "Graphic Group Sequence",
        vr: :SQ
      },
      0x0241 => %{
        keyword: :TextColorCIELabValue,
        name: "Text Color CIELab Value",
        vr: :US
      },
      0x0242 => %{
        keyword: :HorizontalAlignment,
        name: "Horizontal Alignment",
        vr: :CS
      },
      0x0243 => %{
        keyword: :VerticalAlignment,
        name: "Vertical Alignment",
        vr: :CS
      },
      0x0244 => %{
        keyword: :ShadowStyle,
        name: "Shadow Style",
        vr: :CS
      },
      0x0245 => %{
        keyword: :ShadowOffsetX,
        name: "Shadow Offset X",
        vr: :FL
      },
      0x0246 => %{
        keyword: :ShadowOffsetY,
        name: "Shadow Offset Y",
        vr: :FL
      },
      0x0247 => %{
        keyword: :ShadowColorCIELabValue,
        name: "Shadow Color CIELab Value",
        vr: :US
      },
      0x0248 => %{
        keyword: :Underlined,
        name: "Underlined",
        vr: :CS
      },
      0x0249 => %{
        keyword: :Bold,
        name: "Bold",
        vr: :CS
      },
      0x0250 => %{
        keyword: :Italic,
        name: "Italic",
        vr: :CS
      },
      0x0251 => %{
        keyword: :PatternOnColorCIELabValue,
        name: "Pattern On Color CIELab Value",
        vr: :US
      },
      0x0252 => %{
        keyword: :PatternOffColorCIELabValue,
        name: "Pattern Off Color CIELab Value",
        vr: :US
      },
      0x0253 => %{
        keyword: :LineThickness,
        name: "Line Thickness",
        vr: :FL
      },
      0x0254 => %{
        keyword: :LineDashingStyle,
        name: "Line Dashing Style",
        vr: :CS
      },
      0x0255 => %{
        keyword: :LinePattern,
        name: "Line Pattern",
        vr: :UL
      },
      0x0256 => %{
        keyword: :FillPattern,
        name: "Fill Pattern",
        vr: :OB
      },
      0x0257 => %{
        keyword: :FillMode,
        name: "Fill Mode",
        vr: :CS
      },
      0x0258 => %{
        keyword: :ShadowOpacity,
        name: "Shadow Opacity",
        vr: :FL
      },
      0x0261 => %{
        keyword: :GapLength,
        name: "Gap Length",
        vr: :FL
      },
      0x0262 => %{
        keyword: :DiameterOfVisibility,
        name: "Diameter of Visibility",
        vr: :FL
      },
      0x0273 => %{
        keyword: :RotationPoint,
        name: "Rotation Point",
        vr: :FL
      },
      0x0274 => %{
        keyword: :TickAlignment,
        name: "Tick Alignment",
        vr: :CS
      },
      0x0278 => %{
        keyword: :ShowTickLabel,
        name: "Show Tick Label",
        vr: :CS
      },
      0x0279 => %{
        keyword: :TickLabelAlignment,
        name: "Tick Label Alignment",
        vr: :CS
      },
      0x0282 => %{
        keyword: :CompoundGraphicUnits,
        name: "Compound Graphic Units",
        vr: :CS
      },
      0x0284 => %{
        keyword: :PatternOnOpacity,
        name: "Pattern On Opacity",
        vr: :FL
      },
      0x0285 => %{
        keyword: :PatternOffOpacity,
        name: "Pattern Off Opacity",
        vr: :FL
      },
      0x0287 => %{
        keyword: :MajorTicksSequence,
        name: "Major Ticks Sequence",
        vr: :SQ
      },
      0x0288 => %{
        keyword: :TickPosition,
        name: "Tick Position",
        vr: :FL
      },
      0x0289 => %{
        keyword: :TickLabel,
        name: "Tick Label",
        vr: :SH
      },
      0x0294 => %{
        keyword: :CompoundGraphicType,
        name: "Compound Graphic Type",
        vr: :CS
      },
      0x0295 => %{
        keyword: :GraphicGroupID,
        name: "Graphic Group ID",
        vr: :UL
      },
      0x0306 => %{
        keyword: :ShapeType,
        name: "Shape Type",
        vr: :CS
      },
      0x0308 => %{
        keyword: :RegistrationSequence,
        name: "Registration Sequence",
        vr: :SQ
      },
      0x0309 => %{
        keyword: :MatrixRegistrationSequence,
        name: "Matrix Registration Sequence",
        vr: :SQ
      },
      0x030A => %{
        keyword: :MatrixSequence,
        name: "Matrix Sequence",
        vr: :SQ
      },
      0x030B => %{
        keyword: :FrameOfReferenceToDisplayedCoordinateSystemTransformationMatrix,
        name: "Frame of Reference to Displayed Coordinate System Transformation Matrix",
        vr: :FD
      },
      0x030C => %{
        keyword: :FrameOfReferenceTransformationMatrixType,
        name: "Frame of Reference Transformation Matrix Type",
        vr: :CS
      },
      0x030D => %{
        keyword: :RegistrationTypeCodeSequence,
        name: "Registration Type Code Sequence",
        vr: :SQ
      },
      0x030F => %{
        keyword: :FiducialDescription,
        name: "Fiducial Description",
        vr: :ST
      },
      0x0310 => %{
        keyword: :FiducialIdentifier,
        name: "Fiducial Identifier",
        vr: :SH
      },
      0x0311 => %{
        keyword: :FiducialIdentifierCodeSequence,
        name: "Fiducial Identifier Code Sequence",
        vr: :SQ
      },
      0x0312 => %{
        keyword: :ContourUncertaintyRadius,
        name: "Contour Uncertainty Radius",
        vr: :FD
      },
      0x0314 => %{
        keyword: :UsedFiducialsSequence,
        name: "Used Fiducials Sequence",
        vr: :SQ
      },
      0x0315 => %{
        keyword: :UsedRTStructureSetROISequence,
        name: "Used RT Structure Set ROI Sequence",
        vr: :SQ
      },
      0x0318 => %{
        keyword: :GraphicCoordinatesDataSequence,
        name: "Graphic Coordinates Data Sequence",
        vr: :SQ
      },
      0x031A => %{
        keyword: :FiducialUID,
        name: "Fiducial UID",
        vr: :UI
      },
      0x031B => %{
        keyword: :ReferencedFiducialUID,
        name: "Referenced Fiducial UID",
        vr: :UI
      },
      0x031C => %{
        keyword: :FiducialSetSequence,
        name: "Fiducial Set Sequence",
        vr: :SQ
      },
      0x031E => %{
        keyword: :FiducialSequence,
        name: "Fiducial Sequence",
        vr: :SQ
      },
      0x031F => %{
        keyword: :FiducialsPropertyCategoryCodeSequence,
        name: "Fiducials Property Category Code Sequence",
        vr: :SQ
      },
      0x0401 => %{
        keyword: :GraphicLayerRecommendedDisplayCIELabValue,
        name: "Graphic Layer Recommended Display CIELab Value",
        vr: :US
      },
      0x0402 => %{
        keyword: :BlendingSequence,
        name: "Blending Sequence",
        vr: :SQ
      },
      0x0403 => %{
        keyword: :RelativeOpacity,
        name: "Relative Opacity",
        vr: :FL
      },
      0x0404 => %{
        keyword: :ReferencedSpatialRegistrationSequence,
        name: "Referenced Spatial Registration Sequence",
        vr: :SQ
      },
      0x0405 => %{
        keyword: :BlendingPosition,
        name: "Blending Position",
        vr: :CS
      },
      0x1101 => %{
        keyword: :PresentationDisplayCollectionUID,
        name: "Presentation Display Collection UID",
        vr: :UI
      },
      0x1102 => %{
        keyword: :PresentationSequenceCollectionUID,
        name: "Presentation Sequence Collection UID",
        vr: :UI
      },
      0x1103 => %{
        keyword: :PresentationSequencePositionIndex,
        name: "Presentation Sequence Position Index",
        vr: :US
      },
      0x1104 => %{
        keyword: :RenderedImageReferenceSequence,
        name: "Rendered Image Reference Sequence",
        vr: :SQ
      },
      0x1201 => %{
        keyword: :VolumetricPresentationStateInputSequence,
        name: "Volumetric Presentation State Input Sequence",
        vr: :SQ
      },
      0x1202 => %{
        keyword: :PresentationInputType,
        name: "Presentation Input Type",
        vr: :CS
      },
      0x1203 => %{
        keyword: :InputSequencePositionIndex,
        name: "Input Sequence Position Index",
        vr: :US
      },
      0x1204 => %{
        keyword: :Crop,
        name: "Crop",
        vr: :CS
      },
      0x1205 => %{
        keyword: :CroppingSpecificationIndex,
        name: "Cropping Specification Index",
        vr: :US
      },
      0x1206 => %{
        keyword: :CompositingMethod,
        name: "Compositing Method",
        vr: :CS
      },
      0x1207 => %{
        keyword: :VolumetricPresentationInputNumber,
        name: "Volumetric Presentation Input Number",
        vr: :US
      },
      0x1208 => %{
        keyword: :ImageVolumeGeometry,
        name: "Image Volume Geometry",
        vr: :CS
      },
      0x1209 => %{
        keyword: :VolumetricPresentationInputSetUID,
        name: "Volumetric Presentation Input Set UID",
        vr: :UI
      },
      0x120A => %{
        keyword: :VolumetricPresentationInputSetSequence,
        name: "Volumetric Presentation Input Set Sequence",
        vr: :SQ
      },
      0x120B => %{
        keyword: :GlobalCrop,
        name: "Global Crop",
        vr: :CS
      },
      0x120C => %{
        keyword: :GlobalCroppingSpecificationIndex,
        name: "Global Cropping Specification Index",
        vr: :US
      },
      0x120D => %{
        keyword: :RenderingMethod,
        name: "Rendering Method",
        vr: :CS
      },
      0x1301 => %{
        keyword: :VolumeCroppingSequence,
        name: "Volume Cropping Sequence",
        vr: :SQ
      },
      0x1302 => %{
        keyword: :VolumeCroppingMethod,
        name: "Volume Cropping Method",
        vr: :CS
      },
      0x1303 => %{
        keyword: :BoundingBoxCrop,
        name: "Bounding Box Crop",
        vr: :FD
      },
      0x1304 => %{
        keyword: :ObliqueCroppingPlaneSequence,
        name: "Oblique Cropping Plane Sequence",
        vr: :SQ
      },
      0x1305 => %{
        keyword: :Plane,
        name: "Plane",
        vr: :FD
      },
      0x1306 => %{
        keyword: :PlaneNormal,
        name: "Plane Normal",
        vr: :FD
      },
      0x1309 => %{
        keyword: :CroppingSpecificationNumber,
        name: "Cropping Specification Number",
        vr: :US
      },
      0x1501 => %{
        keyword: :MultiPlanarReconstructionStyle,
        name: "Multi-Planar Reconstruction Style",
        vr: :CS
      },
      0x1502 => %{
        keyword: :MPRThicknessType,
        name: "MPR Thickness Type",
        vr: :CS
      },
      0x1503 => %{
        keyword: :MPRSlabThickness,
        name: "MPR Slab Thickness",
        vr: :FD
      },
      0x1505 => %{
        keyword: :MPRTopLeftHandCorner,
        name: "MPR Top Left Hand Corner",
        vr: :FD
      },
      0x1507 => %{
        keyword: :MPRViewWidthDirection,
        name: "MPR View Width Direction",
        vr: :FD
      },
      0x1508 => %{
        keyword: :MPRViewWidth,
        name: "MPR View Width",
        vr: :FD
      },
      0x150C => %{
        keyword: :NumberOfVolumetricCurvePoints,
        name: "Number of Volumetric Curve Points",
        vr: :UL
      },
      0x150D => %{
        keyword: :VolumetricCurvePoints,
        name: "Volumetric Curve Points",
        vr: :OD
      },
      0x1511 => %{
        keyword: :MPRViewHeightDirection,
        name: "MPR View Height Direction",
        vr: :FD
      },
      0x1512 => %{
        keyword: :MPRViewHeight,
        name: "MPR View Height",
        vr: :FD
      },
      0x1602 => %{
        keyword: :RenderProjection,
        name: "Render Projection",
        vr: :CS
      },
      0x1603 => %{
        keyword: :ViewpointPosition,
        name: "Viewpoint Position",
        vr: :FD
      },
      0x1604 => %{
        keyword: :ViewpointLookAtPoint,
        name: "Viewpoint LookAt Point",
        vr: :FD
      },
      0x1605 => %{
        keyword: :ViewpointUpDirection,
        name: "Viewpoint Up Direction",
        vr: :FD
      },
      0x1606 => %{
        keyword: :RenderFieldOfView,
        name: "Render Field of View",
        vr: :FD
      },
      0x1607 => %{
        keyword: :SamplingStepSize,
        name: "Sampling Step Size",
        vr: :FD
      },
      0x1701 => %{
        keyword: :ShadingStyle,
        name: "Shading Style",
        vr: :CS
      },
      0x1702 => %{
        keyword: :AmbientReflectionIntensity,
        name: "Ambient Reflection Intensity",
        vr: :FD
      },
      0x1703 => %{
        keyword: :LightDirection,
        name: "Light Direction",
        vr: :FD
      },
      0x1704 => %{
        keyword: :DiffuseReflectionIntensity,
        name: "Diffuse Reflection Intensity",
        vr: :FD
      },
      0x1705 => %{
        keyword: :SpecularReflectionIntensity,
        name: "Specular Reflection Intensity",
        vr: :FD
      },
      0x1706 => %{
        keyword: :Shininess,
        name: "Shininess",
        vr: :FD
      },
      0x1801 => %{
        keyword: :PresentationStateClassificationComponentSequence,
        name: "Presentation State Classification Component Sequence",
        vr: :SQ
      },
      0x1802 => %{
        keyword: :ComponentType,
        name: "Component Type",
        vr: :CS
      },
      0x1803 => %{
        keyword: :ComponentInputSequence,
        name: "Component Input Sequence",
        vr: :SQ
      },
      0x1804 => %{
        keyword: :VolumetricPresentationInputIndex,
        name: "Volumetric Presentation Input Index",
        vr: :US
      },
      0x1805 => %{
        keyword: :PresentationStateCompositorComponentSequence,
        name: "Presentation State Compositor Component Sequence",
        vr: :SQ
      },
      0x1806 => %{
        keyword: :WeightingTransferFunctionSequence,
        name: "Weighting Transfer Function Sequence",
        vr: :SQ
      },
      0x1807 => %{
        keyword: :WeightingLookupTableDescriptor,
        name: "Weighting Lookup Table Descriptor",
        vr: :US
      },
      0x1808 => %{
        keyword: :WeightingLookupTableData,
        name: "Weighting Lookup Table Data",
        vr: :OB
      },
      0x1901 => %{
        keyword: :VolumetricAnnotationSequence,
        name: "Volumetric Annotation Sequence",
        vr: :SQ
      },
      0x1903 => %{
        keyword: :ReferencedStructuredContextSequence,
        name: "Referenced Structured Context Sequence",
        vr: :SQ
      },
      0x1904 => %{
        keyword: :ReferencedContentItem,
        name: "Referenced Content Item",
        vr: :UI
      },
      0x1905 => %{
        keyword: :VolumetricPresentationInputAnnotationSequence,
        name: "Volumetric Presentation Input Annotation Sequence",
        vr: :SQ
      },
      0x1907 => %{
        keyword: :AnnotationClipping,
        name: "Annotation Clipping",
        vr: :CS
      },
      0x1A01 => %{
        keyword: :PresentationAnimationStyle,
        name: "Presentation Animation Style",
        vr: :CS
      },
      0x1A03 => %{
        keyword: :RecommendedAnimationRate,
        name: "Recommended Animation Rate",
        vr: :FD
      },
      0x1A04 => %{
        keyword: :AnimationCurveSequence,
        name: "Animation Curve Sequence",
        vr: :SQ
      },
      0x1A05 => %{
        keyword: :AnimationStepSize,
        name: "Animation Step Size",
        vr: :FD
      },
      0x1A06 => %{
        keyword: :SwivelRange,
        name: "Swivel Range",
        vr: :FD
      },
      0x1A07 => %{
        keyword: :VolumetricCurveUpDirections,
        name: "Volumetric Curve Up Directions",
        vr: :OD
      },
      0x1A08 => %{
        keyword: :VolumeStreamSequence,
        name: "Volume Stream Sequence",
        vr: :SQ
      },
      0x1A09 => %{
        keyword: :RGBATransferFunctionDescription,
        name: "RGBA Transfer Function Description",
        vr: :LO
      },
      0x1B01 => %{
        keyword: :AdvancedBlendingSequence,
        name: "Advanced Blending Sequence",
        vr: :SQ
      },
      0x1B02 => %{
        keyword: :BlendingInputNumber,
        name: "Blending Input Number",
        vr: :US
      },
      0x1B03 => %{
        keyword: :BlendingDisplayInputSequence,
        name: "Blending Display Input Sequence",
        vr: :SQ
      },
      0x1B04 => %{
        keyword: :BlendingDisplaySequence,
        name: "Blending Display Sequence",
        vr: :SQ
      },
      0x1B06 => %{
        keyword: :BlendingMode,
        name: "Blending Mode",
        vr: :CS
      },
      0x1B07 => %{
        keyword: :TimeSeriesBlending,
        name: "Time Series Blending",
        vr: :CS
      },
      0x1B08 => %{
        keyword: :GeometryForDisplay,
        name: "Geometry for Display",
        vr: :CS
      },
      0x1B11 => %{
        keyword: :ThresholdSequence,
        name: "Threshold Sequence",
        vr: :SQ
      },
      0x1B12 => %{
        keyword: :ThresholdValueSequence,
        name: "Threshold Value Sequence",
        vr: :SQ
      },
      0x1B13 => %{
        keyword: :ThresholdType,
        name: "Threshold Type",
        vr: :CS
      },
      0x1B14 => %{
        keyword: :ThresholdValue,
        name: "Threshold Value",
        vr: :FD
      }
    },
    0x0072 => %{
      0x0002 => %{
        keyword: :HangingProtocolName,
        name: "Hanging Protocol Name",
        vr: :SH
      },
      0x0004 => %{
        keyword: :HangingProtocolDescription,
        name: "Hanging Protocol Description",
        vr: :LO
      },
      0x0006 => %{
        keyword: :HangingProtocolLevel,
        name: "Hanging Protocol Level",
        vr: :CS
      },
      0x0008 => %{
        keyword: :HangingProtocolCreator,
        name: "Hanging Protocol Creator",
        vr: :LO
      },
      0x000A => %{
        keyword: :HangingProtocolCreationDateTime,
        name: "Hanging Protocol Creation Date​Time",
        vr: :DT
      },
      0x000C => %{
        keyword: :HangingProtocolDefinitionSequence,
        name: "Hanging Protocol Definition Sequence",
        vr: :SQ
      },
      0x000E => %{
        keyword: :HangingProtocolUserIdentificationCodeSequence,
        name: "Hanging Protocol User Identification Code Sequence",
        vr: :SQ
      },
      0x0010 => %{
        keyword: :HangingProtocolUserGroupName,
        name: "Hanging Protocol User Group Name",
        vr: :LO
      },
      0x0012 => %{
        keyword: :SourceHangingProtocolSequence,
        name: "Source Hanging Protocol Sequence",
        vr: :SQ
      },
      0x0014 => %{
        keyword: :NumberOfPriorsReferenced,
        name: "Number of Priors Referenced",
        vr: :US
      },
      0x0020 => %{
        keyword: :ImageSetsSequence,
        name: "Image Sets Sequence",
        vr: :SQ
      },
      0x0022 => %{
        keyword: :ImageSetSelectorSequence,
        name: "Image Set Selector Sequence",
        vr: :SQ
      },
      0x0024 => %{
        keyword: :ImageSetSelectorUsageFlag,
        name: "Image Set Selector Usage Flag",
        vr: :CS
      },
      0x0026 => %{
        keyword: :SelectorAttribute,
        name: "Selector Attribute",
        vr: :AT
      },
      0x0028 => %{
        keyword: :SelectorValueNumber,
        name: "Selector Value Number",
        vr: :US
      },
      0x0030 => %{
        keyword: :TimeBasedImageSetsSequence,
        name: "Time Based Image Sets Sequence",
        vr: :SQ
      },
      0x0032 => %{
        keyword: :ImageSetNumber,
        name: "Image Set Number",
        vr: :US
      },
      0x0034 => %{
        keyword: :ImageSetSelectorCategory,
        name: "Image Set Selector Category",
        vr: :CS
      },
      0x0038 => %{
        keyword: :RelativeTime,
        name: "Relative Time",
        vr: :US
      },
      0x003A => %{
        keyword: :RelativeTimeUnits,
        name: "Relative Time Units",
        vr: :CS
      },
      0x003C => %{
        keyword: :AbstractPriorValue,
        name: "Abstract Prior Value",
        vr: :SS
      },
      0x003E => %{
        keyword: :AbstractPriorCodeSequence,
        name: "Abstract Prior Code Sequence",
        vr: :SQ
      },
      0x0040 => %{
        keyword: :ImageSetLabel,
        name: "Image Set Label",
        vr: :LO
      },
      0x0050 => %{
        keyword: :SelectorAttributeVR,
        name: "Selector Attribute VR",
        vr: :CS
      },
      0x0052 => %{
        keyword: :SelectorSequencePointer,
        name: "Selector Sequence Pointer",
        vr: :AT
      },
      0x0054 => %{
        keyword: :SelectorSequencePointerPrivateCreator,
        name: "Selector Sequence Pointer Private Creator",
        vr: :LO
      },
      0x0056 => %{
        keyword: :SelectorAttributePrivateCreator,
        name: "Selector Attribute Private Creator",
        vr: :LO
      },
      0x005E => %{
        keyword: :SelectorAEValue,
        name: "Selector AE Value",
        vr: :AE
      },
      0x005F => %{
        keyword: :SelectorASValue,
        name: "Selector AS Value",
        vr: :AS
      },
      0x0060 => %{
        keyword: :SelectorATValue,
        name: "Selector AT Value",
        vr: :AT
      },
      0x0061 => %{
        keyword: :SelectorDAValue,
        name: "Selector DA Value",
        vr: :DA
      },
      0x0062 => %{
        keyword: :SelectorCSValue,
        name: "Selector CS Value",
        vr: :CS
      },
      0x0063 => %{
        keyword: :SelectorDTValue,
        name: "Selector DT Value",
        vr: :DT
      },
      0x0064 => %{
        keyword: :SelectorISValue,
        name: "Selector IS Value",
        vr: :IS
      },
      0x0065 => %{
        keyword: :SelectorOBValue,
        name: "Selector OB Value",
        vr: :OB
      },
      0x0066 => %{
        keyword: :SelectorLOValue,
        name: "Selector LO Value",
        vr: :LO
      },
      0x0067 => %{
        keyword: :SelectorOFValue,
        name: "Selector OF Value",
        vr: :OF
      },
      0x0068 => %{
        keyword: :SelectorLTValue,
        name: "Selector LT Value",
        vr: :LT
      },
      0x0069 => %{
        keyword: :SelectorOWValue,
        name: "Selector OW Value",
        vr: :OW
      },
      0x006A => %{
        keyword: :SelectorPNValue,
        name: "Selector PN Value",
        vr: :PN
      },
      0x006B => %{
        keyword: :SelectorTMValue,
        name: "Selector TM Value",
        vr: :TM
      },
      0x006C => %{
        keyword: :SelectorSHValue,
        name: "Selector SH Value",
        vr: :SH
      },
      0x006D => %{
        keyword: :SelectorUNValue,
        name: "Selector UN Value",
        vr: :UN
      },
      0x006E => %{
        keyword: :SelectorSTValue,
        name: "Selector ST Value",
        vr: :ST
      },
      0x006F => %{
        keyword: :SelectorUCValue,
        name: "Selector UC Value",
        vr: :UC
      },
      0x0070 => %{
        keyword: :SelectorUTValue,
        name: "Selector UT Value",
        vr: :UT
      },
      0x0071 => %{
        keyword: :SelectorURValue,
        name: "Selector UR Value",
        vr: :UR
      },
      0x0072 => %{
        keyword: :SelectorDSValue,
        name: "Selector DS Value",
        vr: :DS
      },
      0x0073 => %{
        keyword: :SelectorODValue,
        name: "Selector OD Value",
        vr: :OD
      },
      0x0074 => %{
        keyword: :SelectorFDValue,
        name: "Selector FD Value",
        vr: :FD
      },
      0x0075 => %{
        keyword: :SelectorOLValue,
        name: "Selector OL Value",
        vr: :OL
      },
      0x0076 => %{
        keyword: :SelectorFLValue,
        name: "Selector FL Value",
        vr: :FL
      },
      0x0078 => %{
        keyword: :SelectorULValue,
        name: "Selector UL Value",
        vr: :UL
      },
      0x007A => %{
        keyword: :SelectorUSValue,
        name: "Selector US Value",
        vr: :US
      },
      0x007C => %{
        keyword: :SelectorSLValue,
        name: "Selector SL Value",
        vr: :SL
      },
      0x007E => %{
        keyword: :SelectorSSValue,
        name: "Selector SS Value",
        vr: :SS
      },
      0x007F => %{
        keyword: :SelectorUIValue,
        name: "Selector UI Value",
        vr: :UI
      },
      0x0080 => %{
        keyword: :SelectorCodeSequenceValue,
        name: "Selector Code Sequence Value",
        vr: :SQ
      },
      0x0081 => %{
        keyword: :SelectorOVValue,
        name: "Selector OV Value",
        vr: :OV
      },
      0x0082 => %{
        keyword: :SelectorSVValue,
        name: "Selector SV Value",
        vr: :SV
      },
      0x0083 => %{
        keyword: :SelectorUVValue,
        name: "Selector UV Value",
        vr: :UV
      },
      0x0100 => %{
        keyword: :NumberOfScreens,
        name: "Number of Screens",
        vr: :US
      },
      0x0102 => %{
        keyword: :NominalScreenDefinitionSequence,
        name: "Nominal Screen Definition Sequence",
        vr: :SQ
      },
      0x0104 => %{
        keyword: :NumberOfVerticalPixels,
        name: "Number of Vertical Pixels",
        vr: :US
      },
      0x0106 => %{
        keyword: :NumberOfHorizontalPixels,
        name: "Number of Horizontal Pixels",
        vr: :US
      },
      0x0108 => %{
        keyword: :DisplayEnvironmentSpatialPosition,
        name: "Display Environment Spatial Position",
        vr: :FD
      },
      0x010A => %{
        keyword: :ScreenMinimumGrayscaleBitDepth,
        name: "Screen Minimum Grayscale Bit Depth",
        vr: :US
      },
      0x010C => %{
        keyword: :ScreenMinimumColorBitDepth,
        name: "Screen Minimum Color Bit Depth",
        vr: :US
      },
      0x010E => %{
        keyword: :ApplicationMaximumRepaintTime,
        name: "Application Maximum Repaint Time",
        vr: :US
      },
      0x0200 => %{
        keyword: :DisplaySetsSequence,
        name: "Display Sets Sequence",
        vr: :SQ
      },
      0x0202 => %{
        keyword: :DisplaySetNumber,
        name: "Display Set Number",
        vr: :US
      },
      0x0203 => %{
        keyword: :DisplaySetLabel,
        name: "Display Set Label",
        vr: :LO
      },
      0x0204 => %{
        keyword: :DisplaySetPresentationGroup,
        name: "Display Set Presentation Group",
        vr: :US
      },
      0x0206 => %{
        keyword: :DisplaySetPresentationGroupDescription,
        name: "Display Set Presentation Group Description",
        vr: :LO
      },
      0x0208 => %{
        keyword: :PartialDataDisplayHandling,
        name: "Partial Data Display Handling",
        vr: :CS
      },
      0x0210 => %{
        keyword: :SynchronizedScrollingSequence,
        name: "Synchronized Scrolling Sequence",
        vr: :SQ
      },
      0x0212 => %{
        keyword: :DisplaySetScrollingGroup,
        name: "Display Set Scrolling Group",
        vr: :US
      },
      0x0214 => %{
        keyword: :NavigationIndicatorSequence,
        name: "Navigation Indicator Sequence",
        vr: :SQ
      },
      0x0216 => %{
        keyword: :NavigationDisplaySet,
        name: "Navigation Display Set",
        vr: :US
      },
      0x0218 => %{
        keyword: :ReferenceDisplaySets,
        name: "Reference Display Sets",
        vr: :US
      },
      0x0300 => %{
        keyword: :ImageBoxesSequence,
        name: "Image Boxes Sequence",
        vr: :SQ
      },
      0x0302 => %{
        keyword: :ImageBoxNumber,
        name: "Image Box Number",
        vr: :US
      },
      0x0304 => %{
        keyword: :ImageBoxLayoutType,
        name: "Image Box Layout Type",
        vr: :CS
      },
      0x0306 => %{
        keyword: :ImageBoxTileHorizontalDimension,
        name: "Image Box Tile Horizontal Dimension",
        vr: :US
      },
      0x0308 => %{
        keyword: :ImageBoxTileVerticalDimension,
        name: "Image Box Tile Vertical Dimension",
        vr: :US
      },
      0x0310 => %{
        keyword: :ImageBoxScrollDirection,
        name: "Image Box Scroll Direction",
        vr: :CS
      },
      0x0312 => %{
        keyword: :ImageBoxSmallScrollType,
        name: "Image Box Small Scroll Type",
        vr: :CS
      },
      0x0314 => %{
        keyword: :ImageBoxSmallScrollAmount,
        name: "Image Box Small Scroll Amount",
        vr: :US
      },
      0x0316 => %{
        keyword: :ImageBoxLargeScrollType,
        name: "Image Box Large Scroll Type",
        vr: :CS
      },
      0x0318 => %{
        keyword: :ImageBoxLargeScrollAmount,
        name: "Image Box Large Scroll Amount",
        vr: :US
      },
      0x0320 => %{
        keyword: :ImageBoxOverlapPriority,
        name: "Image Box Overlap Priority",
        vr: :US
      },
      0x0330 => %{
        keyword: :CineRelativeToRealTime,
        name: "Cine Relative to Real-Time",
        vr: :FD
      },
      0x0400 => %{
        keyword: :FilterOperationsSequence,
        name: "Filter Operations Sequence",
        vr: :SQ
      },
      0x0402 => %{
        keyword: :FilterByCategory,
        name: "Filter-by Category",
        vr: :CS
      },
      0x0404 => %{
        keyword: :FilterByAttributePresence,
        name: "Filter-by Attribute Presence",
        vr: :CS
      },
      0x0406 => %{
        keyword: :FilterByOperator,
        name: "Filter-by Operator",
        vr: :CS
      },
      0x0420 => %{
        keyword: :StructuredDisplayBackgroundCIELabValue,
        name: "Structured Display Background CIELab Value",
        vr: :US
      },
      0x0421 => %{
        keyword: :EmptyImageBoxCIELabValue,
        name: "Empty Image Box CIELab Value",
        vr: :US
      },
      0x0422 => %{
        keyword: :StructuredDisplayImageBoxSequence,
        name: "Structured Display Image Box Sequence",
        vr: :SQ
      },
      0x0424 => %{
        keyword: :StructuredDisplayTextBoxSequence,
        name: "Structured Display Text Box Sequence",
        vr: :SQ
      },
      0x0427 => %{
        keyword: :ReferencedFirstFrameSequence,
        name: "Referenced First Frame Sequence",
        vr: :SQ
      },
      0x0430 => %{
        keyword: :ImageBoxSynchronizationSequence,
        name: "Image Box Synchronization Sequence",
        vr: :SQ
      },
      0x0432 => %{
        keyword: :SynchronizedImageBoxList,
        name: "Synchronized Image Box List",
        vr: :US
      },
      0x0434 => %{
        keyword: :TypeOfSynchronization,
        name: "Type of Synchronization",
        vr: :CS
      },
      0x0500 => %{
        keyword: :BlendingOperationType,
        name: "Blending Operation Type",
        vr: :CS
      },
      0x0510 => %{
        keyword: :ReformattingOperationType,
        name: "Reformatting Operation Type",
        vr: :CS
      },
      0x0512 => %{
        keyword: :ReformattingThickness,
        name: "Reformatting Thickness",
        vr: :FD
      },
      0x0514 => %{
        keyword: :ReformattingInterval,
        name: "Reformatting Interval",
        vr: :FD
      },
      0x0516 => %{
        keyword: :ReformattingOperationInitialViewDirection,
        name: "Reformatting Operation Initial View Direction",
        vr: :CS
      },
      0x0520 => %{
        keyword: :ThreeDRenderingType,
        name: "3D Rendering Type",
        vr: :CS
      },
      0x0600 => %{
        keyword: :SortingOperationsSequence,
        name: "Sorting Operations Sequence",
        vr: :SQ
      },
      0x0602 => %{
        keyword: :SortByCategory,
        name: "Sort-by Category",
        vr: :CS
      },
      0x0604 => %{
        keyword: :SortingDirection,
        name: "Sorting Direction",
        vr: :CS
      },
      0x0700 => %{
        keyword: :DisplaySetPatientOrientation,
        name: "Display Set Patient Orientation",
        vr: :CS
      },
      0x0702 => %{
        keyword: :VOIType,
        name: "VOI Type",
        vr: :CS
      },
      0x0704 => %{
        keyword: :PseudoColorType,
        name: "Pseudo-Color Type",
        vr: :CS
      },
      0x0705 => %{
        keyword: :PseudoColorPaletteInstanceReferenceSequence,
        name: "Pseudo-Color Palette Instance Reference Sequence",
        vr: :SQ
      },
      0x0706 => %{
        keyword: :ShowGrayscaleInverted,
        name: "Show Grayscale Inverted",
        vr: :CS
      },
      0x0710 => %{
        keyword: :ShowImageTrueSizeFlag,
        name: "Show Image True Size Flag",
        vr: :CS
      },
      0x0712 => %{
        keyword: :ShowGraphicAnnotationFlag,
        name: "Show Graphic Annotation Flag",
        vr: :CS
      },
      0x0714 => %{
        keyword: :ShowPatientDemographicsFlag,
        name: "Show Patient Demographics Flag",
        vr: :CS
      },
      0x0716 => %{
        keyword: :ShowAcquisitionTechniquesFlag,
        name: "Show Acquisition Techniques Flag",
        vr: :CS
      },
      0x0717 => %{
        keyword: :DisplaySetHorizontalJustification,
        name: "Display Set Horizontal Justification",
        vr: :CS
      },
      0x0718 => %{
        keyword: :DisplaySetVerticalJustification,
        name: "Display Set Vertical Justification",
        vr: :CS
      }
    },
    0x0074 => %{
      0x0120 => %{
        keyword: :ContinuationStartMeterset,
        name: "Continuation Start Meterset",
        vr: :FD
      },
      0x0121 => %{
        keyword: :ContinuationEndMeterset,
        name: "Continuation End Meterset",
        vr: :FD
      },
      0x1000 => %{
        keyword: :ProcedureStepState,
        name: "Procedure Step State",
        vr: :CS
      },
      0x1002 => %{
        keyword: :ProcedureStepProgressInformationSequence,
        name: "Procedure Step Progress Information Sequence",
        vr: :SQ
      },
      0x1004 => %{
        keyword: :ProcedureStepProgress,
        name: "Procedure Step Progress",
        vr: :DS
      },
      0x1006 => %{
        keyword: :ProcedureStepProgressDescription,
        name: "Procedure Step Progress Description",
        vr: :ST
      },
      0x1007 => %{
        keyword: :ProcedureStepProgressParametersSequence,
        name: "Procedure Step Progress Parameters Sequence",
        vr: :SQ
      },
      0x1008 => %{
        keyword: :ProcedureStepCommunicationsURISequence,
        name: "Procedure Step Communications URI Sequence",
        vr: :SQ
      },
      0x100A => %{
        keyword: :ContactURI,
        name: "Contact URI",
        vr: :UR
      },
      0x100C => %{
        keyword: :ContactDisplayName,
        name: "Contact Display Name",
        vr: :LO
      },
      0x100E => %{
        keyword: :ProcedureStepDiscontinuationReasonCodeSequence,
        name: "Procedure Step Discontinuation Reason Code Sequence",
        vr: :SQ
      },
      0x1020 => %{
        keyword: :BeamTaskSequence,
        name: "Beam Task Sequence",
        vr: :SQ
      },
      0x1022 => %{
        keyword: :BeamTaskType,
        name: "Beam Task Type",
        vr: :CS
      },
      0x1024 => %{
        keyword: :BeamOrderIndexTrial,
        name: "Beam Order Index (Trial)",
        vr: :IS
      },
      0x1025 => %{
        keyword: :AutosequenceFlag,
        name: "Autosequence Flag",
        vr: :CS
      },
      0x1026 => %{
        keyword: :TableTopVerticalAdjustedPosition,
        name: "Table Top Vertical Adjusted Position",
        vr: :FD
      },
      0x1027 => %{
        keyword: :TableTopLongitudinalAdjustedPosition,
        name: "Table Top Longitudinal Adjusted Position",
        vr: :FD
      },
      0x1028 => %{
        keyword: :TableTopLateralAdjustedPosition,
        name: "Table Top Lateral Adjusted Position",
        vr: :FD
      },
      0x102A => %{
        keyword: :PatientSupportAdjustedAngle,
        name: "Patient Support Adjusted Angle",
        vr: :FD
      },
      0x102B => %{
        keyword: :TableTopEccentricAdjustedAngle,
        name: "Table Top Eccentric Adjusted Angle",
        vr: :FD
      },
      0x102C => %{
        keyword: :TableTopPitchAdjustedAngle,
        name: "Table Top Pitch Adjusted Angle",
        vr: :FD
      },
      0x102D => %{
        keyword: :TableTopRollAdjustedAngle,
        name: "Table Top Roll Adjusted Angle",
        vr: :FD
      },
      0x1030 => %{
        keyword: :DeliveryVerificationImageSequence,
        name: "Delivery Verification Image Sequence",
        vr: :SQ
      },
      0x1032 => %{
        keyword: :VerificationImageTiming,
        name: "Verification Image Timing",
        vr: :CS
      },
      0x1034 => %{
        keyword: :DoubleExposureFlag,
        name: "Double Exposure Flag",
        vr: :CS
      },
      0x1036 => %{
        keyword: :DoubleExposureOrdering,
        name: "Double Exposure Ordering",
        vr: :CS
      },
      0x1038 => %{
        keyword: :DoubleExposureMetersetTrial,
        name: "Double Exposure Meterset (Trial)",
        vr: :DS
      },
      0x103A => %{
        keyword: :DoubleExposureFieldDeltaTrial,
        name: "Double Exposure Field Delta (Trial)",
        vr: :DS
      },
      0x1040 => %{
        keyword: :RelatedReferenceRTImageSequence,
        name: "Related Reference RT Image Sequence",
        vr: :SQ
      },
      0x1042 => %{
        keyword: :GeneralMachineVerificationSequence,
        name: "General Machine Verification Sequence",
        vr: :SQ
      },
      0x1044 => %{
        keyword: :ConventionalMachineVerificationSequence,
        name: "Conventional Machine Verification Sequence",
        vr: :SQ
      },
      0x1046 => %{
        keyword: :IonMachineVerificationSequence,
        name: "Ion Machine Verification Sequence",
        vr: :SQ
      },
      0x1048 => %{
        keyword: :FailedAttributesSequence,
        name: "Failed Attributes Sequence",
        vr: :SQ
      },
      0x104A => %{
        keyword: :OverriddenAttributesSequence,
        name: "Overridden Attributes Sequence",
        vr: :SQ
      },
      0x104C => %{
        keyword: :ConventionalControlPointVerificationSequence,
        name: "Conventional Control Point Verification Sequence",
        vr: :SQ
      },
      0x104E => %{
        keyword: :IonControlPointVerificationSequence,
        name: "Ion Control Point Verification Sequence",
        vr: :SQ
      },
      0x1050 => %{
        keyword: :AttributeOccurrenceSequence,
        name: "Attribute Occurrence Sequence",
        vr: :SQ
      },
      0x1052 => %{
        keyword: :AttributeOccurrencePointer,
        name: "Attribute Occurrence Pointer",
        vr: :AT
      },
      0x1054 => %{
        keyword: :AttributeItemSelector,
        name: "Attribute Item Selector",
        vr: :UL
      },
      0x1056 => %{
        keyword: :AttributeOccurrencePrivateCreator,
        name: "Attribute Occurrence Private Creator",
        vr: :LO
      },
      0x1057 => %{
        keyword: :SelectorSequencePointerItems,
        name: "Selector Sequence Pointer Items",
        vr: :IS
      },
      0x1200 => %{
        keyword: :ScheduledProcedureStepPriority,
        name: "Scheduled Procedure Step Priority",
        vr: :CS
      },
      0x1202 => %{
        keyword: :WorklistLabel,
        name: "Worklist Label",
        vr: :LO
      },
      0x1204 => %{
        keyword: :ProcedureStepLabel,
        name: "Procedure Step Label",
        vr: :LO
      },
      0x1210 => %{
        keyword: :ScheduledProcessingParametersSequence,
        name: "Scheduled Processing Parameters Sequence",
        vr: :SQ
      },
      0x1212 => %{
        keyword: :PerformedProcessingParametersSequence,
        name: "Performed Processing Parameters Sequence",
        vr: :SQ
      },
      0x1216 => %{
        keyword: :UnifiedProcedureStepPerformedProcedureSequence,
        name: "Unified Procedure Step Performed Procedure Sequence",
        vr: :SQ
      },
      0x1220 => %{
        keyword: :RelatedProcedureStepSequence,
        name: "Related Procedure Step Sequence",
        vr: :SQ
      },
      0x1222 => %{
        keyword: :ProcedureStepRelationshipType,
        name: "Procedure Step Relationship Type",
        vr: :LO
      },
      0x1224 => %{
        keyword: :ReplacedProcedureStepSequence,
        name: "Replaced Procedure Step Sequence",
        vr: :SQ
      },
      0x1230 => %{
        keyword: :DeletionLock,
        name: "Deletion Lock",
        vr: :LO
      },
      0x1234 => %{
        keyword: :ReceivingAE,
        name: "Receiving AE",
        vr: :AE
      },
      0x1236 => %{
        keyword: :RequestingAE,
        name: "Requesting AE",
        vr: :AE
      },
      0x1238 => %{
        keyword: :ReasonForCancellation,
        name: "Reason for Cancellation",
        vr: :LT
      },
      0x1242 => %{
        keyword: :SCPStatus,
        name: "SCP Status",
        vr: :CS
      },
      0x1244 => %{
        keyword: :SubscriptionListStatus,
        name: "Subscription List Status",
        vr: :CS
      },
      0x1246 => %{
        keyword: :UnifiedProcedureStepListStatus,
        name: "Unified Procedure Step List Status",
        vr: :CS
      },
      0x1324 => %{
        keyword: :BeamOrderIndex,
        name: "Beam Order Index",
        vr: :UL
      },
      0x1338 => %{
        keyword: :DoubleExposureMeterset,
        name: "Double Exposure Meterset",
        vr: :FD
      },
      0x133A => %{
        keyword: :DoubleExposureFieldDelta,
        name: "Double Exposure Field Delta",
        vr: :FD
      },
      0x1401 => %{
        keyword: :BrachyTaskSequence,
        name: "Brachy Task Sequence",
        vr: :SQ
      },
      0x1402 => %{
        keyword: :ContinuationStartTotalReferenceAirKerma,
        name: "Continuation Start Total Reference Air Kerma",
        vr: :DS
      },
      0x1403 => %{
        keyword: :ContinuationEndTotalReferenceAirKerma,
        name: "Continuation End Total Reference Air Kerma",
        vr: :DS
      },
      0x1404 => %{
        keyword: :ContinuationPulseNumber,
        name: "Continuation Pulse Number",
        vr: :IS
      },
      0x1405 => %{
        keyword: :ChannelDeliveryOrderSequence,
        name: "Channel Delivery Order Sequence",
        vr: :SQ
      },
      0x1406 => %{
        keyword: :ReferencedChannelNumber,
        name: "Referenced Channel Number",
        vr: :IS
      },
      0x1407 => %{
        keyword: :StartCumulativeTimeWeight,
        name: "Start Cumulative Time Weight",
        vr: :DS
      },
      0x1408 => %{
        keyword: :EndCumulativeTimeWeight,
        name: "End Cumulative Time Weight",
        vr: :DS
      },
      0x1409 => %{
        keyword: :OmittedChannelSequence,
        name: "Omitted Channel Sequence",
        vr: :SQ
      },
      0x140A => %{
        keyword: :ReasonForChannelOmission,
        name: "Reason for Channel Omission",
        vr: :CS
      },
      0x140B => %{
        keyword: :ReasonForChannelOmissionDescription,
        name: "Reason for Channel Omission Description",
        vr: :LO
      },
      0x140C => %{
        keyword: :ChannelDeliveryOrderIndex,
        name: "Channel Delivery Order Index",
        vr: :IS
      },
      0x140D => %{
        keyword: :ChannelDeliveryContinuationSequence,
        name: "Channel Delivery Continuation Sequence",
        vr: :SQ
      },
      0x140E => %{
        keyword: :OmittedApplicationSetupSequence,
        name: "Omitted Application Setup Sequence",
        vr: :SQ
      }
    },
    0x0076 => %{
      0x0001 => %{
        keyword: :ImplantAssemblyTemplateName,
        name: "Implant Assembly Template Name",
        vr: :LO
      },
      0x0003 => %{
        keyword: :ImplantAssemblyTemplateIssuer,
        name: "Implant Assembly Template Issuer",
        vr: :LO
      },
      0x0006 => %{
        keyword: :ImplantAssemblyTemplateVersion,
        name: "Implant Assembly Template Version",
        vr: :LO
      },
      0x0008 => %{
        keyword: :ReplacedImplantAssemblyTemplateSequence,
        name: "Replaced Implant Assembly Template Sequence",
        vr: :SQ
      },
      0x000A => %{
        keyword: :ImplantAssemblyTemplateType,
        name: "Implant Assembly Template Type",
        vr: :CS
      },
      0x000C => %{
        keyword: :OriginalImplantAssemblyTemplateSequence,
        name: "Original Implant Assembly Template Sequence",
        vr: :SQ
      },
      0x000E => %{
        keyword: :DerivationImplantAssemblyTemplateSequence,
        name: "Derivation Implant Assembly Template Sequence",
        vr: :SQ
      },
      0x0010 => %{
        keyword: :ImplantAssemblyTemplateTargetAnatomySequence,
        name: "Implant Assembly Template Target Anatomy Sequence",
        vr: :SQ
      },
      0x0020 => %{
        keyword: :ProcedureTypeCodeSequence,
        name: "Procedure Type Code Sequence",
        vr: :SQ
      },
      0x0030 => %{
        keyword: :SurgicalTechnique,
        name: "Surgical Technique",
        vr: :LO
      },
      0x0032 => %{
        keyword: :ComponentTypesSequence,
        name: "Component Types Sequence",
        vr: :SQ
      },
      0x0034 => %{
        keyword: :ComponentTypeCodeSequence,
        name: "Component Type Code Sequence",
        vr: :SQ
      },
      0x0036 => %{
        keyword: :ExclusiveComponentType,
        name: "Exclusive Component Type",
        vr: :CS
      },
      0x0038 => %{
        keyword: :MandatoryComponentType,
        name: "Mandatory Component Type",
        vr: :CS
      },
      0x0040 => %{
        keyword: :ComponentSequence,
        name: "Component Sequence",
        vr: :SQ
      },
      0x0055 => %{
        keyword: :ComponentID,
        name: "Component ID",
        vr: :US
      },
      0x0060 => %{
        keyword: :ComponentAssemblySequence,
        name: "Component Assembly Sequence",
        vr: :SQ
      },
      0x0070 => %{
        keyword: :Component1ReferencedID,
        name: "Component 1 Referenced ID",
        vr: :US
      },
      0x0080 => %{
        keyword: :Component1ReferencedMatingFeatureSetID,
        name: "Component 1 Referenced Mating Feature Set ID",
        vr: :US
      },
      0x0090 => %{
        keyword: :Component1ReferencedMatingFeatureID,
        name: "Component 1 Referenced Mating Feature ID",
        vr: :US
      },
      0x00A0 => %{
        keyword: :Component2ReferencedID,
        name: "Component 2 Referenced ID",
        vr: :US
      },
      0x00B0 => %{
        keyword: :Component2ReferencedMatingFeatureSetID,
        name: "Component 2 Referenced Mating Feature Set ID",
        vr: :US
      },
      0x00C0 => %{
        keyword: :Component2ReferencedMatingFeatureID,
        name: "Component 2 Referenced Mating Feature ID",
        vr: :US
      }
    },
    0x0078 => %{
      0x0001 => %{
        keyword: :ImplantTemplateGroupName,
        name: "Implant Template Group Name",
        vr: :LO
      },
      0x0010 => %{
        keyword: :ImplantTemplateGroupDescription,
        name: "Implant Template Group Description",
        vr: :ST
      },
      0x0020 => %{
        keyword: :ImplantTemplateGroupIssuer,
        name: "Implant Template Group Issuer",
        vr: :LO
      },
      0x0024 => %{
        keyword: :ImplantTemplateGroupVersion,
        name: "Implant Template Group Version",
        vr: :LO
      },
      0x0026 => %{
        keyword: :ReplacedImplantTemplateGroupSequence,
        name: "Replaced Implant Template Group Sequence",
        vr: :SQ
      },
      0x0028 => %{
        keyword: :ImplantTemplateGroupTargetAnatomySequence,
        name: "Implant Template Group Target Anatomy Sequence",
        vr: :SQ
      },
      0x002A => %{
        keyword: :ImplantTemplateGroupMembersSequence,
        name: "Implant Template Group Members Sequence",
        vr: :SQ
      },
      0x002E => %{
        keyword: :ImplantTemplateGroupMemberID,
        name: "Implant Template Group Member ID",
        vr: :US
      },
      0x0050 => %{
        keyword: :ThreeDImplantTemplateGroupMemberMatchingPoint,
        name: "3D Implant Template Group Member Matching Point",
        vr: :FD
      },
      0x0060 => %{
        keyword: :ThreeDImplantTemplateGroupMemberMatchingAxes,
        name: "3D Implant Template Group Member Matching Axes",
        vr: :FD
      },
      0x0070 => %{
        keyword: :ImplantTemplateGroupMemberMatching2DCoordinatesSequence,
        name: "Implant Template Group Member Matching 2D Coordinates Sequence",
        vr: :SQ
      },
      0x0090 => %{
        keyword: :TwoDImplantTemplateGroupMemberMatchingPoint,
        name: "2D Implant Template Group Member Matching Point",
        vr: :FD
      },
      0x00A0 => %{
        keyword: :TwoDImplantTemplateGroupMemberMatchingAxes,
        name: "2D Implant Template Group Member Matching Axes",
        vr: :FD
      },
      0x00B0 => %{
        keyword: :ImplantTemplateGroupVariationDimensionSequence,
        name: "Implant Template Group Variation Dimension Sequence",
        vr: :SQ
      },
      0x00B2 => %{
        keyword: :ImplantTemplateGroupVariationDimensionName,
        name: "Implant Template Group Variation Dimension Name",
        vr: :LO
      },
      0x00B4 => %{
        keyword: :ImplantTemplateGroupVariationDimensionRankSequence,
        name: "Implant Template Group Variation Dimension Rank Sequence",
        vr: :SQ
      },
      0x00B6 => %{
        keyword: :ReferencedImplantTemplateGroupMemberID,
        name: "Referenced Implant Template Group Member ID",
        vr: :US
      },
      0x00B8 => %{
        keyword: :ImplantTemplateGroupVariationDimensionRank,
        name: "Implant Template Group Variation Dimension Rank",
        vr: :US
      }
    },
    0x0080 => %{
      0x0001 => %{
        keyword: :SurfaceScanAcquisitionTypeCodeSequence,
        name: "Surface Scan Acquisition Type Code Sequence",
        vr: :SQ
      },
      0x0002 => %{
        keyword: :SurfaceScanModeCodeSequence,
        name: "Surface Scan Mode Code Sequence",
        vr: :SQ
      },
      0x0003 => %{
        keyword: :RegistrationMethodCodeSequence,
        name: "Registration Method Code Sequence",
        vr: :SQ
      },
      0x0004 => %{
        keyword: :ShotDurationTime,
        name: "Shot Duration Time",
        vr: :FD
      },
      0x0005 => %{
        keyword: :ShotOffsetTime,
        name: "Shot Offset Time",
        vr: :FD
      },
      0x0006 => %{
        keyword: :SurfacePointPresentationValueData,
        name: "Surface Point Presentation Value Data",
        vr: :US
      },
      0x0007 => %{
        keyword: :SurfacePointColorCIELabValueData,
        name: "Surface Point Color CIELab Value Data",
        vr: :US
      },
      0x0008 => %{
        keyword: :UVMappingSequence,
        name: "UV Mapping Sequence",
        vr: :SQ
      },
      0x0009 => %{
        keyword: :TextureLabel,
        name: "Texture Label",
        vr: :SH
      },
      0x0010 => %{
        keyword: :UValueData,
        name: "U Value Data",
        vr: :OF
      },
      0x0011 => %{
        keyword: :VValueData,
        name: "V Value Data",
        vr: :OF
      },
      0x0012 => %{
        keyword: :ReferencedTextureSequence,
        name: "Referenced Texture Sequence",
        vr: :SQ
      },
      0x0013 => %{
        keyword: :ReferencedSurfaceDataSequence,
        name: "Referenced Surface Data Sequence",
        vr: :SQ
      }
    },
    0x0082 => %{
      0x0001 => %{
        keyword: :AssessmentSummary,
        name: "Assessment Summary",
        vr: :CS
      },
      0x0003 => %{
        keyword: :AssessmentSummaryDescription,
        name: "Assessment Summary Description",
        vr: :UT
      },
      0x0004 => %{
        keyword: :AssessedSOPInstanceSequence,
        name: "Assessed SOP Instance Sequence",
        vr: :SQ
      },
      0x0005 => %{
        keyword: :ReferencedComparisonSOPInstanceSequence,
        name: "Referenced Comparison SOP Instance Sequence",
        vr: :SQ
      },
      0x0006 => %{
        keyword: :NumberOfAssessmentObservations,
        name: "Number of Assessment Observations",
        vr: :UL
      },
      0x0007 => %{
        keyword: :AssessmentObservationsSequence,
        name: "Assessment Observations Sequence",
        vr: :SQ
      },
      0x0008 => %{
        keyword: :ObservationSignificance,
        name: "Observation Significance",
        vr: :CS
      },
      0x000A => %{
        keyword: :ObservationDescription,
        name: "Observation Description",
        vr: :UT
      },
      0x000C => %{
        keyword: :StructuredConstraintObservationSequence,
        name: "Structured Constraint Observation Sequence",
        vr: :SQ
      },
      0x0010 => %{
        keyword: :AssessedAttributeValueSequence,
        name: "Assessed Attribute Value Sequence",
        vr: :SQ
      },
      0x0016 => %{
        keyword: :AssessmentSetID,
        name: "Assessment Set ID",
        vr: :LO
      },
      0x0017 => %{
        keyword: :AssessmentRequesterSequence,
        name: "Assessment Requester Sequence",
        vr: :SQ
      },
      0x0018 => %{
        keyword: :SelectorAttributeName,
        name: "Selector Attribute Name",
        vr: :LO
      },
      0x0019 => %{
        keyword: :SelectorAttributeKeyword,
        name: "Selector Attribute Keyword",
        vr: :LO
      },
      0x0021 => %{
        keyword: :AssessmentTypeCodeSequence,
        name: "Assessment Type Code Sequence",
        vr: :SQ
      },
      0x0022 => %{
        keyword: :ObservationBasisCodeSequence,
        name: "Observation Basis Code Sequence",
        vr: :SQ
      },
      0x0023 => %{
        keyword: :AssessmentLabel,
        name: "Assessment Label",
        vr: :LO
      },
      0x0032 => %{
        keyword: :ConstraintType,
        name: "Constraint Type",
        vr: :CS
      },
      0x0033 => %{
        keyword: :SpecificationSelectionGuidance,
        name: "Specification Selection Guidance",
        vr: :UT
      },
      0x0034 => %{
        keyword: :ConstraintValueSequence,
        name: "Constraint Value Sequence",
        vr: :SQ
      },
      0x0035 => %{
        keyword: :RecommendedDefaultValueSequence,
        name: "Recommended Default Value Sequence",
        vr: :SQ
      },
      0x0036 => %{
        keyword: :ConstraintViolationSignificance,
        name: "Constraint Violation Significance",
        vr: :CS
      },
      0x0037 => %{
        keyword: :ConstraintViolationCondition,
        name: "Constraint Violation Condition",
        vr: :UT
      },
      0x0038 => %{
        keyword: :ModifiableConstraintFlag,
        name: "Modifiable Constraint Flag",
        vr: :CS
      }
    },
    0x0088 => %{
      0x0130 => %{
        keyword: :StorageMediaFileSetID,
        name: "Storage Media File-set ID",
        vr: :SH
      },
      0x0140 => %{
        keyword: :StorageMediaFileSetUID,
        name: "Storage Media File-set UID",
        vr: :UI
      },
      0x0200 => %{
        keyword: :IconImageSequence,
        name: "Icon Image Sequence",
        vr: :SQ
      },
      0x0904 => %{
        keyword: :TopicTitle,
        name: "Topic Title",
        vr: :LO
      },
      0x0906 => %{
        keyword: :TopicSubject,
        name: "Topic Subject",
        vr: :ST
      },
      0x0910 => %{
        keyword: :TopicAuthor,
        name: "Topic Author",
        vr: :LO
      },
      0x0912 => %{
        keyword: :TopicKeywords,
        name: "Topic Keywords",
        vr: :LO
      }
    },
    0x0100 => %{
      0x0410 => %{
        keyword: :SOPInstanceStatus,
        name: "SOP Instance Status",
        vr: :CS
      },
      0x0420 => %{
        keyword: :SOPAuthorizationDateTime,
        name: "SOP Authorization DateTime",
        vr: :DT
      },
      0x0424 => %{
        keyword: :SOPAuthorizationComment,
        name: "SOP Authorization Comment",
        vr: :LT
      },
      0x0426 => %{
        keyword: :AuthorizationEquipmentCertificationNumber,
        name: "Authorization Equipment Certification Number",
        vr: :LO
      }
    },
    0x0400 => %{
      0x0005 => %{
        keyword: :MACIDNumber,
        name: "MAC ID Number",
        vr: :US
      },
      0x0010 => %{
        keyword: :MACCalculationTransferSyntaxUID,
        name: "MAC Calculation Transfer Syntax UID",
        vr: :UI
      },
      0x0015 => %{
        keyword: :MACAlgorithm,
        name: "MAC Algorithm",
        vr: :CS
      },
      0x0020 => %{
        keyword: :DataElementsSigned,
        name: "Data Elements Signed",
        vr: :AT
      },
      0x0100 => %{
        keyword: :DigitalSignatureUID,
        name: "Digital Signature UID",
        vr: :UI
      },
      0x0105 => %{
        keyword: :DigitalSignatureDateTime,
        name: "Digital Signature DateTime",
        vr: :DT
      },
      0x0110 => %{
        keyword: :CertificateType,
        name: "Certificate Type",
        vr: :CS
      },
      0x0115 => %{
        keyword: :CertificateOfSigner,
        name: "Certificate of Signer",
        vr: :OB
      },
      0x0120 => %{
        keyword: :Signature,
        name: "Signature",
        vr: :OB
      },
      0x0305 => %{
        keyword: :CertifiedTimestampType,
        name: "Certified Timestamp Type",
        vr: :CS
      },
      0x0310 => %{
        keyword: :CertifiedTimestamp,
        name: "Certified Timestamp",
        vr: :OB
      },
      0x0401 => %{
        keyword: :DigitalSignaturePurposeCodeSequence,
        name: "Digital Signature Purpose Code Sequence",
        vr: :SQ
      },
      0x0402 => %{
        keyword: :ReferencedDigitalSignatureSequence,
        name: "Referenced Digital Signature Sequence",
        vr: :SQ
      },
      0x0403 => %{
        keyword: :ReferencedSOPInstanceMACSequence,
        name: "Referenced SOP Instance MAC Sequence",
        vr: :SQ
      },
      0x0404 => %{
        keyword: :MAC,
        name: "MAC",
        vr: :OB
      },
      0x0500 => %{
        keyword: :EncryptedAttributesSequence,
        name: "Encrypted Attributes Sequence",
        vr: :SQ
      },
      0x0510 => %{
        keyword: :EncryptedContentTransferSyntaxUID,
        name: "Encrypted Content Transfer Syntax UID",
        vr: :UI
      },
      0x0520 => %{
        keyword: :EncryptedContent,
        name: "Encrypted Content",
        vr: :OB
      },
      0x0550 => %{
        keyword: :ModifiedAttributesSequence,
        name: "Modified Attributes Sequence",
        vr: :SQ
      },
      0x0551 => %{
        keyword: :NonconformingModifiedAttributesSequence,
        name: "Nonconforming Modified Attributes Sequence",
        vr: :SQ
      },
      0x0552 => %{
        keyword: :NonconformingDataElementValue,
        name: "Nonconforming Data Element Value",
        vr: :OB
      },
      0x0561 => %{
        keyword: :OriginalAttributesSequence,
        name: "Original Attributes Sequence",
        vr: :SQ
      },
      0x0562 => %{
        keyword: :AttributeModificationDateTime,
        name: "Attribute Modification DateTime",
        vr: :DT
      },
      0x0563 => %{
        keyword: :ModifyingSystem,
        name: "Modifying System",
        vr: :LO
      },
      0x0564 => %{
        keyword: :SourceOfPreviousValues,
        name: "Source of Previous Values",
        vr: :LO
      },
      0x0565 => %{
        keyword: :ReasonForTheAttributeModification,
        name: "Reason for the Attribute Modification",
        vr: :CS
      },
      0x0600 => %{
        keyword: :InstanceOriginStatus,
        name: "Instance Origin Status",
        vr: :CS
      }
    },
    0x1000 => %{
      0x0000 => %{
        keyword: :EscapeTriplet,
        name: "Escape Triplet",
        vr: :US
      },
      0x0001 => %{
        keyword: :RunLengthTriplet,
        name: "Run Length Triplet",
        vr: :US
      },
      0x0002 => %{
        keyword: :HuffmanTableSize,
        name: "Huffman Table Size",
        vr: :US
      },
      0x0003 => %{
        keyword: :HuffmanTableTriplet,
        name: "Huffman Table Triplet",
        vr: :US
      },
      0x0004 => %{
        keyword: :ShiftTableSize,
        name: "Shift Table Size",
        vr: :US
      },
      0x0005 => %{
        keyword: :ShiftTableTriplet,
        name: "Shift Table Triplet",
        vr: :US
      }
    },
    0x1010 => %{
      0x0000 => %{
        keyword: :ZonalMap,
        name: "Zonal Map",
        vr: :US
      }
    },
    0x2000 => %{
      0x0010 => %{
        keyword: :NumberOfCopies,
        name: "Number of Copies",
        vr: :IS
      },
      0x001E => %{
        keyword: :PrinterConfigurationSequence,
        name: "Printer Configuration Sequence",
        vr: :SQ
      },
      0x0020 => %{
        keyword: :PrintPriority,
        name: "Print Priority",
        vr: :CS
      },
      0x0030 => %{
        keyword: :MediumType,
        name: "Medium Type",
        vr: :CS
      },
      0x0040 => %{
        keyword: :FilmDestination,
        name: "Film Destination",
        vr: :CS
      },
      0x0050 => %{
        keyword: :FilmSessionLabel,
        name: "Film Session Label",
        vr: :LO
      },
      0x0060 => %{
        keyword: :MemoryAllocation,
        name: "Memory Allocation",
        vr: :IS
      },
      0x0061 => %{
        keyword: :MaximumMemoryAllocation,
        name: "Maximum Memory Allocation",
        vr: :IS
      },
      0x0062 => %{
        keyword: :ColorImagePrintingFlag,
        name: "Color Image Printing Flag",
        vr: :CS
      },
      0x0063 => %{
        keyword: :CollationFlag,
        name: "Collation Flag",
        vr: :CS
      },
      0x0065 => %{
        keyword: :AnnotationFlag,
        name: "Annotation Flag",
        vr: :CS
      },
      0x0067 => %{
        keyword: :ImageOverlayFlag,
        name: "Image Overlay Flag",
        vr: :CS
      },
      0x0069 => %{
        keyword: :PresentationLUTFlag,
        name: "Presentation LUT Flag",
        vr: :CS
      },
      0x006A => %{
        keyword: :ImageBoxPresentationLUTFlag,
        name: "Image Box Presentation LUT Flag",
        vr: :CS
      },
      0x00A0 => %{
        keyword: :MemoryBitDepth,
        name: "Memory Bit Depth",
        vr: :US
      },
      0x00A1 => %{
        keyword: :PrintingBitDepth,
        name: "Printing Bit Depth",
        vr: :US
      },
      0x00A2 => %{
        keyword: :MediaInstalledSequence,
        name: "Media Installed Sequence",
        vr: :SQ
      },
      0x00A4 => %{
        keyword: :OtherMediaAvailableSequence,
        name: "Other Media Available Sequence",
        vr: :SQ
      },
      0x00A8 => %{
        keyword: :SupportedImageDisplayFormatsSequence,
        name: "Supported Image Display Formats Sequence",
        vr: :SQ
      },
      0x0500 => %{
        keyword: :ReferencedFilmBoxSequence,
        name: "Referenced Film Box Sequence",
        vr: :SQ
      },
      0x0510 => %{
        keyword: :ReferencedStoredPrintSequence,
        name: "Referenced Stored Print Sequence",
        vr: :SQ
      }
    },
    0x2010 => %{
      0x0010 => %{
        keyword: :ImageDisplayFormat,
        name: "Image Display Format",
        vr: :ST
      },
      0x0030 => %{
        keyword: :AnnotationDisplayFormatID,
        name: "Annotation Display Format ID",
        vr: :CS
      },
      0x0040 => %{
        keyword: :FilmOrientation,
        name: "Film Orientation",
        vr: :CS
      },
      0x0050 => %{
        keyword: :FilmSizeID,
        name: "Film Size ID",
        vr: :CS
      },
      0x0052 => %{
        keyword: :PrinterResolutionID,
        name: "Printer Resolution ID",
        vr: :CS
      },
      0x0054 => %{
        keyword: :DefaultPrinterResolutionID,
        name: "Default Printer Resolution ID",
        vr: :CS
      },
      0x0060 => %{
        keyword: :MagnificationType,
        name: "Magnification Type",
        vr: :CS
      },
      0x0080 => %{
        keyword: :SmoothingType,
        name: "Smoothing Type",
        vr: :CS
      },
      0x00A6 => %{
        keyword: :DefaultMagnificationType,
        name: "Default Magnification Type",
        vr: :CS
      },
      0x00A7 => %{
        keyword: :OtherMagnificationTypesAvailable,
        name: "Other Magnification Types Available",
        vr: :CS
      },
      0x00A8 => %{
        keyword: :DefaultSmoothingType,
        name: "Default Smoothing Type",
        vr: :CS
      },
      0x00A9 => %{
        keyword: :OtherSmoothingTypesAvailable,
        name: "Other Smoothing Types Available",
        vr: :CS
      },
      0x0100 => %{
        keyword: :BorderDensity,
        name: "Border Density",
        vr: :CS
      },
      0x0110 => %{
        keyword: :EmptyImageDensity,
        name: "Empty Image Density",
        vr: :CS
      },
      0x0120 => %{
        keyword: :MinDensity,
        name: "Min Density",
        vr: :US
      },
      0x0130 => %{
        keyword: :MaxDensity,
        name: "Max Density",
        vr: :US
      },
      0x0140 => %{
        keyword: :Trim,
        name: "Trim",
        vr: :CS
      },
      0x0150 => %{
        keyword: :ConfigurationInformation,
        name: "Configuration Information",
        vr: :ST
      },
      0x0152 => %{
        keyword: :ConfigurationInformationDescription,
        name: "Configuration Information Description",
        vr: :LT
      },
      0x0154 => %{
        keyword: :MaximumCollatedFilms,
        name: "Maximum Collated Films",
        vr: :IS
      },
      0x015E => %{
        keyword: :Illumination,
        name: "Illumination",
        vr: :US
      },
      0x0160 => %{
        keyword: :ReflectedAmbientLight,
        name: "Reflected Ambient Light",
        vr: :US
      },
      0x0376 => %{
        keyword: :PrinterPixelSpacing,
        name: "Printer Pixel Spacing",
        vr: :DS
      },
      0x0500 => %{
        keyword: :ReferencedFilmSessionSequence,
        name: "Referenced Film Session Sequence",
        vr: :SQ
      },
      0x0510 => %{
        keyword: :ReferencedImageBoxSequence,
        name: "Referenced Image Box Sequence",
        vr: :SQ
      },
      0x0520 => %{
        keyword: :ReferencedBasicAnnotationBoxSequence,
        name: "Referenced Basic Annotation Box Sequence",
        vr: :SQ
      }
    },
    0x2020 => %{
      0x0010 => %{
        keyword: :ImageBoxPosition,
        name: "Image Box Position",
        vr: :US
      },
      0x0020 => %{
        keyword: :Polarity,
        name: "Polarity",
        vr: :CS
      },
      0x0030 => %{
        keyword: :RequestedImageSize,
        name: "Requested Image Size",
        vr: :DS
      },
      0x0040 => %{
        keyword: :RequestedDecimateCropBehavior,
        name: "Requested Decimate/Crop Behavior",
        vr: :CS
      },
      0x0050 => %{
        keyword: :RequestedResolutionID,
        name: "Requested Resolution ID",
        vr: :CS
      },
      0x00A0 => %{
        keyword: :RequestedImageSizeFlag,
        name: "Requested Image Size Flag",
        vr: :CS
      },
      0x00A2 => %{
        keyword: :DecimateCropResult,
        name: "Decimate/Crop Result",
        vr: :CS
      },
      0x0110 => %{
        keyword: :BasicGrayscaleImageSequence,
        name: "Basic Grayscale Image Sequence",
        vr: :SQ
      },
      0x0111 => %{
        keyword: :BasicColorImageSequence,
        name: "Basic Color Image Sequence",
        vr: :SQ
      },
      0x0130 => %{
        keyword: :ReferencedImageOverlayBoxSequence,
        name: "Referenced Image Overlay Box Sequence",
        vr: :SQ
      },
      0x0140 => %{
        keyword: :ReferencedVOILUTBoxSequence,
        name: "Referenced VOI LUT Box Sequence",
        vr: :SQ
      }
    },
    0x2030 => %{
      0x0010 => %{
        keyword: :AnnotationPosition,
        name: "Annotation Position",
        vr: :US
      },
      0x0020 => %{
        keyword: :TextString,
        name: "Text String",
        vr: :LO
      }
    },
    0x2040 => %{
      0x0010 => %{
        keyword: :ReferencedOverlayPlaneSequence,
        name: "Referenced Overlay Plane Sequence",
        vr: :SQ
      },
      0x0011 => %{
        keyword: :ReferencedOverlayPlaneGroups,
        name: "Referenced Overlay Plane Groups",
        vr: :US
      },
      0x0020 => %{
        keyword: :OverlayPixelDataSequence,
        name: "Overlay Pixel Data Sequence",
        vr: :SQ
      },
      0x0060 => %{
        keyword: :OverlayMagnificationType,
        name: "Overlay Magnification Type",
        vr: :CS
      },
      0x0070 => %{
        keyword: :OverlaySmoothingType,
        name: "Overlay Smoothing Type",
        vr: :CS
      },
      0x0072 => %{
        keyword: :OverlayOrImageMagnification,
        name: "Overlay or Image Magnification",
        vr: :CS
      },
      0x0074 => %{
        keyword: :MagnifyToNumberOfColumns,
        name: "Magnify to Number of Columns",
        vr: :US
      },
      0x0080 => %{
        keyword: :OverlayForegroundDensity,
        name: "Overlay Foreground Density",
        vr: :CS
      },
      0x0082 => %{
        keyword: :OverlayBackgroundDensity,
        name: "Overlay Background Density",
        vr: :CS
      },
      0x0090 => %{
        keyword: :OverlayMode,
        name: "Overlay Mode",
        vr: :CS
      },
      0x0100 => %{
        keyword: :ThresholdDensity,
        name: "Threshold Density",
        vr: :CS
      },
      0x0500 => %{
        keyword: :ReferencedImageBoxSequenceRetired,
        name: "Referenced Image Box Sequence (Retired)",
        vr: :SQ
      }
    },
    0x2050 => %{
      0x0010 => %{
        keyword: :PresentationLUTSequence,
        name: "Presentation LUT Sequence",
        vr: :SQ
      },
      0x0020 => %{
        keyword: :PresentationLUTShape,
        name: "Presentation LUT Shape",
        vr: :CS
      },
      0x0500 => %{
        keyword: :ReferencedPresentationLUTSequence,
        name: "Referenced Presentation LUT Sequence",
        vr: :SQ
      }
    },
    0x2100 => %{
      0x0010 => %{
        keyword: :PrintJobID,
        name: "Print Job ID",
        vr: :SH
      },
      0x0020 => %{
        keyword: :ExecutionStatus,
        name: "Execution Status",
        vr: :CS
      },
      0x0030 => %{
        keyword: :ExecutionStatusInfo,
        name: "Execution Status Info",
        vr: :CS
      },
      0x0040 => %{
        keyword: :CreationDate,
        name: "Creation Date",
        vr: :DA
      },
      0x0050 => %{
        keyword: :CreationTime,
        name: "Creation Time",
        vr: :TM
      },
      0x0070 => %{
        keyword: :Originator,
        name: "Originator",
        vr: :AE
      },
      0x0140 => %{
        keyword: :DestinationAE,
        name: "Destination AE",
        vr: :AE
      },
      0x0160 => %{
        keyword: :OwnerID,
        name: "Owner ID",
        vr: :SH
      },
      0x0170 => %{
        keyword: :NumberOfFilms,
        name: "Number of Films",
        vr: :IS
      },
      0x0500 => %{
        keyword: :ReferencedPrintJobSequencePullStoredPrint,
        name: "Referenced Print Job Sequence (Pull Stored Print)",
        vr: :SQ
      }
    },
    0x2110 => %{
      0x0010 => %{
        keyword: :PrinterStatus,
        name: "Printer Status",
        vr: :CS
      },
      0x0020 => %{
        keyword: :PrinterStatusInfo,
        name: "Printer Status Info",
        vr: :CS
      },
      0x0030 => %{
        keyword: :PrinterName,
        name: "Printer Name",
        vr: :LO
      },
      0x0099 => %{
        keyword: :PrintQueueID,
        name: "Print Queue ID",
        vr: :SH
      }
    },
    0x2120 => %{
      0x0010 => %{
        keyword: :QueueStatus,
        name: "Queue Status",
        vr: :CS
      },
      0x0050 => %{
        keyword: :PrintJobDescriptionSequence,
        name: "Print Job Description Sequence",
        vr: :SQ
      },
      0x0070 => %{
        keyword: :ReferencedPrintJobSequence,
        name: "Referenced Print Job Sequence",
        vr: :SQ
      }
    },
    0x2130 => %{
      0x0010 => %{
        keyword: :PrintManagementCapabilitiesSequence,
        name: "Print Management Capabilities Sequence",
        vr: :SQ
      },
      0x0015 => %{
        keyword: :PrinterCharacteristicsSequence,
        name: "Printer Characteristics Sequence",
        vr: :SQ
      },
      0x0030 => %{
        keyword: :FilmBoxContentSequence,
        name: "Film Box Content Sequence",
        vr: :SQ
      },
      0x0040 => %{
        keyword: :ImageBoxContentSequence,
        name: "Image Box Content Sequence",
        vr: :SQ
      },
      0x0050 => %{
        keyword: :AnnotationContentSequence,
        name: "Annotation Content Sequence",
        vr: :SQ
      },
      0x0060 => %{
        keyword: :ImageOverlayBoxContentSequence,
        name: "Image Overlay Box Content Sequence",
        vr: :SQ
      },
      0x0080 => %{
        keyword: :PresentationLUTContentSequence,
        name: "Presentation LUT Content Sequence",
        vr: :SQ
      },
      0x00A0 => %{
        keyword: :ProposedStudySequence,
        name: "Proposed Study Sequence",
        vr: :SQ
      },
      0x00C0 => %{
        keyword: :OriginalImageSequence,
        name: "Original Image Sequence",
        vr: :SQ
      }
    },
    0x2200 => %{
      0x0001 => %{
        keyword: :LabelUsingInformationExtractedFromInstances,
        name: "Label Using Information Extracted From Instances",
        vr: :CS
      },
      0x0002 => %{
        keyword: :LabelText,
        name: "Label Text",
        vr: :UT
      },
      0x0003 => %{
        keyword: :LabelStyleSelection,
        name: "Label Style Selection",
        vr: :CS
      },
      0x0004 => %{
        keyword: :MediaDisposition,
        name: "Media Disposition",
        vr: :LT
      },
      0x0005 => %{
        keyword: :BarcodeValue,
        name: "Barcode Value",
        vr: :LT
      },
      0x0006 => %{
        keyword: :BarcodeSymbology,
        name: "Barcode Symbology",
        vr: :CS
      },
      0x0007 => %{
        keyword: :AllowMediaSplitting,
        name: "Allow Media Splitting",
        vr: :CS
      },
      0x0008 => %{
        keyword: :IncludeNonDICOMObjects,
        name: "Include Non-DICOM Objects",
        vr: :CS
      },
      0x0009 => %{
        keyword: :IncludeDisplayApplication,
        name: "Include Display Application",
        vr: :CS
      },
      0x000A => %{
        keyword: :PreserveCompositeInstancesAfterMediaCreation,
        name: "Preserve Composite Instances After Media Creation",
        vr: :CS
      },
      0x000B => %{
        keyword: :TotalNumberOfPiecesOfMediaCreated,
        name: "Total Number of Pieces of Media Created",
        vr: :US
      },
      0x000C => %{
        keyword: :RequestedMediaApplicationProfile,
        name: "Requested Media Application Profile",
        vr: :LO
      },
      0x000D => %{
        keyword: :ReferencedStorageMediaSequence,
        name: "Referenced Storage Media Sequence",
        vr: :SQ
      },
      0x000E => %{
        keyword: :FailureAttributes,
        name: "Failure Attributes",
        vr: :AT
      },
      0x000F => %{
        keyword: :AllowLossyCompression,
        name: "Allow Lossy Compression",
        vr: :CS
      },
      0x0020 => %{
        keyword: :RequestPriority,
        name: "Request Priority",
        vr: :CS
      }
    },
    0x3002 => %{
      0x0002 => %{
        keyword: :RTImageLabel,
        name: "RT Image Label",
        vr: :SH
      },
      0x0003 => %{
        keyword: :RTImageName,
        name: "RT Image Name",
        vr: :LO
      },
      0x0004 => %{
        keyword: :RTImageDescription,
        name: "RT Image Description",
        vr: :ST
      },
      0x000A => %{
        keyword: :ReportedValuesOrigin,
        name: "Reported Values Origin",
        vr: :CS
      },
      0x000C => %{
        keyword: :RTImagePlane,
        name: "RT Image Plane",
        vr: :CS
      },
      0x000D => %{
        keyword: :XRayImageReceptorTranslation,
        name: "X-Ray Image Receptor Translation",
        vr: :DS
      },
      0x000E => %{
        keyword: :XRayImageReceptorAngle,
        name: "X-Ray Image Receptor Angle",
        vr: :DS
      },
      0x0010 => %{
        keyword: :RTImageOrientation,
        name: "RT Image Orientation",
        vr: :DS
      },
      0x0011 => %{
        keyword: :ImagePlanePixelSpacing,
        name: "Image Plane Pixel Spacing",
        vr: :DS
      },
      0x0012 => %{
        keyword: :RTImagePosition,
        name: "RT Image Position",
        vr: :DS
      },
      0x0020 => %{
        keyword: :RadiationMachineName,
        name: "Radiation Machine Name",
        vr: :SH
      },
      0x0022 => %{
        keyword: :RadiationMachineSAD,
        name: "Radiation Machine SAD",
        vr: :DS
      },
      0x0024 => %{
        keyword: :RadiationMachineSSD,
        name: "Radiation Machine SSD",
        vr: :DS
      },
      0x0026 => %{
        keyword: :RTImageSID,
        name: "RT Image SID",
        vr: :DS
      },
      0x0028 => %{
        keyword: :SourceToReferenceObjectDistance,
        name: "Source to Reference Object Distance",
        vr: :DS
      },
      0x0029 => %{
        keyword: :FractionNumber,
        name: "Fraction Number",
        vr: :IS
      },
      0x0030 => %{
        keyword: :ExposureSequence,
        name: "Exposure Sequence",
        vr: :SQ
      },
      0x0032 => %{
        keyword: :MetersetExposure,
        name: "Meterset Exposure",
        vr: :DS
      },
      0x0034 => %{
        keyword: :DiaphragmPosition,
        name: "Diaphragm Position",
        vr: :DS
      },
      0x0040 => %{
        keyword: :FluenceMapSequence,
        name: "Fluence Map Sequence",
        vr: :SQ
      },
      0x0041 => %{
        keyword: :FluenceDataSource,
        name: "Fluence Data Source",
        vr: :CS
      },
      0x0042 => %{
        keyword: :FluenceDataScale,
        name: "Fluence Data Scale",
        vr: :DS
      },
      0x0050 => %{
        keyword: :PrimaryFluenceModeSequence,
        name: "Primary Fluence Mode Sequence",
        vr: :SQ
      },
      0x0051 => %{
        keyword: :FluenceMode,
        name: "Fluence Mode",
        vr: :CS
      },
      0x0052 => %{
        keyword: :FluenceModeID,
        name: "Fluence Mode ID",
        vr: :SH
      },
      0x0100 => %{
        keyword: :SelectedFrameNumber,
        name: "Selected Frame Number",
        vr: :IS
      },
      0x0101 => %{
        keyword: :SelectedFrameFunctionalGroupsSequence,
        name: "Selected Frame Functional Groups Sequence",
        vr: :SQ
      },
      0x0102 => %{
        keyword: :RTImageFrameGeneralContentSequence,
        name: "RT Image Frame General Content Sequence",
        vr: :SQ
      },
      0x0103 => %{
        keyword: :RTImageFrameContextSequence,
        name: "RT Image Frame Context Sequence",
        vr: :SQ
      },
      0x0104 => %{
        keyword: :RTImageScopeSequence,
        name: "RT Image Scope Sequence",
        vr: :SQ
      },
      0x0105 => %{
        keyword: :BeamModifierCoordinatesPresenceFlag,
        name: "Beam Modifier Coordinates Presence Flag",
        vr: :CS
      },
      0x0106 => %{
        keyword: :StartCumulativeMeterset,
        name: "Start Cumulative Meterset",
        vr: :FD
      },
      0x0107 => %{
        keyword: :StopCumulativeMeterset,
        name: "Stop Cumulative Meterset",
        vr: :FD
      },
      0x0108 => %{
        keyword: :RTAcquisitionPatientPositionSequence,
        name: "RT Acquisition Patient Position Sequence",
        vr: :SQ
      },
      0x0109 => %{
        keyword: :RTImageFrameImagingDevicePositionSequence,
        name: "RT Image Frame Imaging Device Position Sequence",
        vr: :SQ
      },
      0x010A => %{
        keyword: :RTImageFramekVRadiationAcquisitionSequence,
        name: "RT Image Frame kV Radiation Acquisition Sequence",
        vr: :SQ
      },
      0x010B => %{
        keyword: :RTImageFrameMVRadiationAcquisitionSequence,
        name: "RT Image Frame MV Radiation Acquisition Sequence",
        vr: :SQ
      },
      0x010C => %{
        keyword: :RTImageFrameRadiationAcquisitionSequence,
        name: "RT Image Frame Radiation Acquisition Sequence",
        vr: :SQ
      },
      0x010D => %{
        keyword: :ImagingSourcePositionSequence,
        name: "Imaging Source Position Sequence",
        vr: :SQ
      },
      0x010E => %{
        keyword: :ImageReceptorPositionSequence,
        name: "Image Receptor Position Sequence",
        vr: :SQ
      },
      0x010F => %{
        keyword: :DevicePositionToEquipmentMappingMatrix,
        name: "Device Position to Equipment Mapping Matrix",
        vr: :FD
      },
      0x0110 => %{
        keyword: :DevicePositionParameterSequence,
        name: "Device Position Parameter Sequence",
        vr: :SQ
      },
      0x0111 => %{
        keyword: :ImagingSourceLocationSpecificationType,
        name: "Imaging Source Location Specification Type",
        vr: :CS
      },
      0x0112 => %{
        keyword: :ImagingDeviceLocationMatrixSequence,
        name: "Imaging Device Location Matrix Sequence",
        vr: :SQ
      },
      0x0113 => %{
        keyword: :ImagingDeviceLocationParameterSequence,
        name: "Imaging Device Location Parameter Sequence",
        vr: :SQ
      },
      0x0114 => %{
        keyword: :ImagingApertureSequence,
        name: "Imaging Aperture Sequence",
        vr: :SQ
      },
      0x0115 => %{
        keyword: :ImagingApertureSpecificationType,
        name: "Imaging Aperture Specification Type",
        vr: :CS
      },
      0x0116 => %{
        keyword: :NumberOfAcquisitionDevices,
        name: "Number of Acquisition Devices",
        vr: :US
      },
      0x0117 => %{
        keyword: :AcquisitionDeviceSequence,
        name: "Acquisition Device Sequence",
        vr: :SQ
      },
      0x0118 => %{
        keyword: :AcquisitionTaskSequence,
        name: "Acquisition Task Sequence",
        vr: :SQ
      },
      0x0119 => %{
        keyword: :AcquisitionTaskWorkitemCodeSequence,
        name: "Acquisition Task Workitem Code Sequence",
        vr: :SQ
      },
      0x011A => %{
        keyword: :AcquisitionSubtaskSequence,
        name: "Acquisition Subtask Sequence",
        vr: :SQ
      },
      0x011B => %{
        keyword: :SubtaskWorkitemCodeSequence,
        name: "Subtask Workitem Code Sequence",
        vr: :SQ
      },
      0x011C => %{
        keyword: :AcquisitionTaskIndex,
        name: "Acquisition Task Index",
        vr: :US
      },
      0x011D => %{
        keyword: :AcquisitionSubtaskIndex,
        name: "Acquisition Subtask Index",
        vr: :US
      },
      0x011E => %{
        keyword: :ReferencedBaselineParametersRTRadiationInstanceSequence,
        name: "Referenced Baseline Parameters RT Radiation Instance Sequence",
        vr: :SQ
      },
      0x011F => %{
        keyword: :PositionAcquisitionTemplateIdentificationSequence,
        name: "Position Acquisition Template Identification Sequence",
        vr: :SQ
      },
      0x0120 => %{
        keyword: :PositionAcquisitionTemplateID,
        name: "Position Acquisition Template ID",
        vr: :ST
      },
      0x0121 => %{
        keyword: :PositionAcquisitionTemplateName,
        name: "Position Acquisition Template Name",
        vr: :LO
      },
      0x0122 => %{
        keyword: :PositionAcquisitionTemplateCodeSequence,
        name: "Position Acquisition Template Code Sequence",
        vr: :SQ
      },
      0x0123 => %{
        keyword: :PositionAcquisitionTemplateDescription,
        name: "Position Acquisition Template Description",
        vr: :LT
      },
      0x0124 => %{
        keyword: :AcquisitionTaskApplicabilitySequence,
        name: "Acquisition Task Applicability Sequence",
        vr: :SQ
      },
      0x0125 => %{
        keyword: :ProjectionImagingAcquisitionParameterSequence,
        name: "Projection Imaging Acquisition Parameter Sequence",
        vr: :SQ
      },
      0x0126 => %{
        keyword: :CTImagingAcquisitionParameterSequence,
        name: "CT Imaging Acquisition Parameter Sequence",
        vr: :SQ
      },
      0x0127 => %{
        keyword: :KVImagingGenerationParametersSequence,
        name: "KV Imaging Generation Parameters Sequence",
        vr: :SQ
      },
      0x0128 => %{
        keyword: :MVImagingGenerationParametersSequence,
        name: "MV Imaging Generation Parameters Sequence",
        vr: :SQ
      },
      0x0129 => %{
        keyword: :AcquisitionSignalType,
        name: "Acquisition Signal Type",
        vr: :CS
      },
      0x012A => %{
        keyword: :AcquisitionMethod,
        name: "Acquisition Method",
        vr: :CS
      },
      0x012B => %{
        keyword: :ScanStartPositionSequence,
        name: "Scan Start Position Sequence",
        vr: :SQ
      },
      0x012C => %{
        keyword: :ScanStopPositionSequence,
        name: "Scan Stop Position Sequence",
        vr: :SQ
      },
      0x012D => %{
        keyword: :ImagingSourceToBeamModifierDefinitionPlaneDistance,
        name: "Imaging Source to Beam Modifier Definition Plane Distance",
        vr: :FD
      },
      0x012E => %{
        keyword: :ScanArcType,
        name: "Scan Arc Type",
        vr: :CS
      },
      0x012F => %{
        keyword: :DetectorPositioningType,
        name: "Detector Positioning Type",
        vr: :CS
      },
      0x0130 => %{
        keyword: :AdditionalRTAccessoryDeviceSequence,
        name: "Additional RT Accessory Device Sequence",
        vr: :SQ
      },
      0x0131 => %{
        keyword: :DeviceSpecificAcquisitionParameterSequence,
        name: "Device-Specific Acquisition Parameter Sequence",
        vr: :SQ
      },
      0x0132 => %{
        keyword: :ReferencedPositionReferenceInstanceSequence,
        name: "Referenced Position Reference Instance Sequence",
        vr: :SQ
      },
      0x0133 => %{
        keyword: :EnergyDerivationCodeSequence,
        name: "Energy Derivation Code Sequence",
        vr: :SQ
      },
      0x0134 => %{
        keyword: :MaximumCumulativeMetersetExposure,
        name: "Maximum Cumulative Meterset Exposure",
        vr: :FD
      },
      0x0135 => %{
        keyword: :AcquisitionInitiationSequence,
        name: "Acquisition Initiation Sequence",
        vr: :SQ
      },
      0x0136 => %{
        keyword: :RTConeBeamImagingGeometrySequence,
        name: "RT Cone-Beam Imaging Geometry Sequence",
        vr: :SQ
      }
    },
    0x3004 => %{
      0x0001 => %{
        keyword: :DVHType,
        name: "DVH Type",
        vr: :CS
      },
      0x0002 => %{
        keyword: :DoseUnits,
        name: "Dose Units",
        vr: :CS
      },
      0x0004 => %{
        keyword: :DoseType,
        name: "Dose Type",
        vr: :CS
      },
      0x0005 => %{
        keyword: :SpatialTransformOfDose,
        name: "Spatial Transform of Dose",
        vr: :CS
      },
      0x0006 => %{
        keyword: :DoseComment,
        name: "Dose Comment",
        vr: :LO
      },
      0x0008 => %{
        keyword: :NormalizationPoint,
        name: "Normalization Point",
        vr: :DS
      },
      0x000A => %{
        keyword: :DoseSummationType,
        name: "Dose Summation Type",
        vr: :CS
      },
      0x000C => %{
        keyword: :GridFrameOffsetVector,
        name: "Grid Frame Offset Vector",
        vr: :DS
      },
      0x000E => %{
        keyword: :DoseGridScaling,
        name: "Dose Grid Scaling",
        vr: :DS
      },
      0x0010 => %{
        keyword: :RTDoseROISequence,
        name: "RT Dose ROI Sequence",
        vr: :SQ
      },
      0x0012 => %{
        keyword: :DoseValue,
        name: "Dose Value",
        vr: :DS
      },
      0x0014 => %{
        keyword: :TissueHeterogeneityCorrection,
        name: "Tissue Heterogeneity Correction",
        vr: :CS
      },
      0x0040 => %{
        keyword: :DVHNormalizationPoint,
        name: "DVH Normalization Point",
        vr: :DS
      },
      0x0042 => %{
        keyword: :DVHNormalizationDoseValue,
        name: "DVH Normalization Dose Value",
        vr: :DS
      },
      0x0050 => %{
        keyword: :DVHSequence,
        name: "DVH Sequence",
        vr: :SQ
      },
      0x0052 => %{
        keyword: :DVHDoseScaling,
        name: "DVH Dose Scaling",
        vr: :DS
      },
      0x0054 => %{
        keyword: :DVHVolumeUnits,
        name: "DVH Volume Units",
        vr: :CS
      },
      0x0056 => %{
        keyword: :DVHNumberOfBins,
        name: "DVH Number of Bins",
        vr: :IS
      },
      0x0058 => %{
        keyword: :DVHData,
        name: "DVH Data",
        vr: :DS
      },
      0x0060 => %{
        keyword: :DVHReferencedROISequence,
        name: "DVH Referenced ROI Sequence",
        vr: :SQ
      },
      0x0062 => %{
        keyword: :DVHROIContributionType,
        name: "DVH ROI Contribution Type",
        vr: :CS
      },
      0x0070 => %{
        keyword: :DVHMinimumDose,
        name: "DVH Minimum Dose",
        vr: :DS
      },
      0x0072 => %{
        keyword: :DVHMaximumDose,
        name: "DVH Maximum Dose",
        vr: :DS
      },
      0x0074 => %{
        keyword: :DVHMeanDose,
        name: "DVH Mean Dose",
        vr: :DS
      }
    },
    0x3006 => %{
      0x0002 => %{
        keyword: :StructureSetLabel,
        name: "Structure Set Label",
        vr: :SH
      },
      0x0004 => %{
        keyword: :StructureSetName,
        name: "Structure Set Name",
        vr: :LO
      },
      0x0006 => %{
        keyword: :StructureSetDescription,
        name: "Structure Set Description",
        vr: :ST
      },
      0x0008 => %{
        keyword: :StructureSetDate,
        name: "Structure Set Date",
        vr: :DA
      },
      0x0009 => %{
        keyword: :StructureSetTime,
        name: "Structure Set Time",
        vr: :TM
      },
      0x0010 => %{
        keyword: :ReferencedFrameOfReferenceSequence,
        name: "Referenced Frame of Reference Sequence",
        vr: :SQ
      },
      0x0012 => %{
        keyword: :RTReferencedStudySequence,
        name: "RT Referenced Study Sequence",
        vr: :SQ
      },
      0x0014 => %{
        keyword: :RTReferencedSeriesSequence,
        name: "RT Referenced Series Sequence",
        vr: :SQ
      },
      0x0016 => %{
        keyword: :ContourImageSequence,
        name: "Contour Image Sequence",
        vr: :SQ
      },
      0x0018 => %{
        keyword: :PredecessorStructureSetSequence,
        name: "Predecessor Structure Set Sequence",
        vr: :SQ
      },
      0x0020 => %{
        keyword: :StructureSetROISequence,
        name: "Structure Set ROI Sequence",
        vr: :SQ
      },
      0x0022 => %{
        keyword: :ROINumber,
        name: "ROI Number",
        vr: :IS
      },
      0x0024 => %{
        keyword: :ReferencedFrameOfReferenceUID,
        name: "Referenced Frame of Reference UID",
        vr: :UI
      },
      0x0026 => %{
        keyword: :ROIName,
        name: "ROI Name",
        vr: :LO
      },
      0x0028 => %{
        keyword: :ROIDescription,
        name: "ROI Description",
        vr: :ST
      },
      0x002A => %{
        keyword: :ROIDisplayColor,
        name: "ROI Display Color",
        vr: :IS
      },
      0x002C => %{
        keyword: :ROIVolume,
        name: "ROI Volume",
        vr: :DS
      },
      0x002D => %{
        keyword: :ROIDateTime,
        name: "ROI DateTime",
        vr: :DT
      },
      0x002E => %{
        keyword: :ROIObservationDateTime,
        name: "ROI Observation DateTime",
        vr: :DT
      },
      0x0030 => %{
        keyword: :RTRelatedROISequence,
        name: "RT Related ROI Sequence",
        vr: :SQ
      },
      0x0033 => %{
        keyword: :RTROIRelationship,
        name: "RT ROI Relationship",
        vr: :CS
      },
      0x0036 => %{
        keyword: :ROIGenerationAlgorithm,
        name: "ROI Generation Algorithm",
        vr: :CS
      },
      0x0037 => %{
        keyword: :ROIDerivationAlgorithmIdentificationSequence,
        name: "ROI Derivation Algorithm Identification Sequence",
        vr: :SQ
      },
      0x0038 => %{
        keyword: :ROIGenerationDescription,
        name: "ROI Generation Description",
        vr: :LO
      },
      0x0039 => %{
        keyword: :ROIContourSequence,
        name: "ROI Contour Sequence",
        vr: :SQ
      },
      0x0040 => %{
        keyword: :ContourSequence,
        name: "Contour Sequence",
        vr: :SQ
      },
      0x0042 => %{
        keyword: :ContourGeometricType,
        name: "Contour Geometric Type",
        vr: :CS
      },
      0x0044 => %{
        keyword: :ContourSlabThickness,
        name: "Contour Slab Thickness",
        vr: :DS
      },
      0x0045 => %{
        keyword: :ContourOffsetVector,
        name: "Contour Offset Vector",
        vr: :DS
      },
      0x0046 => %{
        keyword: :NumberOfContourPoints,
        name: "Number of Contour Points",
        vr: :IS
      },
      0x0048 => %{
        keyword: :ContourNumber,
        name: "Contour Number",
        vr: :IS
      },
      0x0049 => %{
        keyword: :AttachedContours,
        name: "Attached Contours",
        vr: :IS
      },
      0x004A => %{
        keyword: :SourcePixelPlanesCharacteristicsSequence,
        name: "Source Pixel Planes Characteristics Sequence",
        vr: :SQ
      },
      0x004B => %{
        keyword: :SourceSeriesSequence,
        name: "Source Series Sequence",
        vr: :SQ
      },
      0x004C => %{
        keyword: :SourceSeriesInformationSequence,
        name: "Source Series Information Sequence",
        vr: :SQ
      },
      0x004D => %{
        keyword: :ROICreatorSequence,
        name: "ROI Creator Sequence",
        vr: :SQ
      },
      0x004E => %{
        keyword: :ROIInterpreterSequence,
        name: "ROI Interpreter Sequence",
        vr: :SQ
      },
      0x004F => %{
        keyword: :ROIObservationContextCodeSequence,
        name: "ROI Observation Context Code Sequence",
        vr: :SQ
      },
      0x0050 => %{
        keyword: :ContourData,
        name: "Contour Data",
        vr: :DS
      },
      0x0080 => %{
        keyword: :RTROIObservationsSequence,
        name: "RT ROI Observations Sequence",
        vr: :SQ
      },
      0x0082 => %{
        keyword: :ObservationNumber,
        name: "Observation Number",
        vr: :IS
      },
      0x0084 => %{
        keyword: :ReferencedROINumber,
        name: "Referenced ROI Number",
        vr: :IS
      },
      0x0085 => %{
        keyword: :ROIObservationLabel,
        name: "ROI Observation Label",
        vr: :SH
      },
      0x0086 => %{
        keyword: :RTROIIdentificationCodeSequence,
        name: "RT ROI Identification Code Sequence",
        vr: :SQ
      },
      0x0088 => %{
        keyword: :ROIObservationDescription,
        name: "ROI Observation Description",
        vr: :ST
      },
      0x00A0 => %{
        keyword: :RelatedRTROIObservationsSequence,
        name: "Related RT ROI Observations Sequence",
        vr: :SQ
      },
      0x00A4 => %{
        keyword: :RTROIInterpretedType,
        name: "RT ROI Interpreted Type",
        vr: :CS
      },
      0x00A6 => %{
        keyword: :ROIInterpreter,
        name: "ROI Interpreter",
        vr: :PN
      },
      0x00B0 => %{
        keyword: :ROIPhysicalPropertiesSequence,
        name: "ROI Physical Properties Sequence",
        vr: :SQ
      },
      0x00B2 => %{
        keyword: :ROIPhysicalProperty,
        name: "ROI Physical Property",
        vr: :CS
      },
      0x00B4 => %{
        keyword: :ROIPhysicalPropertyValue,
        name: "ROI Physical Property Value",
        vr: :DS
      },
      0x00B6 => %{
        keyword: :ROIElementalCompositionSequence,
        name: "ROI Elemental Composition Sequence",
        vr: :SQ
      },
      0x00B7 => %{
        keyword: :ROIElementalCompositionAtomicNumber,
        name: "ROI Elemental Composition Atomic Number",
        vr: :US
      },
      0x00B8 => %{
        keyword: :ROIElementalCompositionAtomicMassFraction,
        name: "ROI Elemental Composition Atomic Mass Fraction",
        vr: :FL
      },
      0x00B9 => %{
        keyword: :AdditionalRTROIIdentificationCodeSequence,
        name: "Additional RT ROI Identification Code Sequence",
        vr: :SQ
      },
      0x00C0 => %{
        keyword: :FrameOfReferenceRelationshipSequence,
        name: "Frame of Reference Relationship Sequence",
        vr: :SQ
      },
      0x00C2 => %{
        keyword: :RelatedFrameOfReferenceUID,
        name: "Related Frame of Reference UID",
        vr: :UI
      },
      0x00C4 => %{
        keyword: :FrameOfReferenceTransformationType,
        name: "Frame of Reference Transformation Type",
        vr: :CS
      },
      0x00C6 => %{
        keyword: :FrameOfReferenceTransformationMatrix,
        name: "Frame of Reference Transformation Matrix",
        vr: :DS
      },
      0x00C8 => %{
        keyword: :FrameOfReferenceTransformationComment,
        name: "Frame of Reference Transformation Comment",
        vr: :LO
      },
      0x00C9 => %{
        keyword: :PatientLocationCoordinatesSequence,
        name: "Patient Location Coordinates Sequence",
        vr: :SQ
      },
      0x00CA => %{
        keyword: :PatientLocationCoordinatesCodeSequence,
        name: "Patient Location Coordinates Code Sequence",
        vr: :SQ
      },
      0x00CB => %{
        keyword: :PatientSupportPositionSequence,
        name: "Patient Support Position Sequence",
        vr: :SQ
      }
    },
    0x3008 => %{
      0x0010 => %{
        keyword: :MeasuredDoseReferenceSequence,
        name: "Measured Dose Reference Sequence",
        vr: :SQ
      },
      0x0012 => %{
        keyword: :MeasuredDoseDescription,
        name: "Measured Dose Description",
        vr: :ST
      },
      0x0014 => %{
        keyword: :MeasuredDoseType,
        name: "Measured Dose Type",
        vr: :CS
      },
      0x0016 => %{
        keyword: :MeasuredDoseValue,
        name: "Measured Dose Value",
        vr: :DS
      },
      0x0020 => %{
        keyword: :TreatmentSessionBeamSequence,
        name: "Treatment Session Beam Sequence",
        vr: :SQ
      },
      0x0021 => %{
        keyword: :TreatmentSessionIonBeamSequence,
        name: "Treatment Session Ion Beam Sequence",
        vr: :SQ
      },
      0x0022 => %{
        keyword: :CurrentFractionNumber,
        name: "Current Fraction Number",
        vr: :IS
      },
      0x0024 => %{
        keyword: :TreatmentControlPointDate,
        name: "Treatment Control Point Date",
        vr: :DA
      },
      0x0025 => %{
        keyword: :TreatmentControlPointTime,
        name: "Treatment Control Point Time",
        vr: :TM
      },
      0x002A => %{
        keyword: :TreatmentTerminationStatus,
        name: "Treatment Termination Status",
        vr: :CS
      },
      0x002B => %{
        keyword: :TreatmentTerminationCode,
        name: "Treatment Termination Code",
        vr: :SH
      },
      0x002C => %{
        keyword: :TreatmentVerificationStatus,
        name: "Treatment Verification Status",
        vr: :CS
      },
      0x0030 => %{
        keyword: :ReferencedTreatmentRecordSequence,
        name: "Referenced Treatment Record Sequence",
        vr: :SQ
      },
      0x0032 => %{
        keyword: :SpecifiedPrimaryMeterset,
        name: "Specified Primary Meterset",
        vr: :DS
      },
      0x0033 => %{
        keyword: :SpecifiedSecondaryMeterset,
        name: "Specified Secondary Meterset",
        vr: :DS
      },
      0x0036 => %{
        keyword: :DeliveredPrimaryMeterset,
        name: "Delivered Primary Meterset",
        vr: :DS
      },
      0x0037 => %{
        keyword: :DeliveredSecondaryMeterset,
        name: "Delivered Secondary Meterset",
        vr: :DS
      },
      0x003A => %{
        keyword: :SpecifiedTreatmentTime,
        name: "Specified Treatment Time",
        vr: :DS
      },
      0x003B => %{
        keyword: :DeliveredTreatmentTime,
        name: "Delivered Treatment Time",
        vr: :DS
      },
      0x0040 => %{
        keyword: :ControlPointDeliverySequence,
        name: "Control Point Delivery Sequence",
        vr: :SQ
      },
      0x0041 => %{
        keyword: :IonControlPointDeliverySequence,
        name: "Ion Control Point Delivery Sequence",
        vr: :SQ
      },
      0x0042 => %{
        keyword: :SpecifiedMeterset,
        name: "Specified Meterset",
        vr: :DS
      },
      0x0044 => %{
        keyword: :DeliveredMeterset,
        name: "Delivered Meterset",
        vr: :DS
      },
      0x0045 => %{
        keyword: :MetersetRateSet,
        name: "Meterset Rate Set",
        vr: :FL
      },
      0x0046 => %{
        keyword: :MetersetRateDelivered,
        name: "Meterset Rate Delivered",
        vr: :FL
      },
      0x0047 => %{
        keyword: :ScanSpotMetersetsDelivered,
        name: "Scan Spot Metersets Delivered",
        vr: :FL
      },
      0x0048 => %{
        keyword: :DoseRateDelivered,
        name: "Dose Rate Delivered",
        vr: :DS
      },
      0x0050 => %{
        keyword: :TreatmentSummaryCalculatedDoseReferenceSequence,
        name: "Treatment Summary Calculated Dose Reference Sequence",
        vr: :SQ
      },
      0x0052 => %{
        keyword: :CumulativeDoseToDoseReference,
        name: "Cumulative Dose to Dose Reference",
        vr: :DS
      },
      0x0054 => %{
        keyword: :FirstTreatmentDate,
        name: "First Treatment Date",
        vr: :DA
      },
      0x0056 => %{
        keyword: :MostRecentTreatmentDate,
        name: "Most Recent Treatment Date",
        vr: :DA
      },
      0x005A => %{
        keyword: :NumberOfFractionsDelivered,
        name: "Number of Fractions Delivered",
        vr: :IS
      },
      0x0060 => %{
        keyword: :OverrideSequence,
        name: "Override Sequence",
        vr: :SQ
      },
      0x0061 => %{
        keyword: :ParameterSequencePointer,
        name: "Parameter Sequence Pointer",
        vr: :AT
      },
      0x0062 => %{
        keyword: :OverrideParameterPointer,
        name: "Override Parameter Pointer",
        vr: :AT
      },
      0x0063 => %{
        keyword: :ParameterItemIndex,
        name: "Parameter Item Index",
        vr: :IS
      },
      0x0064 => %{
        keyword: :MeasuredDoseReferenceNumber,
        name: "Measured Dose Reference Number",
        vr: :IS
      },
      0x0065 => %{
        keyword: :ParameterPointer,
        name: "Parameter Pointer",
        vr: :AT
      },
      0x0066 => %{
        keyword: :OverrideReason,
        name: "Override Reason",
        vr: :ST
      },
      0x0067 => %{
        keyword: :ParameterValueNumber,
        name: "Parameter Value Number",
        vr: :US
      },
      0x0068 => %{
        keyword: :CorrectedParameterSequence,
        name: "Corrected Parameter Sequence",
        vr: :SQ
      },
      0x006A => %{
        keyword: :CorrectionValue,
        name: "Correction Value",
        vr: :FL
      },
      0x0070 => %{
        keyword: :CalculatedDoseReferenceSequence,
        name: "Calculated Dose Reference Sequence",
        vr: :SQ
      },
      0x0072 => %{
        keyword: :CalculatedDoseReferenceNumber,
        name: "Calculated Dose Reference Number",
        vr: :IS
      },
      0x0074 => %{
        keyword: :CalculatedDoseReferenceDescription,
        name: "Calculated Dose Reference Description",
        vr: :ST
      },
      0x0076 => %{
        keyword: :CalculatedDoseReferenceDoseValue,
        name: "Calculated Dose Reference Dose Value",
        vr: :DS
      },
      0x0078 => %{
        keyword: :StartMeterset,
        name: "Start Meterset",
        vr: :DS
      },
      0x007A => %{
        keyword: :EndMeterset,
        name: "End Meterset",
        vr: :DS
      },
      0x0080 => %{
        keyword: :ReferencedMeasuredDoseReferenceSequence,
        name: "Referenced Measured Dose Reference Sequence",
        vr: :SQ
      },
      0x0082 => %{
        keyword: :ReferencedMeasuredDoseReferenceNumber,
        name: "Referenced Measured Dose Reference Number",
        vr: :IS
      },
      0x0090 => %{
        keyword: :ReferencedCalculatedDoseReferenceSequence,
        name: "Referenced Calculated Dose Reference Sequence",
        vr: :SQ
      },
      0x0092 => %{
        keyword: :ReferencedCalculatedDoseReferenceNumber,
        name: "Referenced Calculated Dose Reference Number",
        vr: :IS
      },
      0x00A0 => %{
        keyword: :BeamLimitingDeviceLeafPairsSequence,
        name: "Beam Limiting Device Leaf Pairs Sequence",
        vr: :SQ
      },
      0x00A1 => %{
        keyword: :EnhancedRTBeamLimitingDeviceSequence,
        name: "Enhanced RT Beam Limiting Device Sequence",
        vr: :SQ
      },
      0x00A2 => %{
        keyword: :EnhancedRTBeamLimitingOpeningSequence,
        name: "Enhanced RT Beam Limiting Opening Sequence",
        vr: :SQ
      },
      0x00A3 => %{
        keyword: :EnhancedRTBeamLimitingDeviceDefinitionFlag,
        name: "Enhanced RT Beam Limiting Device Definition Flag",
        vr: :CS
      },
      0x00A4 => %{
        keyword: :ParallelRTBeamDelimiterOpeningExtents,
        name: "Parallel RT Beam Delimiter Opening Extents",
        vr: :FD
      },
      0x00B0 => %{
        keyword: :RecordedWedgeSequence,
        name: "Recorded Wedge Sequence",
        vr: :SQ
      },
      0x00C0 => %{
        keyword: :RecordedCompensatorSequence,
        name: "Recorded Compensator Sequence",
        vr: :SQ
      },
      0x00D0 => %{
        keyword: :RecordedBlockSequence,
        name: "Recorded Block Sequence",
        vr: :SQ
      },
      0x00D1 => %{
        keyword: :RecordedBlockSlabSequence,
        name: "Recorded Block Slab Sequence",
        vr: :SQ
      },
      0x00E0 => %{
        keyword: :TreatmentSummaryMeasuredDoseReferenceSequence,
        name: "Treatment Summary Measured Dose Reference Sequence",
        vr: :SQ
      },
      0x00F0 => %{
        keyword: :RecordedSnoutSequence,
        name: "Recorded Snout Sequence",
        vr: :SQ
      },
      0x00F2 => %{
        keyword: :RecordedRangeShifterSequence,
        name: "Recorded Range Shifter Sequence",
        vr: :SQ
      },
      0x00F4 => %{
        keyword: :RecordedLateralSpreadingDeviceSequence,
        name: "Recorded Lateral Spreading Device Sequence",
        vr: :SQ
      },
      0x00F6 => %{
        keyword: :RecordedRangeModulatorSequence,
        name: "Recorded Range Modulator Sequence",
        vr: :SQ
      },
      0x0100 => %{
        keyword: :RecordedSourceSequence,
        name: "Recorded Source Sequence",
        vr: :SQ
      },
      0x0105 => %{
        keyword: :SourceSerialNumber,
        name: "Source Serial Number",
        vr: :LO
      },
      0x0110 => %{
        keyword: :TreatmentSessionApplicationSetupSequence,
        name: "Treatment Session Application Setup Sequence",
        vr: :SQ
      },
      0x0116 => %{
        keyword: :ApplicationSetupCheck,
        name: "Application Setup Check",
        vr: :CS
      },
      0x0120 => %{
        keyword: :RecordedBrachyAccessoryDeviceSequence,
        name: "Recorded Brachy Accessory Device Sequence",
        vr: :SQ
      },
      0x0122 => %{
        keyword: :ReferencedBrachyAccessoryDeviceNumber,
        name: "Referenced Brachy Accessory Device Number",
        vr: :IS
      },
      0x0130 => %{
        keyword: :RecordedChannelSequence,
        name: "Recorded Channel Sequence",
        vr: :SQ
      },
      0x0132 => %{
        keyword: :SpecifiedChannelTotalTime,
        name: "Specified Channel Total Time",
        vr: :DS
      },
      0x0134 => %{
        keyword: :DeliveredChannelTotalTime,
        name: "Delivered Channel Total Time",
        vr: :DS
      },
      0x0136 => %{
        keyword: :SpecifiedNumberOfPulses,
        name: "Specified Number of Pulses",
        vr: :IS
      },
      0x0138 => %{
        keyword: :DeliveredNumberOfPulses,
        name: "Delivered Number of Pulses",
        vr: :IS
      },
      0x013A => %{
        keyword: :SpecifiedPulseRepetitionInterval,
        name: "Specified Pulse Repetition Interval",
        vr: :DS
      },
      0x013C => %{
        keyword: :DeliveredPulseRepetitionInterval,
        name: "Delivered Pulse Repetition Interval",
        vr: :DS
      },
      0x0140 => %{
        keyword: :RecordedSourceApplicatorSequence,
        name: "Recorded Source Applicator Sequence",
        vr: :SQ
      },
      0x0142 => %{
        keyword: :ReferencedSourceApplicatorNumber,
        name: "Referenced Source Applicator Number",
        vr: :IS
      },
      0x0150 => %{
        keyword: :RecordedChannelShieldSequence,
        name: "Recorded Channel Shield Sequence",
        vr: :SQ
      },
      0x0152 => %{
        keyword: :ReferencedChannelShieldNumber,
        name: "Referenced Channel Shield Number",
        vr: :IS
      },
      0x0160 => %{
        keyword: :BrachyControlPointDeliveredSequence,
        name: "Brachy Control Point Delivered Sequence",
        vr: :SQ
      },
      0x0162 => %{
        keyword: :SafePositionExitDate,
        name: "Safe Position Exit Date",
        vr: :DA
      },
      0x0164 => %{
        keyword: :SafePositionExitTime,
        name: "Safe Position Exit Time",
        vr: :TM
      },
      0x0166 => %{
        keyword: :SafePositionReturnDate,
        name: "Safe Position Return Date",
        vr: :DA
      },
      0x0168 => %{
        keyword: :SafePositionReturnTime,
        name: "Safe Position Return Time",
        vr: :TM
      },
      0x0171 => %{
        keyword: :PulseSpecificBrachyControlPointDeliveredSequence,
        name: "Pulse Specific Brachy Control Point Delivered Sequence",
        vr: :SQ
      },
      0x0172 => %{
        keyword: :PulseNumber,
        name: "Pulse Number",
        vr: :US
      },
      0x0173 => %{
        keyword: :BrachyPulseControlPointDeliveredSequence,
        name: "Brachy Pulse Control Point Delivered Sequence",
        vr: :SQ
      },
      0x0200 => %{
        keyword: :CurrentTreatmentStatus,
        name: "Current Treatment Status",
        vr: :CS
      },
      0x0202 => %{
        keyword: :TreatmentStatusComment,
        name: "Treatment Status Comment",
        vr: :ST
      },
      0x0220 => %{
        keyword: :FractionGroupSummarySequence,
        name: "Fraction Group Summary Sequence",
        vr: :SQ
      },
      0x0223 => %{
        keyword: :ReferencedFractionNumber,
        name: "Referenced Fraction Number",
        vr: :IS
      },
      0x0224 => %{
        keyword: :FractionGroupType,
        name: "Fraction Group Type",
        vr: :CS
      },
      0x0230 => %{
        keyword: :BeamStopperPosition,
        name: "Beam Stopper Position",
        vr: :CS
      },
      0x0240 => %{
        keyword: :FractionStatusSummarySequence,
        name: "Fraction Status Summary Sequence",
        vr: :SQ
      },
      0x0250 => %{
        keyword: :TreatmentDate,
        name: "Treatment Date",
        vr: :DA
      },
      0x0251 => %{
        keyword: :TreatmentTime,
        name: "Treatment Time",
        vr: :TM
      }
    },
    0x300A => %{
      0x0002 => %{
        keyword: :RTPlanLabel,
        name: "RT Plan Label",
        vr: :SH
      },
      0x0003 => %{
        keyword: :RTPlanName,
        name: "RT Plan Name",
        vr: :LO
      },
      0x0004 => %{
        keyword: :RTPlanDescription,
        name: "RT Plan Description",
        vr: :ST
      },
      0x0006 => %{
        keyword: :RTPlanDate,
        name: "RT Plan Date",
        vr: :DA
      },
      0x0007 => %{
        keyword: :RTPlanTime,
        name: "RT Plan Time",
        vr: :TM
      },
      0x0009 => %{
        keyword: :TreatmentProtocols,
        name: "Treatment Protocols",
        vr: :LO
      },
      0x000A => %{
        keyword: :PlanIntent,
        name: "Plan Intent",
        vr: :CS
      },
      0x000B => %{
        keyword: :TreatmentSites,
        name: "Treatment Sites",
        vr: :LO
      },
      0x000C => %{
        keyword: :RTPlanGeometry,
        name: "RT Plan Geometry",
        vr: :CS
      },
      0x000E => %{
        keyword: :PrescriptionDescription,
        name: "Prescription Description",
        vr: :ST
      },
      0x0010 => %{
        keyword: :DoseReferenceSequence,
        name: "Dose Reference Sequence",
        vr: :SQ
      },
      0x0012 => %{
        keyword: :DoseReferenceNumber,
        name: "Dose Reference Number",
        vr: :IS
      },
      0x0013 => %{
        keyword: :DoseReferenceUID,
        name: "Dose Reference UID",
        vr: :UI
      },
      0x0014 => %{
        keyword: :DoseReferenceStructureType,
        name: "Dose Reference Structure Type",
        vr: :CS
      },
      0x0015 => %{
        keyword: :NominalBeamEnergyUnit,
        name: "Nominal Beam Energy Unit",
        vr: :CS
      },
      0x0016 => %{
        keyword: :DoseReferenceDescription,
        name: "Dose Reference Description",
        vr: :LO
      },
      0x0018 => %{
        keyword: :DoseReferencePointCoordinates,
        name: "Dose Reference Point Coordinates",
        vr: :DS
      },
      0x001A => %{
        keyword: :NominalPriorDose,
        name: "Nominal Prior Dose",
        vr: :DS
      },
      0x0020 => %{
        keyword: :DoseReferenceType,
        name: "Dose Reference Type",
        vr: :CS
      },
      0x0021 => %{
        keyword: :ConstraintWeight,
        name: "Constraint Weight",
        vr: :DS
      },
      0x0022 => %{
        keyword: :DeliveryWarningDose,
        name: "Delivery Warning Dose",
        vr: :DS
      },
      0x0023 => %{
        keyword: :DeliveryMaximumDose,
        name: "Delivery Maximum Dose",
        vr: :DS
      },
      0x0025 => %{
        keyword: :TargetMinimumDose,
        name: "Target Minimum Dose",
        vr: :DS
      },
      0x0026 => %{
        keyword: :TargetPrescriptionDose,
        name: "Target Prescription Dose",
        vr: :DS
      },
      0x0027 => %{
        keyword: :TargetMaximumDose,
        name: "Target Maximum Dose",
        vr: :DS
      },
      0x0028 => %{
        keyword: :TargetUnderdoseVolumeFraction,
        name: "Target Underdose Volume Fraction",
        vr: :DS
      },
      0x002A => %{
        keyword: :OrganAtRiskFullVolumeDose,
        name: "Organ at Risk Full-volume Dose",
        vr: :DS
      },
      0x002B => %{
        keyword: :OrganAtRiskLimitDose,
        name: "Organ at Risk Limit Dose",
        vr: :DS
      },
      0x002C => %{
        keyword: :OrganAtRiskMaximumDose,
        name: "Organ at Risk Maximum Dose",
        vr: :DS
      },
      0x002D => %{
        keyword: :OrganAtRiskOverdoseVolumeFraction,
        name: "Organ at Risk Overdose Volume Fraction",
        vr: :DS
      },
      0x0040 => %{
        keyword: :ToleranceTableSequence,
        name: "Tolerance Table Sequence",
        vr: :SQ
      },
      0x0042 => %{
        keyword: :ToleranceTableNumber,
        name: "Tolerance Table Number",
        vr: :IS
      },
      0x0043 => %{
        keyword: :ToleranceTableLabel,
        name: "Tolerance Table Label",
        vr: :SH
      },
      0x0044 => %{
        keyword: :GantryAngleTolerance,
        name: "Gantry Angle Tolerance",
        vr: :DS
      },
      0x0046 => %{
        keyword: :BeamLimitingDeviceAngleTolerance,
        name: "Beam Limiting Device Angle Tolerance",
        vr: :DS
      },
      0x0048 => %{
        keyword: :BeamLimitingDeviceToleranceSequence,
        name: "Beam Limiting Device Tolerance Sequence",
        vr: :SQ
      },
      0x004A => %{
        keyword: :BeamLimitingDevicePositionTolerance,
        name: "Beam Limiting Device Position Tolerance",
        vr: :DS
      },
      0x004B => %{
        keyword: :SnoutPositionTolerance,
        name: "Snout Position Tolerance",
        vr: :FL
      },
      0x004C => %{
        keyword: :PatientSupportAngleTolerance,
        name: "Patient Support Angle Tolerance",
        vr: :DS
      },
      0x004E => %{
        keyword: :TableTopEccentricAngleTolerance,
        name: "Table Top Eccentric Angle Tolerance",
        vr: :DS
      },
      0x004F => %{
        keyword: :TableTopPitchAngleTolerance,
        name: "Table Top Pitch Angle Tolerance",
        vr: :FL
      },
      0x0050 => %{
        keyword: :TableTopRollAngleTolerance,
        name: "Table Top Roll Angle Tolerance",
        vr: :FL
      },
      0x0051 => %{
        keyword: :TableTopVerticalPositionTolerance,
        name: "Table Top Vertical Position Tolerance",
        vr: :DS
      },
      0x0052 => %{
        keyword: :TableTopLongitudinalPositionTolerance,
        name: "Table Top Longitudinal Position Tolerance",
        vr: :DS
      },
      0x0053 => %{
        keyword: :TableTopLateralPositionTolerance,
        name: "Table Top Lateral Position Tolerance",
        vr: :DS
      },
      0x0054 => %{
        keyword: :TableTopPositionAlignmentUID,
        name: "Table Top Position Alignment UID",
        vr: :UI
      },
      0x0055 => %{
        keyword: :RTPlanRelationship,
        name: "RT Plan Relationship",
        vr: :CS
      },
      0x0070 => %{
        keyword: :FractionGroupSequence,
        name: "Fraction Group Sequence",
        vr: :SQ
      },
      0x0071 => %{
        keyword: :FractionGroupNumber,
        name: "Fraction Group Number",
        vr: :IS
      },
      0x0072 => %{
        keyword: :FractionGroupDescription,
        name: "Fraction Group Description",
        vr: :LO
      },
      0x0078 => %{
        keyword: :NumberOfFractionsPlanned,
        name: "Number of Fractions Planned",
        vr: :IS
      },
      0x0079 => %{
        keyword: :NumberOfFractionPatternDigitsPerDay,
        name: "Number of Fraction Pattern Digits Per Day",
        vr: :IS
      },
      0x007A => %{
        keyword: :RepeatFractionCycleLength,
        name: "Repeat Fraction Cycle Length",
        vr: :IS
      },
      0x007B => %{
        keyword: :FractionPattern,
        name: "Fraction Pattern",
        vr: :LT
      },
      0x0080 => %{
        keyword: :NumberOfBeams,
        name: "Number of Beams",
        vr: :IS
      },
      0x0082 => %{
        keyword: :BeamDoseSpecificationPoint,
        name: "Beam Dose Specification Point",
        vr: :DS
      },
      0x0083 => %{
        keyword: :ReferencedDoseReferenceUID,
        name: "Referenced Dose Reference UID",
        vr: :UI
      },
      0x0084 => %{
        keyword: :BeamDose,
        name: "Beam Dose",
        vr: :DS
      },
      0x0086 => %{
        keyword: :BeamMeterset,
        name: "Beam Meterset",
        vr: :DS
      },
      0x0088 => %{
        keyword: :BeamDosePointDepth,
        name: "Beam Dose Point Depth",
        vr: :FL
      },
      0x0089 => %{
        keyword: :BeamDosePointEquivalentDepth,
        name: "Beam Dose Point Equivalent Depth",
        vr: :FL
      },
      0x008A => %{
        keyword: :BeamDosePointSSD,
        name: "Beam Dose Point SSD",
        vr: :FL
      },
      0x008B => %{
        keyword: :BeamDoseMeaning,
        name: "Beam Dose Meaning",
        vr: :CS
      },
      0x008C => %{
        keyword: :BeamDoseVerificationControlPointSequence,
        name: "Beam Dose Verification Control Point Sequence",
        vr: :SQ
      },
      0x008D => %{
        keyword: :AverageBeamDosePointDepth,
        name: "Average Beam Dose Point Depth",
        vr: :FL
      },
      0x008E => %{
        keyword: :AverageBeamDosePointEquivalentDepth,
        name: "Average Beam Dose Point Equivalent Depth",
        vr: :FL
      },
      0x008F => %{
        keyword: :AverageBeamDosePointSSD,
        name: "Average Beam Dose Point SSD",
        vr: :FL
      },
      0x0090 => %{
        keyword: :BeamDoseType,
        name: "Beam Dose Type",
        vr: :CS
      },
      0x0091 => %{
        keyword: :AlternateBeamDose,
        name: "Alternate Beam Dose",
        vr: :DS
      },
      0x0092 => %{
        keyword: :AlternateBeamDoseType,
        name: "Alternate Beam Dose Type",
        vr: :CS
      },
      0x0093 => %{
        keyword: :DepthValueAveragingFlag,
        name: "Depth Value Averaging Flag",
        vr: :CS
      },
      0x0094 => %{
        keyword: :BeamDosePointSourceToExternalContourDistance,
        name: "Beam Dose Point Source to External Contour Distance",
        vr: :DS
      },
      0x00A0 => %{
        keyword: :NumberOfBrachyApplicationSetups,
        name: "Number of Brachy Application Setups",
        vr: :IS
      },
      0x00A2 => %{
        keyword: :BrachyApplicationSetupDoseSpecificationPoint,
        name: "Brachy Application Setup Dose Specification Point",
        vr: :DS
      },
      0x00A4 => %{
        keyword: :BrachyApplicationSetupDose,
        name: "Brachy Application Setup Dose",
        vr: :DS
      },
      0x00B0 => %{
        keyword: :BeamSequence,
        name: "Beam Sequence",
        vr: :SQ
      },
      0x00B2 => %{
        keyword: :TreatmentMachineName,
        name: "Treatment Machine Name",
        vr: :SH
      },
      0x00B3 => %{
        keyword: :PrimaryDosimeterUnit,
        name: "Primary Dosimeter Unit",
        vr: :CS
      },
      0x00B4 => %{
        keyword: :SourceAxisDistance,
        name: "Source-Axis Distance",
        vr: :DS
      },
      0x00B6 => %{
        keyword: :BeamLimitingDeviceSequence,
        name: "Beam Limiting Device Sequence",
        vr: :SQ
      },
      0x00B8 => %{
        keyword: :RTBeamLimitingDeviceType,
        name: "RT Beam Limiting Device Type",
        vr: :CS
      },
      0x00BA => %{
        keyword: :SourceToBeamLimitingDeviceDistance,
        name: "Source to Beam Limiting Device Distance",
        vr: :DS
      },
      0x00BB => %{
        keyword: :IsocenterToBeamLimitingDeviceDistance,
        name: "Isocenter to Beam Limiting Device Distance",
        vr: :FL
      },
      0x00BC => %{
        keyword: :NumberOfLeafJawPairs,
        name: "Number of Leaf/Jaw Pairs",
        vr: :IS
      },
      0x00BE => %{
        keyword: :LeafPositionBoundaries,
        name: "Leaf Position Boundaries",
        vr: :DS
      },
      0x00C0 => %{
        keyword: :BeamNumber,
        name: "Beam Number",
        vr: :IS
      },
      0x00C2 => %{
        keyword: :BeamName,
        name: "Beam Name",
        vr: :LO
      },
      0x00C3 => %{
        keyword: :BeamDescription,
        name: "Beam Description",
        vr: :ST
      },
      0x00C4 => %{
        keyword: :BeamType,
        name: "Beam Type",
        vr: :CS
      },
      0x00C5 => %{
        keyword: :BeamDeliveryDurationLimit,
        name: "Beam Delivery Duration Limit",
        vr: :FD
      },
      0x00C6 => %{
        keyword: :RadiationType,
        name: "Radiation Type",
        vr: :CS
      },
      0x00C7 => %{
        keyword: :HighDoseTechniqueType,
        name: "High-Dose Technique Type",
        vr: :CS
      },
      0x00C8 => %{
        keyword: :ReferenceImageNumber,
        name: "Reference Image Number",
        vr: :IS
      },
      0x00CA => %{
        keyword: :PlannedVerificationImageSequence,
        name: "Planned Verification Image Sequence",
        vr: :SQ
      },
      0x00CC => %{
        keyword: :ImagingDeviceSpecificAcquisitionParameters,
        name: "Imaging Device-Specific Acquisition Parameters",
        vr: :LO
      },
      0x00CE => %{
        keyword: :TreatmentDeliveryType,
        name: "Treatment Delivery Type",
        vr: :CS
      },
      0x00D0 => %{
        keyword: :NumberOfWedges,
        name: "Number of Wedges",
        vr: :IS
      },
      0x00D1 => %{
        keyword: :WedgeSequence,
        name: "Wedge Sequence",
        vr: :SQ
      },
      0x00D2 => %{
        keyword: :WedgeNumber,
        name: "Wedge Number",
        vr: :IS
      },
      0x00D3 => %{
        keyword: :WedgeType,
        name: "Wedge Type",
        vr: :CS
      },
      0x00D4 => %{
        keyword: :WedgeID,
        name: "Wedge ID",
        vr: :SH
      },
      0x00D5 => %{
        keyword: :WedgeAngle,
        name: "Wedge Angle",
        vr: :IS
      },
      0x00D6 => %{
        keyword: :WedgeFactor,
        name: "Wedge Factor",
        vr: :DS
      },
      0x00D7 => %{
        keyword: :TotalWedgeTrayWaterEquivalentThickness,
        name: "Total Wedge Tray Water-Equivalent Thickness",
        vr: :FL
      },
      0x00D8 => %{
        keyword: :WedgeOrientation,
        name: "Wedge Orientation",
        vr: :DS
      },
      0x00D9 => %{
        keyword: :IsocenterToWedgeTrayDistance,
        name: "Isocenter to Wedge Tray Distance",
        vr: :FL
      },
      0x00DA => %{
        keyword: :SourceToWedgeTrayDistance,
        name: "Source to Wedge Tray Distance",
        vr: :DS
      },
      0x00DB => %{
        keyword: :WedgeThinEdgePosition,
        name: "Wedge Thin Edge Position",
        vr: :FL
      },
      0x00DC => %{
        keyword: :BolusID,
        name: "Bolus ID",
        vr: :SH
      },
      0x00DD => %{
        keyword: :BolusDescription,
        name: "Bolus Description",
        vr: :ST
      },
      0x00DE => %{
        keyword: :EffectiveWedgeAngle,
        name: "Effective Wedge Angle",
        vr: :DS
      },
      0x00E0 => %{
        keyword: :NumberOfCompensators,
        name: "Number of Compensators",
        vr: :IS
      },
      0x00E1 => %{
        keyword: :MaterialID,
        name: "Material ID",
        vr: :SH
      },
      0x00E2 => %{
        keyword: :TotalCompensatorTrayFactor,
        name: "Total Compensator Tray Factor",
        vr: :DS
      },
      0x00E3 => %{
        keyword: :CompensatorSequence,
        name: "Compensator Sequence",
        vr: :SQ
      },
      0x00E4 => %{
        keyword: :CompensatorNumber,
        name: "Compensator Number",
        vr: :IS
      },
      0x00E5 => %{
        keyword: :CompensatorID,
        name: "Compensator ID",
        vr: :SH
      },
      0x00E6 => %{
        keyword: :SourceToCompensatorTrayDistance,
        name: "Source to Compensator Tray Distance",
        vr: :DS
      },
      0x00E7 => %{
        keyword: :CompensatorRows,
        name: "Compensator Rows",
        vr: :IS
      },
      0x00E8 => %{
        keyword: :CompensatorColumns,
        name: "Compensator Columns",
        vr: :IS
      },
      0x00E9 => %{
        keyword: :CompensatorPixelSpacing,
        name: "Compensator Pixel Spacing",
        vr: :DS
      },
      0x00EA => %{
        keyword: :CompensatorPosition,
        name: "Compensator Position",
        vr: :DS
      },
      0x00EB => %{
        keyword: :CompensatorTransmissionData,
        name: "Compensator Transmission Data",
        vr: :DS
      },
      0x00EC => %{
        keyword: :CompensatorThicknessData,
        name: "Compensator Thickness Data",
        vr: :DS
      },
      0x00ED => %{
        keyword: :NumberOfBoli,
        name: "Number of Boli",
        vr: :IS
      },
      0x00EE => %{
        keyword: :CompensatorType,
        name: "Compensator Type",
        vr: :CS
      },
      0x00EF => %{
        keyword: :CompensatorTrayID,
        name: "Compensator Tray ID",
        vr: :SH
      },
      0x00F0 => %{
        keyword: :NumberOfBlocks,
        name: "Number of Blocks",
        vr: :IS
      },
      0x00F2 => %{
        keyword: :TotalBlockTrayFactor,
        name: "Total Block Tray Factor",
        vr: :DS
      },
      0x00F3 => %{
        keyword: :TotalBlockTrayWaterEquivalentThickness,
        name: "Total Block Tray Water-Equivalent Thickness",
        vr: :FL
      },
      0x00F4 => %{
        keyword: :BlockSequence,
        name: "Block Sequence",
        vr: :SQ
      },
      0x00F5 => %{
        keyword: :BlockTrayID,
        name: "Block Tray ID",
        vr: :SH
      },
      0x00F6 => %{
        keyword: :SourceToBlockTrayDistance,
        name: "Source to Block Tray Distance",
        vr: :DS
      },
      0x00F7 => %{
        keyword: :IsocenterToBlockTrayDistance,
        name: "Isocenter to Block Tray Distance",
        vr: :FL
      },
      0x00F8 => %{
        keyword: :BlockType,
        name: "Block Type",
        vr: :CS
      },
      0x00F9 => %{
        keyword: :AccessoryCode,
        name: "Accessory Code",
        vr: :LO
      },
      0x00FA => %{
        keyword: :BlockDivergence,
        name: "Block Divergence",
        vr: :CS
      },
      0x00FB => %{
        keyword: :BlockMountingPosition,
        name: "Block Mounting Position",
        vr: :CS
      },
      0x00FC => %{
        keyword: :BlockNumber,
        name: "Block Number",
        vr: :IS
      },
      0x00FE => %{
        keyword: :BlockName,
        name: "Block Name",
        vr: :LO
      },
      0x0100 => %{
        keyword: :BlockThickness,
        name: "Block Thickness",
        vr: :DS
      },
      0x0102 => %{
        keyword: :BlockTransmission,
        name: "Block Transmission",
        vr: :DS
      },
      0x0104 => %{
        keyword: :BlockNumberOfPoints,
        name: "Block Number of Points",
        vr: :IS
      },
      0x0106 => %{
        keyword: :BlockData,
        name: "Block Data",
        vr: :DS
      },
      0x0107 => %{
        keyword: :ApplicatorSequence,
        name: "Applicator Sequence",
        vr: :SQ
      },
      0x0108 => %{
        keyword: :ApplicatorID,
        name: "Applicator ID",
        vr: :SH
      },
      0x0109 => %{
        keyword: :ApplicatorType,
        name: "Applicator Type",
        vr: :CS
      },
      0x010A => %{
        keyword: :ApplicatorDescription,
        name: "Applicator Description",
        vr: :LO
      },
      0x010C => %{
        keyword: :CumulativeDoseReferenceCoefficient,
        name: "Cumulative Dose Reference Coefficient",
        vr: :DS
      },
      0x010E => %{
        keyword: :FinalCumulativeMetersetWeight,
        name: "Final Cumulative Meterset Weight",
        vr: :DS
      },
      0x0110 => %{
        keyword: :NumberOfControlPoints,
        name: "Number of Control Points",
        vr: :IS
      },
      0x0111 => %{
        keyword: :ControlPointSequence,
        name: "Control Point Sequence",
        vr: :SQ
      },
      0x0112 => %{
        keyword: :ControlPointIndex,
        name: "Control Point Index",
        vr: :IS
      },
      0x0114 => %{
        keyword: :NominalBeamEnergy,
        name: "Nominal Beam Energy",
        vr: :DS
      },
      0x0115 => %{
        keyword: :DoseRateSet,
        name: "Dose Rate Set",
        vr: :DS
      },
      0x0116 => %{
        keyword: :WedgePositionSequence,
        name: "Wedge Position Sequence",
        vr: :SQ
      },
      0x0118 => %{
        keyword: :WedgePosition,
        name: "Wedge Position",
        vr: :CS
      },
      0x011A => %{
        keyword: :BeamLimitingDevicePositionSequence,
        name: "Beam Limiting Device Position Sequence",
        vr: :SQ
      },
      0x011C => %{
        keyword: :LeafJawPositions,
        name: "Leaf/Jaw Positions",
        vr: :DS
      },
      0x011E => %{
        keyword: :GantryAngle,
        name: "Gantry Angle",
        vr: :DS
      },
      0x011F => %{
        keyword: :GantryRotationDirection,
        name: "Gantry Rotation Direction",
        vr: :CS
      },
      0x0120 => %{
        keyword: :BeamLimitingDeviceAngle,
        name: "Beam Limiting Device Angle",
        vr: :DS
      },
      0x0121 => %{
        keyword: :BeamLimitingDeviceRotationDirection,
        name: "Beam Limiting Device Rotation Direction",
        vr: :CS
      },
      0x0122 => %{
        keyword: :PatientSupportAngle,
        name: "Patient Support Angle",
        vr: :DS
      },
      0x0123 => %{
        keyword: :PatientSupportRotationDirection,
        name: "Patient Support Rotation Direction",
        vr: :CS
      },
      0x0124 => %{
        keyword: :TableTopEccentricAxisDistance,
        name: "Table Top Eccentric Axis Distance",
        vr: :DS
      },
      0x0125 => %{
        keyword: :TableTopEccentricAngle,
        name: "Table Top Eccentric Angle",
        vr: :DS
      },
      0x0126 => %{
        keyword: :TableTopEccentricRotationDirection,
        name: "Table Top Eccentric Rotation Direction",
        vr: :CS
      },
      0x0128 => %{
        keyword: :TableTopVerticalPosition,
        name: "Table Top Vertical Position",
        vr: :DS
      },
      0x0129 => %{
        keyword: :TableTopLongitudinalPosition,
        name: "Table Top Longitudinal Position",
        vr: :DS
      },
      0x012A => %{
        keyword: :TableTopLateralPosition,
        name: "Table Top Lateral Position",
        vr: :DS
      },
      0x012C => %{
        keyword: :IsocenterPosition,
        name: "Isocenter Position",
        vr: :DS
      },
      0x012E => %{
        keyword: :SurfaceEntryPoint,
        name: "Surface Entry Point",
        vr: :DS
      },
      0x0130 => %{
        keyword: :SourceToSurfaceDistance,
        name: "Source to Surface Distance",
        vr: :DS
      },
      0x0131 => %{
        keyword: :AverageBeamDosePointSourceToExternalContourDistance,
        name: "Average Beam Dose Point Source to External Contour Distance",
        vr: :FL
      },
      0x0132 => %{
        keyword: :SourceToExternalContourDistance,
        name: "Source to External Contour Distance",
        vr: :FL
      },
      0x0133 => %{
        keyword: :ExternalContourEntryPoint,
        name: "External Contour Entry Point",
        vr: :FL
      },
      0x0134 => %{
        keyword: :CumulativeMetersetWeight,
        name: "Cumulative Meterset Weight",
        vr: :DS
      },
      0x0140 => %{
        keyword: :TableTopPitchAngle,
        name: "Table Top Pitch Angle",
        vr: :FL
      },
      0x0142 => %{
        keyword: :TableTopPitchRotationDirection,
        name: "Table Top Pitch Rotation Direction",
        vr: :CS
      },
      0x0144 => %{
        keyword: :TableTopRollAngle,
        name: "Table Top Roll Angle",
        vr: :FL
      },
      0x0146 => %{
        keyword: :TableTopRollRotationDirection,
        name: "Table Top Roll Rotation Direction",
        vr: :CS
      },
      0x0148 => %{
        keyword: :HeadFixationAngle,
        name: "Head Fixation Angle",
        vr: :FL
      },
      0x014A => %{
        keyword: :GantryPitchAngle,
        name: "Gantry Pitch Angle",
        vr: :FL
      },
      0x014C => %{
        keyword: :GantryPitchRotationDirection,
        name: "Gantry Pitch Rotation Direction",
        vr: :CS
      },
      0x014E => %{
        keyword: :GantryPitchAngleTolerance,
        name: "Gantry Pitch Angle Tolerance",
        vr: :FL
      },
      0x0150 => %{
        keyword: :FixationEye,
        name: "Fixation Eye",
        vr: :CS
      },
      0x0151 => %{
        keyword: :ChairHeadFramePosition,
        name: "Chair Head Frame Position",
        vr: :DS
      },
      0x0152 => %{
        keyword: :HeadFixationAngleTolerance,
        name: "Head Fixation Angle Tolerance",
        vr: :DS
      },
      0x0153 => %{
        keyword: :ChairHeadFramePositionTolerance,
        name: "Chair Head Frame Position Tolerance",
        vr: :DS
      },
      0x0154 => %{
        keyword: :FixationLightAzimuthalAngleTolerance,
        name: "Fixation Light Azimuthal Angle Tolerance",
        vr: :DS
      },
      0x0155 => %{
        keyword: :FixationLightPolarAngleTolerance,
        name: "Fixation Light Polar Angle Tolerance",
        vr: :DS
      },
      0x0180 => %{
        keyword: :PatientSetupSequence,
        name: "Patient Setup Sequence",
        vr: :SQ
      },
      0x0182 => %{
        keyword: :PatientSetupNumber,
        name: "Patient Setup Number",
        vr: :IS
      },
      0x0183 => %{
        keyword: :PatientSetupLabel,
        name: "Patient Setup Label",
        vr: :LO
      },
      0x0184 => %{
        keyword: :PatientAdditionalPosition,
        name: "Patient Additional Position",
        vr: :LO
      },
      0x0190 => %{
        keyword: :FixationDeviceSequence,
        name: "Fixation Device Sequence",
        vr: :SQ
      },
      0x0192 => %{
        keyword: :FixationDeviceType,
        name: "Fixation Device Type",
        vr: :CS
      },
      0x0194 => %{
        keyword: :FixationDeviceLabel,
        name: "Fixation Device Label",
        vr: :SH
      },
      0x0196 => %{
        keyword: :FixationDeviceDescription,
        name: "Fixation Device Description",
        vr: :ST
      },
      0x0198 => %{
        keyword: :FixationDevicePosition,
        name: "Fixation Device Position",
        vr: :SH
      },
      0x0199 => %{
        keyword: :FixationDevicePitchAngle,
        name: "Fixation Device Pitch Angle",
        vr: :FL
      },
      0x019A => %{
        keyword: :FixationDeviceRollAngle,
        name: "Fixation Device Roll Angle",
        vr: :FL
      },
      0x01A0 => %{
        keyword: :ShieldingDeviceSequence,
        name: "Shielding Device Sequence",
        vr: :SQ
      },
      0x01A2 => %{
        keyword: :ShieldingDeviceType,
        name: "Shielding Device Type",
        vr: :CS
      },
      0x01A4 => %{
        keyword: :ShieldingDeviceLabel,
        name: "Shielding Device Label",
        vr: :SH
      },
      0x01A6 => %{
        keyword: :ShieldingDeviceDescription,
        name: "Shielding Device Description",
        vr: :ST
      },
      0x01A8 => %{
        keyword: :ShieldingDevicePosition,
        name: "Shielding Device Position",
        vr: :SH
      },
      0x01B0 => %{
        keyword: :SetupTechnique,
        name: "Setup Technique",
        vr: :CS
      },
      0x01B2 => %{
        keyword: :SetupTechniqueDescription,
        name: "Setup Technique Description",
        vr: :ST
      },
      0x01B4 => %{
        keyword: :SetupDeviceSequence,
        name: "Setup Device Sequence",
        vr: :SQ
      },
      0x01B6 => %{
        keyword: :SetupDeviceType,
        name: "Setup Device Type",
        vr: :CS
      },
      0x01B8 => %{
        keyword: :SetupDeviceLabel,
        name: "Setup Device Label",
        vr: :SH
      },
      0x01BA => %{
        keyword: :SetupDeviceDescription,
        name: "Setup Device Description",
        vr: :ST
      },
      0x01BC => %{
        keyword: :SetupDeviceParameter,
        name: "Setup Device Parameter",
        vr: :DS
      },
      0x01D0 => %{
        keyword: :SetupReferenceDescription,
        name: "Setup Reference Description",
        vr: :ST
      },
      0x01D2 => %{
        keyword: :TableTopVerticalSetupDisplacement,
        name: "Table Top Vertical Setup Displacement",
        vr: :DS
      },
      0x01D4 => %{
        keyword: :TableTopLongitudinalSetupDisplacement,
        name: "Table Top Longitudinal Setup Displacement",
        vr: :DS
      },
      0x01D6 => %{
        keyword: :TableTopLateralSetupDisplacement,
        name: "Table Top Lateral Setup Displacement",
        vr: :DS
      },
      0x0200 => %{
        keyword: :BrachyTreatmentTechnique,
        name: "Brachy Treatment Technique",
        vr: :CS
      },
      0x0202 => %{
        keyword: :BrachyTreatmentType,
        name: "Brachy Treatment Type",
        vr: :CS
      },
      0x0206 => %{
        keyword: :TreatmentMachineSequence,
        name: "Treatment Machine Sequence",
        vr: :SQ
      },
      0x0210 => %{
        keyword: :SourceSequence,
        name: "Source Sequence",
        vr: :SQ
      },
      0x0212 => %{
        keyword: :SourceNumber,
        name: "Source Number",
        vr: :IS
      },
      0x0214 => %{
        keyword: :SourceType,
        name: "Source Type",
        vr: :CS
      },
      0x0216 => %{
        keyword: :SourceManufacturer,
        name: "Source Manufacturer",
        vr: :LO
      },
      0x0218 => %{
        keyword: :ActiveSourceDiameter,
        name: "Active Source Diameter",
        vr: :DS
      },
      0x021A => %{
        keyword: :ActiveSourceLength,
        name: "Active Source Length",
        vr: :DS
      },
      0x021B => %{
        keyword: :SourceModelID,
        name: "Source Model ID",
        vr: :SH
      },
      0x021C => %{
        keyword: :SourceDescription,
        name: "Source Description",
        vr: :LO
      },
      0x0222 => %{
        keyword: :SourceEncapsulationNominalThickness,
        name: "Source Encapsulation Nominal Thickness",
        vr: :DS
      },
      0x0224 => %{
        keyword: :SourceEncapsulationNominalTransmission,
        name: "Source Encapsulation Nominal Transmission",
        vr: :DS
      },
      0x0226 => %{
        keyword: :SourceIsotopeName,
        name: "Source Isotope Name",
        vr: :LO
      },
      0x0228 => %{
        keyword: :SourceIsotopeHalfLife,
        name: "Source Isotope Half Life",
        vr: :DS
      },
      0x0229 => %{
        keyword: :SourceStrengthUnits,
        name: "Source Strength Units",
        vr: :CS
      },
      0x022A => %{
        keyword: :ReferenceAirKermaRate,
        name: "Reference Air Kerma Rate",
        vr: :DS
      },
      0x022B => %{
        keyword: :SourceStrength,
        name: "Source Strength",
        vr: :DS
      },
      0x022C => %{
        keyword: :SourceStrengthReferenceDate,
        name: "Source Strength Reference Date",
        vr: :DA
      },
      0x022E => %{
        keyword: :SourceStrengthReferenceTime,
        name: "Source Strength Reference Time",
        vr: :TM
      },
      0x0230 => %{
        keyword: :ApplicationSetupSequence,
        name: "Application Setup Sequence",
        vr: :SQ
      },
      0x0232 => %{
        keyword: :ApplicationSetupType,
        name: "Application Setup Type",
        vr: :CS
      },
      0x0234 => %{
        keyword: :ApplicationSetupNumber,
        name: "Application Setup Number",
        vr: :IS
      },
      0x0236 => %{
        keyword: :ApplicationSetupName,
        name: "Application Setup Name",
        vr: :LO
      },
      0x0238 => %{
        keyword: :ApplicationSetupManufacturer,
        name: "Application Setup Manufacturer",
        vr: :LO
      },
      0x0240 => %{
        keyword: :TemplateNumber,
        name: "Template Number",
        vr: :IS
      },
      0x0242 => %{
        keyword: :TemplateType,
        name: "Template Type",
        vr: :SH
      },
      0x0244 => %{
        keyword: :TemplateName,
        name: "Template Name",
        vr: :LO
      },
      0x0250 => %{
        keyword: :TotalReferenceAirKerma,
        name: "Total Reference Air Kerma",
        vr: :DS
      },
      0x0260 => %{
        keyword: :BrachyAccessoryDeviceSequence,
        name: "Brachy Accessory Device Sequence",
        vr: :SQ
      },
      0x0262 => %{
        keyword: :BrachyAccessoryDeviceNumber,
        name: "Brachy Accessory Device Number",
        vr: :IS
      },
      0x0263 => %{
        keyword: :BrachyAccessoryDeviceID,
        name: "Brachy Accessory Device ID",
        vr: :SH
      },
      0x0264 => %{
        keyword: :BrachyAccessoryDeviceType,
        name: "Brachy Accessory Device Type",
        vr: :CS
      },
      0x0266 => %{
        keyword: :BrachyAccessoryDeviceName,
        name: "Brachy Accessory Device Name",
        vr: :LO
      },
      0x026A => %{
        keyword: :BrachyAccessoryDeviceNominalThickness,
        name: "Brachy Accessory Device Nominal Thickness",
        vr: :DS
      },
      0x026C => %{
        keyword: :BrachyAccessoryDeviceNominalTransmission,
        name: "Brachy Accessory Device Nominal Transmission",
        vr: :DS
      },
      0x0271 => %{
        keyword: :ChannelEffectiveLength,
        name: "Channel Effective Length",
        vr: :DS
      },
      0x0272 => %{
        keyword: :ChannelInnerLength,
        name: "Channel Inner Length",
        vr: :DS
      },
      0x0273 => %{
        keyword: :AfterloaderChannelID,
        name: "Afterloader Channel ID",
        vr: :SH
      },
      0x0274 => %{
        keyword: :SourceApplicatorTipLength,
        name: "Source Applicator Tip Length",
        vr: :DS
      },
      0x0280 => %{
        keyword: :ChannelSequence,
        name: "Channel Sequence",
        vr: :SQ
      },
      0x0282 => %{
        keyword: :ChannelNumber,
        name: "Channel Number",
        vr: :IS
      },
      0x0284 => %{
        keyword: :ChannelLength,
        name: "Channel Length",
        vr: :DS
      },
      0x0286 => %{
        keyword: :ChannelTotalTime,
        name: "Channel Total Time",
        vr: :DS
      },
      0x0288 => %{
        keyword: :SourceMovementType,
        name: "Source Movement Type",
        vr: :CS
      },
      0x028A => %{
        keyword: :NumberOfPulses,
        name: "Number of Pulses",
        vr: :IS
      },
      0x028C => %{
        keyword: :PulseRepetitionInterval,
        name: "Pulse Repetition Interval",
        vr: :DS
      },
      0x0290 => %{
        keyword: :SourceApplicatorNumber,
        name: "Source Applicator Number",
        vr: :IS
      },
      0x0291 => %{
        keyword: :SourceApplicatorID,
        name: "Source Applicator ID",
        vr: :SH
      },
      0x0292 => %{
        keyword: :SourceApplicatorType,
        name: "Source Applicator Type",
        vr: :CS
      },
      0x0294 => %{
        keyword: :SourceApplicatorName,
        name: "Source Applicator Name",
        vr: :LO
      },
      0x0296 => %{
        keyword: :SourceApplicatorLength,
        name: "Source Applicator Length",
        vr: :DS
      },
      0x0298 => %{
        keyword: :SourceApplicatorManufacturer,
        name: "Source Applicator Manufacturer",
        vr: :LO
      },
      0x029C => %{
        keyword: :SourceApplicatorWallNominalThickness,
        name: "Source Applicator Wall Nominal Thickness",
        vr: :DS
      },
      0x029E => %{
        keyword: :SourceApplicatorWallNominalTransmission,
        name: "Source Applicator Wall Nominal Transmission",
        vr: :DS
      },
      0x02A0 => %{
        keyword: :SourceApplicatorStepSize,
        name: "Source Applicator Step Size",
        vr: :DS
      },
      0x02A1 => %{
        keyword: :ApplicatorShapeReferencedROINumber,
        name: "Applicator Shape Referenced ROI Number",
        vr: :IS
      },
      0x02A2 => %{
        keyword: :TransferTubeNumber,
        name: "Transfer Tube Number",
        vr: :IS
      },
      0x02A4 => %{
        keyword: :TransferTubeLength,
        name: "Transfer Tube Length",
        vr: :DS
      },
      0x02B0 => %{
        keyword: :ChannelShieldSequence,
        name: "Channel Shield Sequence",
        vr: :SQ
      },
      0x02B2 => %{
        keyword: :ChannelShieldNumber,
        name: "Channel Shield Number",
        vr: :IS
      },
      0x02B3 => %{
        keyword: :ChannelShieldID,
        name: "Channel Shield ID",
        vr: :SH
      },
      0x02B4 => %{
        keyword: :ChannelShieldName,
        name: "Channel Shield Name",
        vr: :LO
      },
      0x02B8 => %{
        keyword: :ChannelShieldNominalThickness,
        name: "Channel Shield Nominal Thickness",
        vr: :DS
      },
      0x02BA => %{
        keyword: :ChannelShieldNominalTransmission,
        name: "Channel Shield Nominal Transmission",
        vr: :DS
      },
      0x02C8 => %{
        keyword: :FinalCumulativeTimeWeight,
        name: "Final Cumulative Time Weight",
        vr: :DS
      },
      0x02D0 => %{
        keyword: :BrachyControlPointSequence,
        name: "Brachy Control Point Sequence",
        vr: :SQ
      },
      0x02D2 => %{
        keyword: :ControlPointRelativePosition,
        name: "Control Point Relative Position",
        vr: :DS
      },
      0x02D4 => %{
        keyword: :ControlPoint3DPosition,
        name: "Control Point 3D Position",
        vr: :DS
      },
      0x02D6 => %{
        keyword: :CumulativeTimeWeight,
        name: "Cumulative Time Weight",
        vr: :DS
      },
      0x02E0 => %{
        keyword: :CompensatorDivergence,
        name: "Compensator Divergence",
        vr: :CS
      },
      0x02E1 => %{
        keyword: :CompensatorMountingPosition,
        name: "Compensator Mounting Position",
        vr: :CS
      },
      0x02E2 => %{
        keyword: :SourceToCompensatorDistance,
        name: "Source to Compensator Distance",
        vr: :DS
      },
      0x02E3 => %{
        keyword: :TotalCompensatorTrayWaterEquivalentThickness,
        name: "Total Compensator Tray Water-Equivalent Thickness",
        vr: :FL
      },
      0x02E4 => %{
        keyword: :IsocenterToCompensatorTrayDistance,
        name: "Isocenter to Compensator Tray Distance",
        vr: :FL
      },
      0x02E5 => %{
        keyword: :CompensatorColumnOffset,
        name: "Compensator Column Offset",
        vr: :FL
      },
      0x02E6 => %{
        keyword: :IsocenterToCompensatorDistances,
        name: "Isocenter to Compensator Distances",
        vr: :FL
      },
      0x02E7 => %{
        keyword: :CompensatorRelativeStoppingPowerRatio,
        name: "Compensator Relative Stopping Power Ratio",
        vr: :FL
      },
      0x02E8 => %{
        keyword: :CompensatorMillingToolDiameter,
        name: "Compensator Milling Tool Diameter",
        vr: :FL
      },
      0x02EA => %{
        keyword: :IonRangeCompensatorSequence,
        name: "Ion Range Compensator Sequence",
        vr: :SQ
      },
      0x02EB => %{
        keyword: :CompensatorDescription,
        name: "Compensator Description",
        vr: :LT
      },
      0x0302 => %{
        keyword: :RadiationMassNumber,
        name: "Radiation Mass Number",
        vr: :IS
      },
      0x0304 => %{
        keyword: :RadiationAtomicNumber,
        name: "Radiation Atomic Number",
        vr: :IS
      },
      0x0306 => %{
        keyword: :RadiationChargeState,
        name: "Radiation Charge State",
        vr: :SS
      },
      0x0308 => %{
        keyword: :ScanMode,
        name: "Scan Mode",
        vr: :CS
      },
      0x0309 => %{
        keyword: :ModulatedScanModeType,
        name: "Modulated Scan Mode Type",
        vr: :CS
      },
      0x030A => %{
        keyword: :VirtualSourceAxisDistances,
        name: "Virtual Source-Axis Distances",
        vr: :FL
      },
      0x030C => %{
        keyword: :SnoutSequence,
        name: "Snout Sequence",
        vr: :SQ
      },
      0x030D => %{
        keyword: :SnoutPosition,
        name: "Snout Position",
        vr: :FL
      },
      0x030F => %{
        keyword: :SnoutID,
        name: "Snout ID",
        vr: :SH
      },
      0x0312 => %{
        keyword: :NumberOfRangeShifters,
        name: "Number of Range Shifters",
        vr: :IS
      },
      0x0314 => %{
        keyword: :RangeShifterSequence,
        name: "Range Shifter Sequence",
        vr: :SQ
      },
      0x0316 => %{
        keyword: :RangeShifterNumber,
        name: "Range Shifter Number",
        vr: :IS
      },
      0x0318 => %{
        keyword: :RangeShifterID,
        name: "Range Shifter ID",
        vr: :SH
      },
      0x0320 => %{
        keyword: :RangeShifterType,
        name: "Range Shifter Type",
        vr: :CS
      },
      0x0322 => %{
        keyword: :RangeShifterDescription,
        name: "Range Shifter Description",
        vr: :LO
      },
      0x0330 => %{
        keyword: :NumberOfLateralSpreadingDevices,
        name: "Number of Lateral Spreading Devices",
        vr: :IS
      },
      0x0332 => %{
        keyword: :LateralSpreadingDeviceSequence,
        name: "Lateral Spreading Device Sequence",
        vr: :SQ
      },
      0x0334 => %{
        keyword: :LateralSpreadingDeviceNumber,
        name: "Lateral Spreading Device Number",
        vr: :IS
      },
      0x0336 => %{
        keyword: :LateralSpreadingDeviceID,
        name: "Lateral Spreading Device ID",
        vr: :SH
      },
      0x0338 => %{
        keyword: :LateralSpreadingDeviceType,
        name: "Lateral Spreading Device Type",
        vr: :CS
      },
      0x033A => %{
        keyword: :LateralSpreadingDeviceDescription,
        name: "Lateral Spreading Device Description",
        vr: :LO
      },
      0x033C => %{
        keyword: :LateralSpreadingDeviceWaterEquivalentThickness,
        name: "Lateral Spreading Device Water Equivalent Thickness",
        vr: :FL
      },
      0x0340 => %{
        keyword: :NumberOfRangeModulators,
        name: "Number of Range Modulators",
        vr: :IS
      },
      0x0342 => %{
        keyword: :RangeModulatorSequence,
        name: "Range Modulator Sequence",
        vr: :SQ
      },
      0x0344 => %{
        keyword: :RangeModulatorNumber,
        name: "Range Modulator Number",
        vr: :IS
      },
      0x0346 => %{
        keyword: :RangeModulatorID,
        name: "Range Modulator ID",
        vr: :SH
      },
      0x0348 => %{
        keyword: :RangeModulatorType,
        name: "Range Modulator Type",
        vr: :CS
      },
      0x034A => %{
        keyword: :RangeModulatorDescription,
        name: "Range Modulator Description",
        vr: :LO
      },
      0x034C => %{
        keyword: :BeamCurrentModulationID,
        name: "Beam Current Modulation ID",
        vr: :SH
      },
      0x0350 => %{
        keyword: :PatientSupportType,
        name: "Patient Support Type",
        vr: :CS
      },
      0x0352 => %{
        keyword: :PatientSupportID,
        name: "Patient Support ID",
        vr: :SH
      },
      0x0354 => %{
        keyword: :PatientSupportAccessoryCode,
        name: "Patient Support Accessory Code",
        vr: :LO
      },
      0x0355 => %{
        keyword: :TrayAccessoryCode,
        name: "Tray Accessory Code",
        vr: :LO
      },
      0x0356 => %{
        keyword: :FixationLightAzimuthalAngle,
        name: "Fixation Light Azimuthal Angle",
        vr: :FL
      },
      0x0358 => %{
        keyword: :FixationLightPolarAngle,
        name: "Fixation Light Polar Angle",
        vr: :FL
      },
      0x035A => %{
        keyword: :MetersetRate,
        name: "Meterset Rate",
        vr: :FL
      },
      0x0360 => %{
        keyword: :RangeShifterSettingsSequence,
        name: "Range Shifter Settings Sequence",
        vr: :SQ
      },
      0x0362 => %{
        keyword: :RangeShifterSetting,
        name: "Range Shifter Setting",
        vr: :LO
      },
      0x0364 => %{
        keyword: :IsocenterToRangeShifterDistance,
        name: "Isocenter to Range Shifter Distance",
        vr: :FL
      },
      0x0366 => %{
        keyword: :RangeShifterWaterEquivalentThickness,
        name: "Range Shifter Water Equivalent Thickness",
        vr: :FL
      },
      0x0370 => %{
        keyword: :LateralSpreadingDeviceSettingsSequence,
        name: "Lateral Spreading Device Settings Sequence",
        vr: :SQ
      },
      0x0372 => %{
        keyword: :LateralSpreadingDeviceSetting,
        name: "Lateral Spreading Device Setting",
        vr: :LO
      },
      0x0374 => %{
        keyword: :IsocenterToLateralSpreadingDeviceDistance,
        name: "Isocenter to Lateral Spreading Device Distance",
        vr: :FL
      },
      0x0380 => %{
        keyword: :RangeModulatorSettingsSequence,
        name: "Range Modulator Settings Sequence",
        vr: :SQ
      },
      0x0382 => %{
        keyword: :RangeModulatorGatingStartValue,
        name: "Range Modulator Gating Start Value",
        vr: :FL
      },
      0x0384 => %{
        keyword: :RangeModulatorGatingStopValue,
        name: "Range Modulator Gating Stop Value",
        vr: :FL
      },
      0x0386 => %{
        keyword: :RangeModulatorGatingStartWaterEquivalentThickness,
        name: "Range Modulator Gating Start Water Equivalent Thickness",
        vr: :FL
      },
      0x0388 => %{
        keyword: :RangeModulatorGatingStopWaterEquivalentThickness,
        name: "Range Modulator Gating Stop Water Equivalent Thickness",
        vr: :FL
      },
      0x038A => %{
        keyword: :IsocenterToRangeModulatorDistance,
        name: "Isocenter to Range Modulator Distance",
        vr: :FL
      },
      0x038F => %{
        keyword: :ScanSpotTimeOffset,
        name: "Scan Spot Time Offset",
        vr: :FL
      },
      0x0390 => %{
        keyword: :ScanSpotTuneID,
        name: "Scan Spot Tune ID",
        vr: :SH
      },
      0x0391 => %{
        keyword: :ScanSpotPrescribedIndices,
        name: "Scan Spot Prescribed Indices",
        vr: :IS
      },
      0x0392 => %{
        keyword: :NumberOfScanSpotPositions,
        name: "Number of Scan Spot Positions",
        vr: :IS
      },
      0x0393 => %{
        keyword: :ScanSpotReordered,
        name: "Scan Spot Reordered",
        vr: :CS
      },
      0x0394 => %{
        keyword: :ScanSpotPositionMap,
        name: "Scan Spot Position Map",
        vr: :FL
      },
      0x0395 => %{
        keyword: :ScanSpotReorderingAllowed,
        name: "Scan Spot Reordering Allowed",
        vr: :CS
      },
      0x0396 => %{
        keyword: :ScanSpotMetersetWeights,
        name: "Scan Spot Meterset Weights",
        vr: :FL
      },
      0x0398 => %{
        keyword: :ScanningSpotSize,
        name: "Scanning Spot Size",
        vr: :FL
      },
      0x0399 => %{
        keyword: :ScanSpotSizesDelivered,
        name: "Scan Spot Sizes Delivered",
        vr: :FL
      },
      0x039A => %{
        keyword: :NumberOfPaintings,
        name: "Number of Paintings",
        vr: :IS
      },
      0x03A0 => %{
        keyword: :IonToleranceTableSequence,
        name: "Ion Tolerance Table Sequence",
        vr: :SQ
      },
      0x03A2 => %{
        keyword: :IonBeamSequence,
        name: "Ion Beam Sequence",
        vr: :SQ
      },
      0x03A4 => %{
        keyword: :IonBeamLimitingDeviceSequence,
        name: "Ion Beam Limiting Device Sequence",
        vr: :SQ
      },
      0x03A6 => %{
        keyword: :IonBlockSequence,
        name: "Ion Block Sequence",
        vr: :SQ
      },
      0x03A8 => %{
        keyword: :IonControlPointSequence,
        name: "Ion Control Point Sequence",
        vr: :SQ
      },
      0x03AA => %{
        keyword: :IonWedgeSequence,
        name: "Ion Wedge Sequence",
        vr: :SQ
      },
      0x03AC => %{
        keyword: :IonWedgePositionSequence,
        name: "Ion Wedge Position Sequence",
        vr: :SQ
      },
      0x0401 => %{
        keyword: :ReferencedSetupImageSequence,
        name: "Referenced Setup Image Sequence",
        vr: :SQ
      },
      0x0402 => %{
        keyword: :SetupImageComment,
        name: "Setup Image Comment",
        vr: :ST
      },
      0x0410 => %{
        keyword: :MotionSynchronizationSequence,
        name: "Motion Synchronization Sequence",
        vr: :SQ
      },
      0x0412 => %{
        keyword: :ControlPointOrientation,
        name: "Control Point Orientation",
        vr: :FL
      },
      0x0420 => %{
        keyword: :GeneralAccessorySequence,
        name: "General Accessory Sequence",
        vr: :SQ
      },
      0x0421 => %{
        keyword: :GeneralAccessoryID,
        name: "General Accessory ID",
        vr: :SH
      },
      0x0422 => %{
        keyword: :GeneralAccessoryDescription,
        name: "General Accessory Description",
        vr: :ST
      },
      0x0423 => %{
        keyword: :GeneralAccessoryType,
        name: "General Accessory Type",
        vr: :CS
      },
      0x0424 => %{
        keyword: :GeneralAccessoryNumber,
        name: "General Accessory Number",
        vr: :IS
      },
      0x0425 => %{
        keyword: :SourceToGeneralAccessoryDistance,
        name: "Source to General Accessory Distance",
        vr: :FL
      },
      0x0426 => %{
        keyword: :IsocenterToGeneralAccessoryDistance,
        name: "Isocenter to General Accessory Distance",
        vr: :DS
      },
      0x0431 => %{
        keyword: :ApplicatorGeometrySequence,
        name: "Applicator Geometry Sequence",
        vr: :SQ
      },
      0x0432 => %{
        keyword: :ApplicatorApertureShape,
        name: "Applicator Aperture Shape",
        vr: :CS
      },
      0x0433 => %{
        keyword: :ApplicatorOpening,
        name: "Applicator Opening",
        vr: :FL
      },
      0x0434 => %{
        keyword: :ApplicatorOpeningX,
        name: "Applicator Opening X",
        vr: :FL
      },
      0x0435 => %{
        keyword: :ApplicatorOpeningY,
        name: "Applicator Opening Y",
        vr: :FL
      },
      0x0436 => %{
        keyword: :SourceToApplicatorMountingPositionDistance,
        name: "Source to Applicator Mounting Position Distance",
        vr: :FL
      },
      0x0440 => %{
        keyword: :NumberOfBlockSlabItems,
        name: "Number of Block Slab Items",
        vr: :IS
      },
      0x0441 => %{
        keyword: :BlockSlabSequence,
        name: "Block Slab Sequence",
        vr: :SQ
      },
      0x0442 => %{
        keyword: :BlockSlabThickness,
        name: "Block Slab Thickness",
        vr: :DS
      },
      0x0443 => %{
        keyword: :BlockSlabNumber,
        name: "Block Slab Number",
        vr: :US
      },
      0x0450 => %{
        keyword: :DeviceMotionControlSequence,
        name: "Device Motion Control Sequence",
        vr: :SQ
      },
      0x0451 => %{
        keyword: :DeviceMotionExecutionMode,
        name: "Device Motion Execution Mode",
        vr: :CS
      },
      0x0452 => %{
        keyword: :DeviceMotionObservationMode,
        name: "Device Motion Observation Mode",
        vr: :CS
      },
      0x0453 => %{
        keyword: :DeviceMotionParameterCodeSequence,
        name: "Device Motion Parameter Code Sequence",
        vr: :SQ
      },
      0x0501 => %{
        keyword: :DistalDepthFraction,
        name: "Distal Depth Fraction",
        vr: :FL
      },
      0x0502 => %{
        keyword: :DistalDepth,
        name: "Distal Depth",
        vr: :FL
      },
      0x0503 => %{
        keyword: :NominalRangeModulationFractions,
        name: "Nominal Range Modulation Fractions",
        vr: :FL
      },
      0x0504 => %{
        keyword: :NominalRangeModulatedRegionDepths,
        name: "Nominal Range Modulated Region Depths",
        vr: :FL
      },
      0x0505 => %{
        keyword: :DepthDoseParametersSequence,
        name: "Depth Dose Parameters Sequence",
        vr: :SQ
      },
      0x0506 => %{
        keyword: :DeliveredDepthDoseParametersSequence,
        name: "Delivered Depth Dose Parameters Sequence",
        vr: :SQ
      },
      0x0507 => %{
        keyword: :DeliveredDistalDepthFraction,
        name: "Delivered Distal Depth Fraction",
        vr: :FL
      },
      0x0508 => %{
        keyword: :DeliveredDistalDepth,
        name: "Delivered Distal Depth",
        vr: :FL
      },
      0x0509 => %{
        keyword: :DeliveredNominalRangeModulationFractions,
        name: "Delivered Nominal Range Modulation Fractions",
        vr: :FL
      },
      0x0510 => %{
        keyword: :DeliveredNominalRangeModulatedRegionDepths,
        name: "Delivered Nominal Range Modulated Region Depths",
        vr: :FL
      },
      0x0511 => %{
        keyword: :DeliveredReferenceDoseDefinition,
        name: "Delivered Reference Dose Definition",
        vr: :CS
      },
      0x0512 => %{
        keyword: :ReferenceDoseDefinition,
        name: "Reference Dose Definition",
        vr: :CS
      },
      0x0600 => %{
        keyword: :RTControlPointIndex,
        name: "RT Control Point Index",
        vr: :US
      },
      0x0601 => %{
        keyword: :RadiationGenerationModeIndex,
        name: "Radiation Generation Mode Index",
        vr: :US
      },
      0x0602 => %{
        keyword: :ReferencedDefinedDeviceIndex,
        name: "Referenced Defined Device Index",
        vr: :US
      },
      0x0603 => %{
        keyword: :RadiationDoseIdentificationIndex,
        name: "Radiation Dose Identification Index",
        vr: :US
      },
      0x0604 => %{
        keyword: :NumberOfRTControlPoints,
        name: "Number of RT Control Points",
        vr: :US
      },
      0x0605 => %{
        keyword: :ReferencedRadiationGenerationModeIndex,
        name: "Referenced Radiation Generation Mode Index",
        vr: :US
      },
      0x0606 => %{
        keyword: :TreatmentPositionIndex,
        name: "Treatment Position Index",
        vr: :US
      },
      0x0607 => %{
        keyword: :ReferencedDeviceIndex,
        name: "Referenced Device Index",
        vr: :US
      },
      0x0608 => %{
        keyword: :TreatmentPositionGroupLabel,
        name: "Treatment Position Group Label",
        vr: :LO
      },
      0x0609 => %{
        keyword: :TreatmentPositionGroupUID,
        name: "Treatment Position Group UID",
        vr: :UI
      },
      0x060A => %{
        keyword: :TreatmentPositionGroupSequence,
        name: "Treatment Position Group Sequence",
        vr: :SQ
      },
      0x060B => %{
        keyword: :ReferencedTreatmentPositionIndex,
        name: "Referenced Treatment Position Index",
        vr: :US
      },
      0x060C => %{
        keyword: :ReferencedRadiationDoseIdentificationIndex,
        name: "Referenced Radiation Dose Identification Index",
        vr: :US
      },
      0x060D => %{
        keyword: :RTAccessoryHolderWaterEquivalentThickness,
        name: "RT Accessory Holder Water-Equivalent Thickness",
        vr: :FD
      },
      0x060E => %{
        keyword: :ReferencedRTAccessoryHolderDeviceIndex,
        name: "Referenced RT Accessory Holder Device Index",
        vr: :US
      },
      0x060F => %{
        keyword: :RTAccessoryHolderSlotExistenceFlag,
        name: "RT Accessory Holder Slot Existence Flag",
        vr: :CS
      },
      0x0610 => %{
        keyword: :RTAccessoryHolderSlotSequence,
        name: "RT Accessory Holder Slot Sequence",
        vr: :SQ
      },
      0x0611 => %{
        keyword: :RTAccessoryHolderSlotID,
        name: "RT Accessory Holder Slot ID",
        vr: :LO
      },
      0x0612 => %{
        keyword: :RTAccessoryHolderSlotDistance,
        name: "RT Accessory Holder Slot Distance",
        vr: :FD
      },
      0x0613 => %{
        keyword: :RTAccessorySlotDistance,
        name: "RT Accessory Slot Distance",
        vr: :FD
      },
      0x0614 => %{
        keyword: :RTAccessoryHolderDefinitionSequence,
        name: "RT Accessory Holder Definition Sequence",
        vr: :SQ
      },
      0x0615 => %{
        keyword: :RTAccessoryDeviceSlotID,
        name: "RT Accessory Device Slot ID",
        vr: :LO
      },
      0x0616 => %{
        keyword: :RTRadiationSequence,
        name: "RT Radiation Sequence",
        vr: :SQ
      },
      0x0617 => %{
        keyword: :RadiationDoseSequence,
        name: "Radiation Dose Sequence",
        vr: :SQ
      },
      0x0618 => %{
        keyword: :RadiationDoseIdentificationSequence,
        name: "Radiation Dose Identification Sequence",
        vr: :SQ
      },
      0x0619 => %{
        keyword: :RadiationDoseIdentificationLabel,
        name: "Radiation Dose Identification Label",
        vr: :LO
      },
      0x061A => %{
        keyword: :ReferenceDoseType,
        name: "Reference Dose Type",
        vr: :CS
      },
      0x061B => %{
        keyword: :PrimaryDoseValueIndicator,
        name: "Primary Dose Value Indicator",
        vr: :CS
      },
      0x061C => %{
        keyword: :DoseValuesSequence,
        name: "Dose Values Sequence",
        vr: :SQ
      },
      0x061D => %{
        keyword: :DoseValuePurpose,
        name: "Dose Value Purpose",
        vr: :CS
      },
      0x061E => %{
        keyword: :ReferenceDosePointCoordinates,
        name: "Reference Dose Point Coordinates",
        vr: :FD
      },
      0x061F => %{
        keyword: :RadiationDoseValuesParametersSequence,
        name: "Radiation Dose Values Parameters Sequence",
        vr: :SQ
      },
      0x0620 => %{
        keyword: :MetersetToDoseMappingSequence,
        name: "Meterset to Dose Mapping Sequence",
        vr: :SQ
      },
      0x0621 => %{
        keyword: :ExpectedInVivoMeasurementValuesSequence,
        name: "Expected In-Vivo Measurement Values Sequence",
        vr: :SQ
      },
      0x0622 => %{
        keyword: :ExpectedInVivoMeasurementValueIndex,
        name: "Expected In-Vivo Measurement Value Index",
        vr: :US
      },
      0x0623 => %{
        keyword: :RadiationDoseInVivoMeasurementLabel,
        name: "Radiation Dose In-Vivo Measurement Label",
        vr: :LO
      },
      0x0624 => %{
        keyword: :RadiationDoseCentralAxisDisplacement,
        name: "Radiation Dose Central Axis Displacement",
        vr: :FD
      },
      0x0625 => %{
        keyword: :RadiationDoseValue,
        name: "Radiation Dose Value",
        vr: :FD
      },
      0x0626 => %{
        keyword: :RadiationDoseSourceToSkinDistance,
        name: "Radiation Dose Source to Skin Distance",
        vr: :FD
      },
      0x0627 => %{
        keyword: :RadiationDoseMeasurementPointCoordinates,
        name: "Radiation Dose Measurement Point Coordinates",
        vr: :FD
      },
      0x0628 => %{
        keyword: :RadiationDoseSourceToExternalContourDistance,
        name: "Radiation Dose Source to External Contour Distance",
        vr: :FD
      },
      0x0629 => %{
        keyword: :RTToleranceSetSequence,
        name: "RT Tolerance Set Sequence",
        vr: :SQ
      },
      0x062A => %{
        keyword: :RTToleranceSetLabel,
        name: "RT Tolerance Set Label",
        vr: :LO
      },
      0x062B => %{
        keyword: :AttributeToleranceValuesSequence,
        name: "Attribute Tolerance Values Sequence",
        vr: :SQ
      },
      0x062C => %{
        keyword: :ToleranceValue,
        name: "Tolerance Value",
        vr: :FD
      },
      0x062D => %{
        keyword: :PatientSupportPositionToleranceSequence,
        name: "Patient Support Position Tolerance Sequence",
        vr: :SQ
      },
      0x062E => %{
        keyword: :TreatmentTimeLimit,
        name: "Treatment Time Limit",
        vr: :FD
      },
      0x062F => %{
        keyword: :CArmPhotonElectronControlPointSequence,
        name: "C-Arm Photon-Electron Control Point Sequence",
        vr: :SQ
      },
      0x0630 => %{
        keyword: :ReferencedRTRadiationSequence,
        name: "Referenced RT Radiation Sequence",
        vr: :SQ
      },
      0x0631 => %{
        keyword: :ReferencedRTInstanceSequence,
        name: "Referenced RT Instance Sequence",
        vr: :SQ
      },
      0x0632 => %{
        keyword: :ReferencedRTPatientSetupSequence,
        name: "Referenced RT Patient Setup Sequence",
        vr: :SQ
      },
      0x0634 => %{
        keyword: :SourceToPatientSurfaceDistance,
        name: "Source to Patient Surface Distance",
        vr: :FD
      },
      0x0635 => %{
        keyword: :TreatmentMachineSpecialModeCodeSequence,
        name: "Treatment Machine Special Mode Code Sequence",
        vr: :SQ
      },
      0x0636 => %{
        keyword: :IntendedNumberOfFractions,
        name: "Intended Number of Fractions",
        vr: :US
      },
      0x0637 => %{
        keyword: :RTRadiationSetIntent,
        name: "RT Radiation Set Intent",
        vr: :CS
      },
      0x0638 => %{
        keyword: :RTRadiationPhysicalAndGeometricContentDetailFlag,
        name: "RT Radiation Physical and Geometric Content Detail Flag",
        vr: :CS
      },
      0x0639 => %{
        keyword: :RTRecordFlag,
        name: "RT Record Flag",
        vr: :CS
      },
      0x063A => %{
        keyword: :TreatmentDeviceIdentificationSequence,
        name: "Treatment Device Identification Sequence",
        vr: :SQ
      },
      0x063B => %{
        keyword: :ReferencedRTPhysicianIntentSequence,
        name: "Referenced RT Physician Intent Sequence",
        vr: :SQ
      },
      0x063C => %{
        keyword: :CumulativeMeterset,
        name: "Cumulative Meterset",
        vr: :FD
      },
      0x063D => %{
        keyword: :DeliveryRate,
        name: "Delivery Rate",
        vr: :FD
      },
      0x063E => %{
        keyword: :DeliveryRateUnitSequence,
        name: "Delivery Rate Unit Sequence",
        vr: :SQ
      },
      0x063F => %{
        keyword: :TreatmentPositionSequence,
        name: "Treatment Position Sequence",
        vr: :SQ
      },
      0x0640 => %{
        keyword: :RadiationSourceAxisDistance,
        name: "Radiation Source-Axis Distance",
        vr: :FD
      },
      0x0641 => %{
        keyword: :NumberOfRTBeamLimitingDevices,
        name: "Number of RT Beam Limiting Devices",
        vr: :US
      },
      0x0642 => %{
        keyword: :RTBeamLimitingDeviceProximalDistance,
        name: "RT Beam Limiting Device Proximal Distance",
        vr: :FD
      },
      0x0643 => %{
        keyword: :RTBeamLimitingDeviceDistalDistance,
        name: "RT Beam Limiting Device Distal Distance",
        vr: :FD
      },
      0x0644 => %{
        keyword: :ParallelRTBeamDelimiterDeviceOrientationLabelCodeSequence,
        name: "Parallel RT Beam Delimiter Device Orientation Label Code Sequence",
        vr: :SQ
      },
      0x0645 => %{
        keyword: :BeamModifierOrientationAngle,
        name: "Beam Modifier Orientation Angle",
        vr: :FD
      },
      0x0646 => %{
        keyword: :FixedRTBeamDelimiterDeviceSequence,
        name: "Fixed RT Beam Delimiter Device Sequence",
        vr: :SQ
      },
      0x0647 => %{
        keyword: :ParallelRTBeamDelimiterDeviceSequence,
        name: "Parallel RT Beam Delimiter Device Sequence",
        vr: :SQ
      },
      0x0648 => %{
        keyword: :NumberOfParallelRTBeamDelimiters,
        name: "Number of Parallel RT Beam Delimiters",
        vr: :US
      },
      0x0649 => %{
        keyword: :ParallelRTBeamDelimiterBoundaries,
        name: "Parallel RT Beam Delimiter Boundaries",
        vr: :FD
      },
      0x064A => %{
        keyword: :ParallelRTBeamDelimiterPositions,
        name: "Parallel RT Beam Delimiter Positions",
        vr: :FD
      },
      0x064B => %{
        keyword: :RTBeamLimitingDeviceOffset,
        name: "RT Beam Limiting Device Offset",
        vr: :FD
      },
      0x064C => %{
        keyword: :RTBeamDelimiterGeometrySequence,
        name: "RT Beam Delimiter Geometry Sequence",
        vr: :SQ
      },
      0x064D => %{
        keyword: :RTBeamLimitingDeviceDefinitionSequence,
        name: "RT Beam Limiting Device Definition Sequence",
        vr: :SQ
      },
      0x064E => %{
        keyword: :ParallelRTBeamDelimiterOpeningMode,
        name: "Parallel RT Beam Delimiter Opening Mode",
        vr: :CS
      },
      0x064F => %{
        keyword: :ParallelRTBeamDelimiterLeafMountingSide,
        name: "Parallel RT Beam Delimiter Leaf Mounting Side",
        vr: :CS
      },
      0x0650 => %{
        keyword: :PatientSetupUID,
        name: "Patient Setup UID",
        vr: :UI
      },
      0x0651 => %{
        keyword: :WedgeDefinitionSequence,
        name: "Wedge Definition Sequence",
        vr: :SQ
      },
      0x0652 => %{
        keyword: :RadiationBeamWedgeAngle,
        name: "Radiation Beam Wedge Angle",
        vr: :FD
      },
      0x0653 => %{
        keyword: :RadiationBeamWedgeThinEdgeDistance,
        name: "Radiation Beam Wedge Thin Edge Distance",
        vr: :FD
      },
      0x0654 => %{
        keyword: :RadiationBeamEffectiveWedgeAngle,
        name: "Radiation Beam Effective Wedge Angle",
        vr: :FD
      },
      0x0655 => %{
        keyword: :NumberOfWedgePositions,
        name: "Number of Wedge Positions",
        vr: :US
      },
      0x0656 => %{
        keyword: :RTBeamLimitingDeviceOpeningSequence,
        name: "RT Beam Limiting Device Opening Sequence",
        vr: :SQ
      },
      0x0657 => %{
        keyword: :NumberOfRTBeamLimitingDeviceOpenings,
        name: "Number of RT Beam Limiting Device Openings",
        vr: :US
      },
      0x0658 => %{
        keyword: :RadiationDosimeterUnitSequence,
        name: "Radiation Dosimeter Unit Sequence",
        vr: :SQ
      },
      0x0659 => %{
        keyword: :RTDeviceDistanceReferenceLocationCodeSequence,
        name: "RT Device Distance Reference Location Code Sequence",
        vr: :SQ
      },
      0x065A => %{
        keyword: :RadiationDeviceConfigurationAndCommissioningKeySequence,
        name: "Radiation Device Configuration and Commissioning Key Sequence",
        vr: :SQ
      },
      0x065B => %{
        keyword: :PatientSupportPositionParameterSequence,
        name: "Patient Support Position Parameter Sequence",
        vr: :SQ
      },
      0x065C => %{
        keyword: :PatientSupportPositionSpecificationMethod,
        name: "Patient Support Position Specification Method",
        vr: :CS
      },
      0x065D => %{
        keyword: :PatientSupportPositionDeviceParameterSequence,
        name: "Patient Support Position Device Parameter Sequence",
        vr: :SQ
      },
      0x065E => %{
        keyword: :DeviceOrderIndex,
        name: "Device Order Index",
        vr: :US
      },
      0x065F => %{
        keyword: :PatientSupportPositionParameterOrderIndex,
        name: "Patient Support Position Parameter Order Index",
        vr: :US
      },
      0x0660 => %{
        keyword: :PatientSupportPositionDeviceToleranceSequence,
        name: "Patient Support Position Device Tolerance Sequence",
        vr: :SQ
      },
      0x0661 => %{
        keyword: :PatientSupportPositionToleranceOrderIndex,
        name: "Patient Support Position Tolerance Order Index",
        vr: :US
      },
      0x0662 => %{
        keyword: :CompensatorDefinitionSequence,
        name: "Compensator Definition Sequence",
        vr: :SQ
      },
      0x0663 => %{
        keyword: :CompensatorMapOrientation,
        name: "Compensator Map Orientation",
        vr: :CS
      },
      0x0664 => %{
        keyword: :CompensatorProximalThicknessMap,
        name: "Compensator Proximal Thickness Map",
        vr: :OF
      },
      0x0665 => %{
        keyword: :CompensatorDistalThicknessMap,
        name: "Compensator Distal Thickness Map",
        vr: :OF
      },
      0x0666 => %{
        keyword: :CompensatorBasePlaneOffset,
        name: "Compensator Base Plane Offset",
        vr: :FD
      },
      0x0667 => %{
        keyword: :CompensatorShapeFabricationCodeSequence,
        name: "Compensator Shape Fabrication Code Sequence",
        vr: :SQ
      },
      0x0668 => %{
        keyword: :CompensatorShapeSequence,
        name: "Compensator Shape Sequence",
        vr: :SQ
      },
      0x0669 => %{
        keyword: :RadiationBeamCompensatorMillingToolDiameter,
        name: "Radiation Beam Compensator Milling Tool Diameter",
        vr: :FD
      },
      0x066A => %{
        keyword: :BlockDefinitionSequence,
        name: "Block Definition Sequence",
        vr: :SQ
      },
      0x066B => %{
        keyword: :BlockEdgeData,
        name: "Block Edge Data",
        vr: :OF
      },
      0x066C => %{
        keyword: :BlockOrientation,
        name: "Block Orientation",
        vr: :CS
      },
      0x066D => %{
        keyword: :RadiationBeamBlockThickness,
        name: "Radiation Beam Block Thickness",
        vr: :FD
      },
      0x066E => %{
        keyword: :RadiationBeamBlockSlabThickness,
        name: "Radiation Beam Block Slab Thickness",
        vr: :FD
      },
      0x066F => %{
        keyword: :BlockEdgeDataSequence,
        name: "Block Edge Data Sequence",
        vr: :SQ
      },
      0x0670 => %{
        keyword: :NumberOfRTAccessoryHolders,
        name: "Number of RT Accessory Holders",
        vr: :US
      },
      0x0671 => %{
        keyword: :GeneralAccessoryDefinitionSequence,
        name: "General Accessory Definition Sequence",
        vr: :SQ
      },
      0x0672 => %{
        keyword: :NumberOfGeneralAccessories,
        name: "Number of General Accessories",
        vr: :US
      },
      0x0673 => %{
        keyword: :BolusDefinitionSequence,
        name: "Bolus Definition Sequence",
        vr: :SQ
      },
      0x0674 => %{
        keyword: :NumberOfBoluses,
        name: "Number of Boluses",
        vr: :US
      },
      0x0675 => %{
        keyword: :EquipmentFrameOfReferenceUID,
        name: "Equipment Frame of Reference UID",
        vr: :UI
      },
      0x0676 => %{
        keyword: :EquipmentFrameOfReferenceDescription,
        name: "Equipment Frame of Reference Description",
        vr: :ST
      },
      0x0677 => %{
        keyword: :EquipmentReferencePointCoordinatesSequence,
        name: "Equipment Reference Point Coordinates Sequence",
        vr: :SQ
      },
      0x0678 => %{
        keyword: :EquipmentReferencePointCodeSequence,
        name: "Equipment Reference Point Code Sequence",
        vr: :SQ
      },
      0x0679 => %{
        keyword: :RTBeamLimitingDeviceAngle,
        name: "RT Beam Limiting Device Angle",
        vr: :FD
      },
      0x067A => %{
        keyword: :SourceRollAngle,
        name: "Source Roll Angle",
        vr: :FD
      },
      0x067B => %{
        keyword: :RadiationGenerationModeSequence,
        name: "Radiation Generation​Mode Sequence",
        vr: :SQ
      },
      0x067C => %{
        keyword: :RadiationGenerationModeLabel,
        name: "Radiation Generation​Mode Label",
        vr: :SH
      },
      0x067D => %{
        keyword: :RadiationGenerationModeDescription,
        name: "Radiation Generation​Mode Description",
        vr: :ST
      },
      0x067E => %{
        keyword: :RadiationGenerationModeMachineCodeSequence,
        name: "Radiation Generation​Mode Machine Code Sequence",
        vr: :SQ
      },
      0x067F => %{
        keyword: :RadiationTypeCodeSequence,
        name: "Radiation Type Code Sequence",
        vr: :SQ
      },
      0x0680 => %{
        keyword: :NominalEnergy,
        name: "Nominal Energy",
        vr: :DS
      },
      0x0681 => %{
        keyword: :MinimumNominalEnergy,
        name: "Minimum Nominal Energy",
        vr: :DS
      },
      0x0682 => %{
        keyword: :MaximumNominalEnergy,
        name: "Maximum Nominal Energy",
        vr: :DS
      },
      0x0683 => %{
        keyword: :RadiationFluenceModifierCodeSequence,
        name: "Radiation Fluence Modifier Code Sequence",
        vr: :SQ
      },
      0x0684 => %{
        keyword: :EnergyUnitCodeSequence,
        name: "Energy Unit Code Sequence",
        vr: :SQ
      },
      0x0685 => %{
        keyword: :NumberOfRadiationGenerationModes,
        name: "Number of Radiation Generation​Modes",
        vr: :US
      },
      0x0686 => %{
        keyword: :PatientSupportDevicesSequence,
        name: "Patient Support Devices Sequence",
        vr: :SQ
      },
      0x0687 => %{
        keyword: :NumberOfPatientSupportDevices,
        name: "Number of Patient Support Devices",
        vr: :US
      },
      0x0688 => %{
        keyword: :RTBeamModifierDefinitionDistance,
        name: "RT Beam Modifier Definition Distance",
        vr: :FD
      },
      0x0689 => %{
        keyword: :BeamAreaLimitSequence,
        name: "Beam Area Limit Sequence",
        vr: :SQ
      },
      0x068A => %{
        keyword: :ReferencedRTPrescriptionSequence,
        name: "Referenced RT Prescription Sequence",
        vr: :SQ
      },
      0x068B => %{
        keyword: :DoseValueInterpretation,
        name: "Dose Value Interpretation",
        vr: :CS
      },
      0x0700 => %{
        keyword: :TreatmentSessionUID,
        name: "Treatment Session UID",
        vr: :UI
      },
      0x0701 => %{
        keyword: :RTRadiationUsage,
        name: "RT Radiation Usage",
        vr: :CS
      },
      0x0702 => %{
        keyword: :ReferencedRTRadiationSetSequence,
        name: "Referenced RT Radiation Set Sequence",
        vr: :SQ
      },
      0x0703 => %{
        keyword: :ReferencedRTRadiationRecordSequence,
        name: "Referenced RT Radiation Record Sequence",
        vr: :SQ
      },
      0x0704 => %{
        keyword: :RTRadiationSetDeliveryNumber,
        name: "RT Radiation Set Delivery Number",
        vr: :US
      },
      0x0705 => %{
        keyword: :ClinicalFractionNumber,
        name: "Clinical Fraction Number",
        vr: :US
      },
      0x0706 => %{
        keyword: :RTTreatmentFractionCompletionStatus,
        name: "RT Treatment Fraction Completion Status",
        vr: :CS
      },
      0x0707 => %{
        keyword: :RTRadiationSetUsage,
        name: "RT Radiation Set Usage",
        vr: :CS
      },
      0x0708 => %{
        keyword: :TreatmentDeliveryContinuationFlag,
        name: "Treatment Delivery Continuation Flag",
        vr: :CS
      },
      0x0709 => %{
        keyword: :TreatmentRecordContentOrigin,
        name: "Treatment Record Content Origin",
        vr: :CS
      },
      0x0714 => %{
        keyword: :RTTreatmentTerminationStatus,
        name: "RT Treatment Termination Status",
        vr: :CS
      },
      0x0715 => %{
        keyword: :RTTreatmentTerminationReasonCodeSequence,
        name: "RT Treatment Termination Reason Code Sequence",
        vr: :SQ
      },
      0x0716 => %{
        keyword: :MachineSpecificTreatmentTerminationCodeSequence,
        name: "Machine-Specific Treatment Termination Code Sequence",
        vr: :SQ
      },
      0x0722 => %{
        keyword: :RTRadiationSalvageRecordControlPointSequence,
        name: "RT Radiation Salvage Record Control Point Sequence",
        vr: :SQ
      },
      0x0723 => %{
        keyword: :StartingMetersetValueKnownFlag,
        name: "Starting Meterset Value Known Flag",
        vr: :CS
      },
      0x0730 => %{
        keyword: :TreatmentTerminationDescription,
        name: "Treatment Termination Description",
        vr: :ST
      },
      0x0731 => %{
        keyword: :TreatmentToleranceViolationSequence,
        name: "Treatment Tolerance Violation Sequence",
        vr: :SQ
      },
      0x0732 => %{
        keyword: :TreatmentToleranceViolationCategory,
        name: "Treatment Tolerance Violation Category",
        vr: :CS
      },
      0x0733 => %{
        keyword: :TreatmentToleranceViolationAttributeSequence,
        name: "Treatment Tolerance Violation Attribute Sequence",
        vr: :SQ
      },
      0x0734 => %{
        keyword: :TreatmentToleranceViolationDescription,
        name: "Treatment Tolerance Violation Description",
        vr: :ST
      },
      0x0735 => %{
        keyword: :TreatmentToleranceViolationIdentification,
        name: "Treatment Tolerance Violation Identification",
        vr: :ST
      },
      0x0736 => %{
        keyword: :TreatmentToleranceViolationDateTime,
        name: "Treatment Tolerance Violation DateTime",
        vr: :DT
      },
      0x073A => %{
        keyword: :RecordedRTControlPointDateTime,
        name: "Recorded RT Control Point DateTime",
        vr: :DT
      },
      0x073B => %{
        keyword: :ReferencedRadiationRTControlPointIndex,
        name: "Referenced Radiation RT Control Point Index",
        vr: :US
      },
      0x073E => %{
        keyword: :AlternateValueSequence,
        name: "Alternate Value Sequence",
        vr: :SQ
      },
      0x073F => %{
        keyword: :ConfirmationSequence,
        name: "Confirmation Sequence",
        vr: :SQ
      },
      0x0740 => %{
        keyword: :InterlockSequence,
        name: "Interlock Sequence",
        vr: :SQ
      },
      0x0741 => %{
        keyword: :InterlockDateTime,
        name: "Interlock DateTime",
        vr: :DT
      },
      0x0742 => %{
        keyword: :InterlockDescription,
        name: "Interlock Description",
        vr: :ST
      },
      0x0743 => %{
        keyword: :InterlockOriginatingDeviceSequence,
        name: "Interlock Originating Device Sequence",
        vr: :SQ
      },
      0x0744 => %{
        keyword: :InterlockCodeSequence,
        name: "Interlock Code Sequence",
        vr: :SQ
      },
      0x0745 => %{
        keyword: :InterlockResolutionCodeSequence,
        name: "Interlock Resolution Code Sequence",
        vr: :SQ
      },
      0x0746 => %{
        keyword: :InterlockResolutionUserSequence,
        name: "Interlock Resolution User Sequence",
        vr: :SQ
      },
      0x0760 => %{
        keyword: :OverrideDateTime,
        name: "Override DateTime",
        vr: :DT
      },
      0x0761 => %{
        keyword: :TreatmentToleranceViolationTypeCodeSequence,
        name: "Treatment Tolerance Violation Type Code Sequence",
        vr: :SQ
      },
      0x0762 => %{
        keyword: :TreatmentToleranceViolationCauseCodeSequence,
        name: "Treatment Tolerance Violation Cause Code Sequence",
        vr: :SQ
      },
      0x0772 => %{
        keyword: :MeasuredMetersetToDoseMappingSequence,
        name: "Measured Meterset to Dose Mapping Sequence",
        vr: :SQ
      },
      0x0773 => %{
        keyword: :ReferencedExpectedInVivoMeasurementValueIndex,
        name: "Referenced Expected In-Vivo Measurement Value Index",
        vr: :US
      },
      0x0774 => %{
        keyword: :DoseMeasurementDeviceCodeSequence,
        name: "Dose Measurement Device Code Sequence",
        vr: :SQ
      },
      0x0780 => %{
        keyword: :AdditionalParameterRecordingInstanceSequence,
        name: "Additional Parameter Recording Instance Sequence",
        vr: :SQ
      },
      0x0783 => %{
        keyword: :InterlockOriginDescription,
        name: "Interlock Origin Description",
        vr: :ST
      },
      0x0784 => %{
        keyword: :RTPatientPositionScopeSequence,
        name: "RT Patient Position Scope Sequence",
        vr: :SQ
      },
      0x0785 => %{
        keyword: :ReferencedTreatmentPositionGroupUID,
        name: "Referenced Treatment Position Group UID",
        vr: :UI
      },
      0x0786 => %{
        keyword: :RadiationOrderIndex,
        name: "Radiation Order Index",
        vr: :US
      },
      0x0787 => %{
        keyword: :OmittedRadiationSequence,
        name: "Omitted Radiation Sequence",
        vr: :SQ
      },
      0x0788 => %{
        keyword: :ReasonForOmissionCodeSequence,
        name: "Reason for Omission Code Sequence",
        vr: :SQ
      },
      0x0789 => %{
        keyword: :RTDeliveryStartPatientPositionSequence,
        name: "RT Delivery Start Patient Position Sequence",
        vr: :SQ
      },
      0x078A => %{
        keyword: :RTTreatmentPreparationPatientPositionSequence,
        name: "RT Treatment Preparation Patient Position Sequence",
        vr: :SQ
      },
      0x078B => %{
        keyword: :ReferencedRTTreatmentPreparationSequence,
        name: "Referenced RT Treatment Preparation Sequence",
        vr: :SQ
      },
      0x078C => %{
        keyword: :ReferencedPatientSetupPhotoSequence,
        name: "Referenced Patient Setup Photo Sequence",
        vr: :SQ
      },
      0x078D => %{
        keyword: :PatientTreatmentPreparationMethodCodeSequence,
        name: "Patient Treatment Preparation Method Code Sequence",
        vr: :SQ
      },
      0x078E => %{
        keyword: :PatientTreatmentPreparationProcedureParameterDescription,
        name: "Patient Treatment Preparation Procedure Parameter Description",
        vr: :LT
      },
      0x078F => %{
        keyword: :PatientTreatmentPreparationDeviceSequence,
        name: "Patient Treatment Preparation Device Sequence",
        vr: :SQ
      },
      0x0790 => %{
        keyword: :PatientTreatmentPreparationProcedureSequence,
        name: "Patient Treatment Preparation Procedure Sequence",
        vr: :SQ
      },
      0x0791 => %{
        keyword: :PatientTreatmentPreparationProcedureCodeSequence,
        name: "Patient Treatment Preparation Procedure Code Sequence",
        vr: :SQ
      },
      0x0792 => %{
        keyword: :PatientTreatmentPreparationMethodDescription,
        name: "Patient Treatment Preparation Method Description",
        vr: :LT
      },
      0x0793 => %{
        keyword: :PatientTreatmentPreparationProcedureParameterSequence,
        name: "Patient Treatment Preparation Procedure Parameter Sequence",
        vr: :SQ
      },
      0x0794 => %{
        keyword: :PatientSetupPhotoDescription,
        name: "Patient Setup Photo Description",
        vr: :LT
      },
      0x0795 => %{
        keyword: :PatientTreatmentPreparationProcedureIndex,
        name: "Patient Treatment Preparation Procedure Index",
        vr: :US
      },
      0x0796 => %{
        keyword: :ReferencedPatientSetupProcedureIndex,
        name: "Referenced Patient Setup Procedure Index",
        vr: :US
      },
      0x0797 => %{
        keyword: :RTRadiationTaskSequence,
        name: "RT Radiation Task Sequence",
        vr: :SQ
      },
      0x0798 => %{
        keyword: :RTPatientPositionDisplacementSequence,
        name: "RT Patient Position Displacement Sequence",
        vr: :SQ
      },
      0x0799 => %{
        keyword: :RTPatientPositionSequence,
        name: "RT Patient Position Sequence",
        vr: :SQ
      },
      0x079A => %{
        keyword: :DisplacementReferenceLabel,
        name: "Displacement Reference Label",
        vr: :LO
      },
      0x079B => %{
        keyword: :DisplacementMatrix,
        name: "Displacement Matrix",
        vr: :FD
      },
      0x079C => %{
        keyword: :PatientSupportDisplacementSequence,
        name: "Patient Support Displacement Sequence",
        vr: :SQ
      },
      0x079D => %{
        keyword: :DisplacementReferenceLocationCodeSequence,
        name: "Displacement Reference Location Code Sequence",
        vr: :SQ
      },
      0x079E => %{
        keyword: :RTRadiationSetDeliveryUsage,
        name: "RT Radiation Set Delivery Usage",
        vr: :CS
      },
      0x079F => %{
        keyword: :PatientTreatmentPreparationSequence,
        name: "Patient Treatment Preparation Sequence",
        vr: :SQ
      },
      0x07A0 => %{
        keyword: :PatientToEquipmentRelationshipSequence,
        name: "Patient to Equipment Relationship Sequence",
        vr: :SQ
      },
      0x07A1 => %{
        keyword: :ImagingEquipmentToTreatmentDeliveryDeviceRelationshipSequence,
        name: "Imaging Equipment to Treatment Delivery Device Relationship Sequence",
        vr: :SQ
      }
    },
    0x300C => %{
      0x0002 => %{
        keyword: :ReferencedRTPlanSequence,
        name: "Referenced RT Plan Sequence",
        vr: :SQ
      },
      0x0004 => %{
        keyword: :ReferencedBeamSequence,
        name: "Referenced Beam Sequence",
        vr: :SQ
      },
      0x0006 => %{
        keyword: :ReferencedBeamNumber,
        name: "Referenced Beam Number",
        vr: :IS
      },
      0x0007 => %{
        keyword: :ReferencedReferenceImageNumber,
        name: "Referenced Reference Image Number",
        vr: :IS
      },
      0x0008 => %{
        keyword: :StartCumulativeMetersetWeight,
        name: "Start Cumulative Meterset Weight",
        vr: :DS
      },
      0x0009 => %{
        keyword: :EndCumulativeMetersetWeight,
        name: "End Cumulative Meterset Weight",
        vr: :DS
      },
      0x000A => %{
        keyword: :ReferencedBrachyApplicationSetupSequence,
        name: "Referenced Brachy Application Setup Sequence",
        vr: :SQ
      },
      0x000C => %{
        keyword: :ReferencedBrachyApplicationSetupNumber,
        name: "Referenced Brachy Application Setup Number",
        vr: :IS
      },
      0x000E => %{
        keyword: :ReferencedSourceNumber,
        name: "Referenced Source Number",
        vr: :IS
      },
      0x0020 => %{
        keyword: :ReferencedFractionGroupSequence,
        name: "Referenced Fraction Group Sequence",
        vr: :SQ
      },
      0x0022 => %{
        keyword: :ReferencedFractionGroupNumber,
        name: "Referenced Fraction Group Number",
        vr: :IS
      },
      0x0040 => %{
        keyword: :ReferencedVerificationImageSequence,
        name: "Referenced Verification Image Sequence",
        vr: :SQ
      },
      0x0042 => %{
        keyword: :ReferencedReferenceImageSequence,
        name: "Referenced Reference Image Sequence",
        vr: :SQ
      },
      0x0050 => %{
        keyword: :ReferencedDoseReferenceSequence,
        name: "Referenced Dose Reference Sequence",
        vr: :SQ
      },
      0x0051 => %{
        keyword: :ReferencedDoseReferenceNumber,
        name: "Referenced Dose Reference Number",
        vr: :IS
      },
      0x0055 => %{
        keyword: :BrachyReferencedDoseReferenceSequence,
        name: "Brachy Referenced Dose Reference Sequence",
        vr: :SQ
      },
      0x0060 => %{
        keyword: :ReferencedStructureSetSequence,
        name: "Referenced Structure Set Sequence",
        vr: :SQ
      },
      0x006A => %{
        keyword: :ReferencedPatientSetupNumber,
        name: "Referenced Patient Setup Number",
        vr: :IS
      },
      0x0080 => %{
        keyword: :ReferencedDoseSequence,
        name: "Referenced Dose Sequence",
        vr: :SQ
      },
      0x00A0 => %{
        keyword: :ReferencedToleranceTableNumber,
        name: "Referenced Tolerance Table Number",
        vr: :IS
      },
      0x00B0 => %{
        keyword: :ReferencedBolusSequence,
        name: "Referenced Bolus Sequence",
        vr: :SQ
      },
      0x00C0 => %{
        keyword: :ReferencedWedgeNumber,
        name: "Referenced Wedge Number",
        vr: :IS
      },
      0x00D0 => %{
        keyword: :ReferencedCompensatorNumber,
        name: "Referenced Compensator Number",
        vr: :IS
      },
      0x00E0 => %{
        keyword: :ReferencedBlockNumber,
        name: "Referenced Block Number",
        vr: :IS
      },
      0x00F0 => %{
        keyword: :ReferencedControlPointIndex,
        name: "Referenced Control Point Index",
        vr: :IS
      },
      0x00F2 => %{
        keyword: :ReferencedControlPointSequence,
        name: "Referenced Control Point Sequence",
        vr: :SQ
      },
      0x00F4 => %{
        keyword: :ReferencedStartControlPointIndex,
        name: "Referenced Start Control Point Index",
        vr: :IS
      },
      0x00F6 => %{
        keyword: :ReferencedStopControlPointIndex,
        name: "Referenced Stop Control Point Index",
        vr: :IS
      },
      0x0100 => %{
        keyword: :ReferencedRangeShifterNumber,
        name: "Referenced Range Shifter Number",
        vr: :IS
      },
      0x0102 => %{
        keyword: :ReferencedLateralSpreadingDeviceNumber,
        name: "Referenced Lateral Spreading Device Number",
        vr: :IS
      },
      0x0104 => %{
        keyword: :ReferencedRangeModulatorNumber,
        name: "Referenced Range Modulator Number",
        vr: :IS
      },
      0x0111 => %{
        keyword: :OmittedBeamTaskSequence,
        name: "Omitted Beam Task Sequence",
        vr: :SQ
      },
      0x0112 => %{
        keyword: :ReasonForOmission,
        name: "Reason for Omission",
        vr: :CS
      },
      0x0113 => %{
        keyword: :ReasonForOmissionDescription,
        name: "Reason for Omission Description",
        vr: :LO
      },
      0x0114 => %{
        keyword: :PrescriptionOverviewSequence,
        name: "Prescription Overview Sequence",
        vr: :SQ
      },
      0x0115 => %{
        keyword: :TotalPrescriptionDose,
        name: "Total Prescription Dose",
        vr: :FL
      },
      0x0116 => %{
        keyword: :PlanOverviewSequence,
        name: "Plan Overview Sequence",
        vr: :SQ
      },
      0x0117 => %{
        keyword: :PlanOverviewIndex,
        name: "Plan Overview Index",
        vr: :US
      },
      0x0118 => %{
        keyword: :ReferencedPlanOverviewIndex,
        name: "Referenced Plan Overview Index",
        vr: :US
      },
      0x0119 => %{
        keyword: :NumberOfFractionsIncluded,
        name: "Number of Fractions Included",
        vr: :US
      },
      0x0120 => %{
        keyword: :DoseCalibrationConditionsSequence,
        name: "Dose Calibration Conditions Sequence",
        vr: :SQ
      },
      0x0121 => %{
        keyword: :AbsorbedDoseToMetersetRatio,
        name: "Absorbed Dose to Meterset Ratio",
        vr: :FD
      },
      0x0122 => %{
        keyword: :DelineatedRadiationFieldSize,
        name: "Delineated Radiation Field Size",
        vr: :FD
      },
      0x0123 => %{
        keyword: :DoseCalibrationConditionsVerifiedFlag,
        name: "Dose Calibration Conditions Verified Flag",
        vr: :CS
      },
      0x0124 => %{
        keyword: :CalibrationReferencePointDepth,
        name: "Calibration Reference Point Depth",
        vr: :FD
      },
      0x0125 => %{
        keyword: :GatingBeamHoldTransitionSequence,
        name: "Gating Beam Hold Transition Sequence",
        vr: :SQ
      },
      0x0126 => %{
        keyword: :BeamHoldTransition,
        name: "Beam Hold Transition",
        vr: :CS
      },
      0x0127 => %{
        keyword: :BeamHoldTransitionDateTime,
        name: "Beam Hold Transition DateTime",
        vr: :DT
      },
      0x0128 => %{
        keyword: :BeamHoldOriginatingDeviceSequence,
        name: "Beam Hold Originating Device Sequence",
        vr: :SQ
      },
      0x0129 => %{
        keyword: :BeamHoldTransitionTriggerSource,
        name: "Beam Hold Transition Trigger Source",
        vr: :CS
      }
    },
    0x300E => %{
      0x0002 => %{
        keyword: :ApprovalStatus,
        name: "Approval Status",
        vr: :CS
      },
      0x0004 => %{
        keyword: :ReviewDate,
        name: "Review Date",
        vr: :DA
      },
      0x0005 => %{
        keyword: :ReviewTime,
        name: "Review Time",
        vr: :TM
      },
      0x0008 => %{
        keyword: :ReviewerName,
        name: "Reviewer Name",
        vr: :PN
      }
    },
    0x3010 => %{
      0x0001 => %{
        keyword: :RadiobiologicalDoseEffectSequence,
        name: "Radiobiological Dose Effect Sequence",
        vr: :SQ
      },
      0x0002 => %{
        keyword: :RadiobiologicalDoseEffectFlag,
        name: "Radiobiological Dose Effect Flag",
        vr: :CS
      },
      0x0003 => %{
        keyword: :EffectiveDoseCalculationMethodCategoryCodeSequence,
        name: "Effective Dose Calculation Method Category Code Sequence",
        vr: :SQ
      },
      0x0004 => %{
        keyword: :EffectiveDoseCalculationMethodCodeSequence,
        name: "Effective Dose Calculation Method Code Sequence",
        vr: :SQ
      },
      0x0005 => %{
        keyword: :EffectiveDoseCalculationMethodDescription,
        name: "Effective Dose Calculation Method Description",
        vr: :LO
      },
      0x0006 => %{
        keyword: :ConceptualVolumeUID,
        name: "Conceptual Volume UID",
        vr: :UI
      },
      0x0007 => %{
        keyword: :OriginatingSOPInstanceReferenceSequence,
        name: "Originating SOP Instance Reference Sequence",
        vr: :SQ
      },
      0x0008 => %{
        keyword: :ConceptualVolumeConstituentSequence,
        name: "Conceptual Volume Constituent Sequence",
        vr: :SQ
      },
      0x0009 => %{
        keyword: :EquivalentConceptualVolumeInstanceReferenceSequence,
        name: "Equivalent Conceptual Volume Instance Reference Sequence",
        vr: :SQ
      },
      0x000A => %{
        keyword: :EquivalentConceptualVolumesSequence,
        name: "Equivalent Conceptual Volumes Sequence",
        vr: :SQ
      },
      0x000B => %{
        keyword: :ReferencedConceptualVolumeUID,
        name: "Referenced Conceptual Volume UID",
        vr: :UI
      },
      0x000C => %{
        keyword: :ConceptualVolumeCombinationExpression,
        name: "Conceptual Volume Combination Expression",
        vr: :UT
      },
      0x000D => %{
        keyword: :ConceptualVolumeConstituentIndex,
        name: "Conceptual Volume Constituent Index",
        vr: :US
      },
      0x000E => %{
        keyword: :ConceptualVolumeCombinationFlag,
        name: "Conceptual Volume Combination Flag",
        vr: :CS
      },
      0x000F => %{
        keyword: :ConceptualVolumeCombinationDescription,
        name: "Conceptual Volume Combination Description",
        vr: :ST
      },
      0x0010 => %{
        keyword: :ConceptualVolumeSegmentationDefinedFlag,
        name: "Conceptual Volume Segmentation Defined Flag",
        vr: :CS
      },
      0x0011 => %{
        keyword: :ConceptualVolumeSegmentationReferenceSequence,
        name: "Conceptual Volume Segmentation Reference Sequence",
        vr: :SQ
      },
      0x0012 => %{
        keyword: :ConceptualVolumeConstituentSegmentationReferenceSequence,
        name: "Conceptual Volume Constituent Segmentation Reference Sequence",
        vr: :SQ
      },
      0x0013 => %{
        keyword: :ConstituentConceptualVolumeUID,
        name: "Constituent Conceptual Volume UID",
        vr: :UI
      },
      0x0014 => %{
        keyword: :DerivationConceptualVolumeSequence,
        name: "Derivation Conceptual Volume Sequence",
        vr: :SQ
      },
      0x0015 => %{
        keyword: :SourceConceptualVolumeUID,
        name: "Source Conceptual Volume UID",
        vr: :UI
      },
      0x0016 => %{
        keyword: :ConceptualVolumeDerivationAlgorithmSequence,
        name: "Conceptual Volume Derivation Algorithm Sequence",
        vr: :SQ
      },
      0x0017 => %{
        keyword: :ConceptualVolumeDescription,
        name: "Conceptual Volume Description",
        vr: :ST
      },
      0x0018 => %{
        keyword: :SourceConceptualVolumeSequence,
        name: "Source Conceptual Volume Sequence",
        vr: :SQ
      },
      0x0019 => %{
        keyword: :AuthorIdentificationSequence,
        name: "Author Identification Sequence",
        vr: :SQ
      },
      0x001A => %{
        keyword: :ManufacturerModelVersion,
        name: "Manufacturer's Model Version",
        vr: :LO
      },
      0x001B => %{
        keyword: :DeviceAlternateIdentifier,
        name: "Device Alternate Identifier",
        vr: :UC
      },
      0x001C => %{
        keyword: :DeviceAlternateIdentifierType,
        name: "Device Alternate Identifier Type",
        vr: :CS
      },
      0x001D => %{
        keyword: :DeviceAlternateIdentifierFormat,
        name: "Device Alternate Identifier Format",
        vr: :LT
      },
      0x001E => %{
        keyword: :SegmentationCreationTemplateLabel,
        name: "Segmentation Creation Template Label",
        vr: :LO
      },
      0x001F => %{
        keyword: :SegmentationTemplateUID,
        name: "Segmentation Template UID",
        vr: :UI
      },
      0x0020 => %{
        keyword: :ReferencedSegmentReferenceIndex,
        name: "Referenced Segment Reference Index",
        vr: :US
      },
      0x0021 => %{
        keyword: :SegmentReferenceSequence,
        name: "Segment Reference Sequence",
        vr: :SQ
      },
      0x0022 => %{
        keyword: :SegmentReferenceIndex,
        name: "Segment Reference Index",
        vr: :US
      },
      0x0023 => %{
        keyword: :DirectSegmentReferenceSequence,
        name: "Direct Segment Reference Sequence",
        vr: :SQ
      },
      0x0024 => %{
        keyword: :CombinationSegmentReferenceSequence,
        name: "Combination Segment Reference Sequence",
        vr: :SQ
      },
      0x0025 => %{
        keyword: :ConceptualVolumeSequence,
        name: "Conceptual Volume Sequence",
        vr: :SQ
      },
      0x0026 => %{
        keyword: :SegmentedRTAccessoryDeviceSequence,
        name: "Segmented RT Accessory Device Sequence",
        vr: :SQ
      },
      0x0027 => %{
        keyword: :SegmentCharacteristicsSequence,
        name: "Segment Characteristics Sequence",
        vr: :SQ
      },
      0x0028 => %{
        keyword: :RelatedSegmentCharacteristicsSequence,
        name: "Related Segment Characteristics Sequence",
        vr: :SQ
      },
      0x0029 => %{
        keyword: :SegmentCharacteristicsPrecedence,
        name: "Segment Characteristics Precedence",
        vr: :US
      },
      0x002A => %{
        keyword: :RTSegmentAnnotationSequence,
        name: "RT Segment Annotation Sequence",
        vr: :SQ
      },
      0x002B => %{
        keyword: :SegmentAnnotationCategoryCodeSequence,
        name: "Segment Annotation Category Code Sequence",
        vr: :SQ
      },
      0x002C => %{
        keyword: :SegmentAnnotationTypeCodeSequence,
        name: "Segment Annotation Type Code Sequence",
        vr: :SQ
      },
      0x002D => %{
        keyword: :DeviceLabel,
        name: "Device Label",
        vr: :LO
      },
      0x002E => %{
        keyword: :DeviceTypeCodeSequence,
        name: "Device Type Code Sequence",
        vr: :SQ
      },
      0x002F => %{
        keyword: :SegmentAnnotationTypeModifierCodeSequence,
        name: "Segment Annotation Type Modifier Code Sequence",
        vr: :SQ
      },
      0x0030 => %{
        keyword: :PatientEquipmentRelationshipCodeSequence,
        name: "Patient Equipment Relationship Code Sequence",
        vr: :SQ
      },
      0x0031 => %{
        keyword: :ReferencedFiducialsUID,
        name: "Referenced Fiducials UID",
        vr: :UI
      },
      0x0032 => %{
        keyword: :PatientTreatmentOrientationSequence,
        name: "Patient Treatment Orientation Sequence",
        vr: :SQ
      },
      0x0033 => %{
        keyword: :UserContentLabel,
        name: "User Content Label",
        vr: :SH
      },
      0x0034 => %{
        keyword: :UserContentLongLabel,
        name: "User Content Long Label",
        vr: :LO
      },
      0x0035 => %{
        keyword: :EntityLabel,
        name: "Entity Label",
        vr: :SH
      },
      0x0036 => %{
        keyword: :EntityName,
        name: "Entity Name",
        vr: :LO
      },
      0x0037 => %{
        keyword: :EntityDescription,
        name: "Entity Description",
        vr: :ST
      },
      0x0038 => %{
        keyword: :EntityLongLabel,
        name: "Entity Long Label",
        vr: :LO
      },
      0x0039 => %{
        keyword: :DeviceIndex,
        name: "Device Index",
        vr: :US
      },
      0x003A => %{
        keyword: :RTTreatmentPhaseIndex,
        name: "RT Treatment Phase Index",
        vr: :US
      },
      0x003B => %{
        keyword: :RTTreatmentPhaseUID,
        name: "RT Treatment Phase UID",
        vr: :UI
      },
      0x003C => %{
        keyword: :RTPrescriptionIndex,
        name: "RT Prescription Index",
        vr: :US
      },
      0x003D => %{
        keyword: :RTSegmentAnnotationIndex,
        name: "RT Segment Annotation Index",
        vr: :US
      },
      0x003E => %{
        keyword: :BasisRTTreatmentPhaseIndex,
        name: "Basis RT Treatment Phase Index",
        vr: :US
      },
      0x003F => %{
        keyword: :RelatedRTTreatmentPhaseIndex,
        name: "Related RT Treatment Phase Index",
        vr: :US
      },
      0x0040 => %{
        keyword: :ReferencedRTTreatmentPhaseIndex,
        name: "Referenced RT Treatment Phase Index",
        vr: :US
      },
      0x0041 => %{
        keyword: :ReferencedRTPrescriptionIndex,
        name: "Referenced RT Prescription Index",
        vr: :US
      },
      0x0042 => %{
        keyword: :ReferencedParentRTPrescriptionIndex,
        name: "Referenced Parent RT Prescription Index",
        vr: :US
      },
      0x0043 => %{
        keyword: :ManufacturerDeviceIdentifier,
        name: "Manufacturer's Device Identifier",
        vr: :ST
      },
      0x0044 => %{
        keyword: :InstanceLevelReferencedPerformedProcedureStepSequence,
        name: "Instance-Level Referenced Performed Procedure Step Sequence",
        vr: :SQ
      },
      0x0045 => %{
        keyword: :RTTreatmentPhaseIntentPresenceFlag,
        name: "RT Treatment Phase Intent Presence Flag",
        vr: :CS
      },
      0x0046 => %{
        keyword: :RadiotherapyTreatmentType,
        name: "Radiotherapy Treatment Type",
        vr: :CS
      },
      0x0047 => %{
        keyword: :TeletherapyRadiationType,
        name: "Teletherapy Radiation Type",
        vr: :CS
      },
      0x0048 => %{
        keyword: :BrachytherapySourceType,
        name: "Brachytherapy Source Type",
        vr: :CS
      },
      0x0049 => %{
        keyword: :ReferencedRTTreatmentPhaseSequence,
        name: "Referenced RT Treatment Phase Sequence",
        vr: :SQ
      },
      0x004A => %{
        keyword: :ReferencedDirectSegmentInstanceSequence,
        name: "Referenced Direct Segment Instance Sequence",
        vr: :SQ
      },
      0x004B => %{
        keyword: :IntendedRTTreatmentPhaseSequence,
        name: "Intended RT Treatment Phase Sequence",
        vr: :SQ
      },
      0x004C => %{
        keyword: :IntendedPhaseStartDate,
        name: "Intended Phase Start Date",
        vr: :DA
      },
      0x004D => %{
        keyword: :IntendedPhaseEndDate,
        name: "Intended Phase End Date",
        vr: :DA
      },
      0x004E => %{
        keyword: :RTTreatmentPhaseIntervalSequence,
        name: "RT Treatment Phase Interval Sequence",
        vr: :SQ
      },
      0x004F => %{
        keyword: :TemporalRelationshipIntervalAnchor,
        name: "Temporal Relationship Interval Anchor",
        vr: :CS
      },
      0x0050 => %{
        keyword: :MinimumNumberOfIntervalDays,
        name: "Minimum Number of Interval Days",
        vr: :FD
      },
      0x0051 => %{
        keyword: :MaximumNumberOfIntervalDays,
        name: "Maximum Number of Interval Days",
        vr: :FD
      },
      0x0052 => %{
        keyword: :PertinentSOPClassesInStudy,
        name: "Pertinent SOP Classes in Study",
        vr: :UI
      },
      0x0053 => %{
        keyword: :PertinentSOPClassesInSeries,
        name: "Pertinent SOP Classes in Series",
        vr: :UI
      },
      0x0054 => %{
        keyword: :RTPrescriptionLabel,
        name: "RT Prescription Label",
        vr: :LO
      },
      0x0055 => %{
        keyword: :RTPhysicianIntentPredecessorSequence,
        name: "RT Physician Intent Predecessor Sequence",
        vr: :SQ
      },
      0x0056 => %{
        keyword: :RTTreatmentApproachLabel,
        name: "RT Treatment Approach Label",
        vr: :LO
      },
      0x0057 => %{
        keyword: :RTPhysicianIntentSequence,
        name: "RT Physician Intent Sequence",
        vr: :SQ
      },
      0x0058 => %{
        keyword: :RTPhysicianIntentIndex,
        name: "RT Physician Intent Index",
        vr: :US
      },
      0x0059 => %{
        keyword: :RTTreatmentIntentType,
        name: "RT Treatment Intent Type",
        vr: :CS
      },
      0x005A => %{
        keyword: :RTPhysicianIntentNarrative,
        name: "RT Physician Intent Narrative",
        vr: :UT
      },
      0x005B => %{
        keyword: :RTProtocolCodeSequence,
        name: "RT Protocol Code Sequence",
        vr: :SQ
      },
      0x005C => %{
        keyword: :ReasonForSuperseding,
        name: "Reason for Superseding",
        vr: :ST
      },
      0x005D => %{
        keyword: :RTDiagnosisCodeSequence,
        name: "RT Diagnosis Code Sequence",
        vr: :SQ
      },
      0x005E => %{
        keyword: :ReferencedRTPhysicianIntentIndex,
        name: "Referenced RT Physician Intent Index",
        vr: :US
      },
      0x005F => %{
        keyword: :RTPhysicianIntentInputInstanceSequence,
        name: "RT Physician Intent Input Instance Sequence",
        vr: :SQ
      },
      0x0060 => %{
        keyword: :RTAnatomicPrescriptionSequence,
        name: "RT Anatomic Prescription Sequence",
        vr: :SQ
      },
      0x0061 => %{
        keyword: :PriorTreatmentDoseDescription,
        name: "Prior Treatment Dose Description",
        vr: :UT
      },
      0x0062 => %{
        keyword: :PriorTreatmentReferenceSequence,
        name: "Prior Treatment Reference Sequence",
        vr: :SQ
      },
      0x0063 => %{
        keyword: :DosimetricObjectiveEvaluationScope,
        name: "Dosimetric Objective Evaluation Scope",
        vr: :CS
      },
      0x0064 => %{
        keyword: :TherapeuticRoleCategoryCodeSequence,
        name: "Therapeutic Role Category Code Sequence",
        vr: :SQ
      },
      0x0065 => %{
        keyword: :TherapeuticRoleTypeCodeSequence,
        name: "Therapeutic Role Type Code Sequence",
        vr: :SQ
      },
      0x0066 => %{
        keyword: :ConceptualVolumeOptimizationPrecedence,
        name: "Conceptual Volume Optimization Precedence",
        vr: :US
      },
      0x0067 => %{
        keyword: :ConceptualVolumeCategoryCodeSequence,
        name: "Conceptual Volume Category Code Sequence",
        vr: :SQ
      },
      0x0068 => %{
        keyword: :ConceptualVolumeBlockingConstraint,
        name: "Conceptual Volume Blocking Constraint",
        vr: :CS
      },
      0x0069 => %{
        keyword: :ConceptualVolumeTypeCodeSequence,
        name: "Conceptual Volume Type Code Sequence",
        vr: :SQ
      },
      0x006A => %{
        keyword: :ConceptualVolumeTypeModifierCodeSequence,
        name: "Conceptual Volume Type Modifier Code Sequence",
        vr: :SQ
      },
      0x006B => %{
        keyword: :RTPrescriptionSequence,
        name: "RT Prescription Sequence",
        vr: :SQ
      },
      0x006C => %{
        keyword: :DosimetricObjectiveSequence,
        name: "Dosimetric Objective Sequence",
        vr: :SQ
      },
      0x006D => %{
        keyword: :DosimetricObjectiveTypeCodeSequence,
        name: "Dosimetric Objective Type Code Sequence",
        vr: :SQ
      },
      0x006E => %{
        keyword: :DosimetricObjectiveUID,
        name: "Dosimetric Objective UID",
        vr: :UI
      },
      0x006F => %{
        keyword: :ReferencedDosimetricObjectiveUID,
        name: "Referenced Dosimetric Objective UID",
        vr: :UI
      },
      0x0070 => %{
        keyword: :DosimetricObjectiveParameterSequence,
        name: "Dosimetric Objective Parameter Sequence",
        vr: :SQ
      },
      0x0071 => %{
        keyword: :ReferencedDosimetricObjectivesSequence,
        name: "Referenced Dosimetric Objectives Sequence",
        vr: :SQ
      },
      0x0073 => %{
        keyword: :AbsoluteDosimetricObjectiveFlag,
        name: "Absolute Dosimetric Objective Flag",
        vr: :CS
      },
      0x0074 => %{
        keyword: :DosimetricObjectiveWeight,
        name: "Dosimetric Objective Weight",
        vr: :FD
      },
      0x0075 => %{
        keyword: :DosimetricObjectivePurpose,
        name: "Dosimetric Objective Purpose",
        vr: :CS
      },
      0x0076 => %{
        keyword: :PlanningInputInformationSequence,
        name: "Planning Input Information Sequence",
        vr: :SQ
      },
      0x0077 => %{
        keyword: :TreatmentSite,
        name: "Treatment Site",
        vr: :LO
      },
      0x0078 => %{
        keyword: :TreatmentSiteCodeSequence,
        name: "Treatment Site Code Sequence",
        vr: :SQ
      },
      0x0079 => %{
        keyword: :FractionPatternSequence,
        name: "Fraction Pattern Sequence",
        vr: :SQ
      },
      0x007A => %{
        keyword: :TreatmentTechniqueNotes,
        name: "Treatment Technique Notes",
        vr: :UT
      },
      0x007B => %{
        keyword: :PrescriptionNotes,
        name: "Prescription Notes",
        vr: :UT
      },
      0x007C => %{
        keyword: :NumberOfIntervalFractions,
        name: "Number of Interval Fractions",
        vr: :IS
      },
      0x007D => %{
        keyword: :NumberOfFractions,
        name: "Number of Fractions",
        vr: :US
      },
      0x007E => %{
        keyword: :IntendedDeliveryDuration,
        name: "Intended Delivery Duration",
        vr: :US
      },
      0x007F => %{
        keyword: :FractionationNotes,
        name: "Fractionation Notes",
        vr: :UT
      },
      0x0080 => %{
        keyword: :RTTreatmentTechniqueCodeSequence,
        name: "RT Treatment Technique Code Sequence",
        vr: :SQ
      },
      0x0081 => %{
        keyword: :PrescriptionNotesSequence,
        name: "Prescription Notes Sequence",
        vr: :SQ
      },
      0x0082 => %{
        keyword: :FractionBasedRelationshipSequence,
        name: "Fraction-Based Relationship Sequence",
        vr: :SQ
      },
      0x0083 => %{
        keyword: :FractionBasedRelationshipIntervalAnchor,
        name: "Fraction-Based Relationship Interval Anchor",
        vr: :CS
      },
      0x0084 => %{
        keyword: :MinimumHoursBetweenFractions,
        name: "Minimum Hours between Fractions",
        vr: :FD
      },
      0x0085 => %{
        keyword: :IntendedFractionStartTime,
        name: "Intended Fraction Start Time",
        vr: :TM
      },
      0x0086 => %{
        keyword: :IntendedStartDayOfWeek,
        name: "Intended Start Day of Week",
        vr: :LT
      },
      0x0087 => %{
        keyword: :WeekdayFractionPatternSequence,
        name: "Weekday Fraction Pattern Sequence",
        vr: :SQ
      },
      0x0088 => %{
        keyword: :DeliveryTimeStructureCodeSequence,
        name: "Delivery Time Structure Code Sequence",
        vr: :SQ
      },
      0x0089 => %{
        keyword: :TreatmentSiteModifierCodeSequence,
        name: "Treatment Site Modifier Code Sequence",
        vr: :SQ
      },
      0x0090 => %{
        keyword: :RoboticBaseLocationIndicator,
        name: "Robotic Base Location Indicator",
        vr: :CS
      },
      0x0091 => %{
        keyword: :RoboticPathNodeSetCodeSequence,
        name: "Robotic Path Node Set Code Sequence",
        vr: :SQ
      },
      0x0092 => %{
        keyword: :RoboticNodeIdentifier,
        name: "Robotic Node Identifier",
        vr: :UL
      },
      0x0093 => %{
        keyword: :RTTreatmentSourceCoordinates,
        name: "RT Treatment Source Coordinates",
        vr: :FD
      },
      0x0094 => %{
        keyword: :RadiationSourceCoordinateSystemYawAngle,
        name: "Radiation Source Coordinate SystemYaw Angle",
        vr: :FD
      },
      0x0095 => %{
        keyword: :RadiationSourceCoordinateSystemRollAngle,
        name: "Radiation Source Coordinate SystemRoll Angle",
        vr: :FD
      },
      0x0096 => %{
        keyword: :RadiationSourceCoordinateSystemPitchAngle,
        name: "Radiation Source Coordinate System Pitch Angle",
        vr: :FD
      },
      0x0097 => %{
        keyword: :RoboticPathControlPointSequence,
        name: "Robotic Path Control Point Sequence",
        vr: :SQ
      },
      0x0098 => %{
        keyword: :TomotherapeuticControlPointSequence,
        name: "Tomotherapeutic Control Point Sequence",
        vr: :SQ
      },
      0x0099 => %{
        keyword: :TomotherapeuticLeafOpenDurations,
        name: "Tomotherapeutic Leaf Open Durations",
        vr: :FD
      },
      0x009A => %{
        keyword: :TomotherapeuticLeafInitialClosedDurations,
        name: "Tomotherapeutic Leaf Initial Closed Durations",
        vr: :FD
      },
      0x00A0 => %{
        keyword: :ConceptualVolumeIdentificationSequence,
        name: "Conceptual Volume Identification Sequence",
        vr: :SQ
      }
    },
    0x4000 => %{
      0x0010 => %{
        keyword: :Arbitrary,
        name: "Arbitrary",
        vr: :LT
      },
      0x4000 => %{
        keyword: :TextComments,
        name: "Text Comments",
        vr: :LT
      }
    },
    0x4008 => %{
      0x0040 => %{
        keyword: :ResultsID,
        name: "Results ID",
        vr: :SH
      },
      0x0042 => %{
        keyword: :ResultsIDIssuer,
        name: "Results ID Issuer",
        vr: :LO
      },
      0x0050 => %{
        keyword: :ReferencedInterpretationSequence,
        name: "Referenced Interpretation Sequence",
        vr: :SQ
      },
      0x00FF => %{
        keyword: :ReportProductionStatusTrial,
        name: "Report Production Status (Trial)",
        vr: :CS
      },
      0x0100 => %{
        keyword: :InterpretationRecordedDate,
        name: "Interpretation Recorded Date",
        vr: :DA
      },
      0x0101 => %{
        keyword: :InterpretationRecordedTime,
        name: "Interpretation Recorded Time",
        vr: :TM
      },
      0x0102 => %{
        keyword: :InterpretationRecorder,
        name: "Interpretation Recorder",
        vr: :PN
      },
      0x0103 => %{
        keyword: :ReferenceToRecordedSound,
        name: "Reference to Recorded Sound",
        vr: :LO
      },
      0x0108 => %{
        keyword: :InterpretationTranscriptionDate,
        name: "Interpretation Transcription Date",
        vr: :DA
      },
      0x0109 => %{
        keyword: :InterpretationTranscriptionTime,
        name: "Interpretation Transcription Time",
        vr: :TM
      },
      0x010A => %{
        keyword: :InterpretationTranscriber,
        name: "Interpretation Transcriber",
        vr: :PN
      },
      0x010B => %{
        keyword: :InterpretationText,
        name: "Interpretation Text",
        vr: :ST
      },
      0x010C => %{
        keyword: :InterpretationAuthor,
        name: "Interpretation Author",
        vr: :PN
      },
      0x0111 => %{
        keyword: :InterpretationApproverSequence,
        name: "Interpretation Approver Sequence",
        vr: :SQ
      },
      0x0112 => %{
        keyword: :InterpretationApprovalDate,
        name: "Interpretation Approval Date",
        vr: :DA
      },
      0x0113 => %{
        keyword: :InterpretationApprovalTime,
        name: "Interpretation Approval Time",
        vr: :TM
      },
      0x0114 => %{
        keyword: :PhysicianApprovingInterpretation,
        name: "Physician Approving Interpretation",
        vr: :PN
      },
      0x0115 => %{
        keyword: :InterpretationDiagnosisDescription,
        name: "Interpretation Diagnosis Description",
        vr: :LT
      },
      0x0117 => %{
        keyword: :InterpretationDiagnosisCodeSequence,
        name: "Interpretation Diagnosis Code Sequence",
        vr: :SQ
      },
      0x0118 => %{
        keyword: :ResultsDistributionListSequence,
        name: "Results Distribution List Sequence",
        vr: :SQ
      },
      0x0119 => %{
        keyword: :DistributionName,
        name: "Distribution Name",
        vr: :PN
      },
      0x011A => %{
        keyword: :DistributionAddress,
        name: "Distribution Address",
        vr: :LO
      },
      0x0200 => %{
        keyword: :InterpretationID,
        name: "Interpretation ID",
        vr: :SH
      },
      0x0202 => %{
        keyword: :InterpretationIDIssuer,
        name: "Interpretation ID Issuer",
        vr: :LO
      },
      0x0210 => %{
        keyword: :InterpretationTypeID,
        name: "Interpretation Type ID",
        vr: :CS
      },
      0x0212 => %{
        keyword: :InterpretationStatusID,
        name: "Interpretation Status ID",
        vr: :CS
      },
      0x0300 => %{
        keyword: :Impressions,
        name: "Impressions",
        vr: :ST
      },
      0x4000 => %{
        keyword: :ResultsComments,
        name: "Results Comments",
        vr: :ST
      }
    },
    0x4010 => %{
      0x0001 => %{
        keyword: :LowEnergyDetectors,
        name: "Low Energy Detectors",
        vr: :CS
      },
      0x0002 => %{
        keyword: :HighEnergyDetectors,
        name: "High Energy Detectors",
        vr: :CS
      },
      0x0004 => %{
        keyword: :DetectorGeometrySequence,
        name: "Detector Geometry Sequence",
        vr: :SQ
      },
      0x1001 => %{
        keyword: :ThreatROIVoxelSequence,
        name: "Threat ROI Voxel Sequence",
        vr: :SQ
      },
      0x1004 => %{
        keyword: :ThreatROIBase,
        name: "Threat ROI Base",
        vr: :FL
      },
      0x1005 => %{
        keyword: :ThreatROIExtents,
        name: "Threat ROI Extents",
        vr: :FL
      },
      0x1006 => %{
        keyword: :ThreatROIBitmap,
        name: "Threat ROI Bitmap",
        vr: :OB
      },
      0x1007 => %{
        keyword: :RouteSegmentID,
        name: "Route Segment ID",
        vr: :SH
      },
      0x1008 => %{
        keyword: :GantryType,
        name: "Gantry Type",
        vr: :CS
      },
      0x1009 => %{
        keyword: :OOIOwnerType,
        name: "OOI Owner Type",
        vr: :CS
      },
      0x100A => %{
        keyword: :RouteSegmentSequence,
        name: "Route Segment Sequence",
        vr: :SQ
      },
      0x1010 => %{
        keyword: :PotentialThreatObjectID,
        name: "Potential Threat Object ID",
        vr: :US
      },
      0x1011 => %{
        keyword: :ThreatSequence,
        name: "Threat Sequence",
        vr: :SQ
      },
      0x1012 => %{
        keyword: :ThreatCategory,
        name: "Threat Category",
        vr: :CS
      },
      0x1013 => %{
        keyword: :ThreatCategoryDescription,
        name: "Threat Category Description",
        vr: :LT
      },
      0x1014 => %{
        keyword: :ATDAbilityAssessment,
        name: "ATD Ability Assessment",
        vr: :CS
      },
      0x1015 => %{
        keyword: :ATDAssessmentFlag,
        name: "ATD Assessment Flag",
        vr: :CS
      },
      0x1016 => %{
        keyword: :ATDAssessmentProbability,
        name: "ATD Assessment Probability",
        vr: :FL
      },
      0x1017 => %{
        keyword: :Mass,
        name: "Mass",
        vr: :FL
      },
      0x1018 => %{
        keyword: :Density,
        name: "Density",
        vr: :FL
      },
      0x1019 => %{
        keyword: :ZEffective,
        name: "Z Effective",
        vr: :FL
      },
      0x101A => %{
        keyword: :BoardingPassID,
        name: "Boarding Pass ID",
        vr: :SH
      },
      0x101B => %{
        keyword: :CenterOfMass,
        name: "Center of Mass",
        vr: :FL
      },
      0x101C => %{
        keyword: :CenterOfPTO,
        name: "Center of PTO",
        vr: :FL
      },
      0x101D => %{
        keyword: :BoundingPolygon,
        name: "Bounding Polygon",
        vr: :FL
      },
      0x101E => %{
        keyword: :RouteSegmentStartLocationID,
        name: "Route Segment Start Location ID",
        vr: :SH
      },
      0x101F => %{
        keyword: :RouteSegmentEndLocationID,
        name: "Route Segment End Location ID",
        vr: :SH
      },
      0x1020 => %{
        keyword: :RouteSegmentLocationIDType,
        name: "Route Segment Location ID Type",
        vr: :CS
      },
      0x1021 => %{
        keyword: :AbortReason,
        name: "Abort Reason",
        vr: :CS
      },
      0x1023 => %{
        keyword: :VolumeOfPTO,
        name: "Volume of PTO",
        vr: :FL
      },
      0x1024 => %{
        keyword: :AbortFlag,
        name: "Abort Flag",
        vr: :CS
      },
      0x1025 => %{
        keyword: :RouteSegmentStartTime,
        name: "Route Segment Start Time",
        vr: :DT
      },
      0x1026 => %{
        keyword: :RouteSegmentEndTime,
        name: "Route Segment End Time",
        vr: :DT
      },
      0x1027 => %{
        keyword: :TDRType,
        name: "TDR Type",
        vr: :CS
      },
      0x1028 => %{
        keyword: :InternationalRouteSegment,
        name: "International Route Segment",
        vr: :CS
      },
      0x1029 => %{
        keyword: :ThreatDetectionAlgorithmAndVersion,
        name: "Threat Detection Algorithm and Version",
        vr: :LO
      },
      0x102A => %{
        keyword: :AssignedLocation,
        name: "Assigned Location",
        vr: :SH
      },
      0x102B => %{
        keyword: :AlarmDecisionTime,
        name: "Alarm Decision Time",
        vr: :DT
      },
      0x1031 => %{
        keyword: :AlarmDecision,
        name: "Alarm Decision",
        vr: :CS
      },
      0x1033 => %{
        keyword: :NumberOfTotalObjects,
        name: "Number of Total Objects",
        vr: :US
      },
      0x1034 => %{
        keyword: :NumberOfAlarmObjects,
        name: "Number of Alarm Objects",
        vr: :US
      },
      0x1037 => %{
        keyword: :PTORepresentationSequence,
        name: "PTO Representation Sequence",
        vr: :SQ
      },
      0x1038 => %{
        keyword: :ATDAssessmentSequence,
        name: "ATD Assessment Sequence",
        vr: :SQ
      },
      0x1039 => %{
        keyword: :TIPType,
        name: "TIP Type",
        vr: :CS
      },
      0x103A => %{
        keyword: :DICOSVersion,
        name: "DICOS Version",
        vr: :CS
      },
      0x1041 => %{
        keyword: :OOIOwnerCreationTime,
        name: "OOI Owner Creation Time",
        vr: :DT
      },
      0x1042 => %{
        keyword: :OOIType,
        name: "OOI Type",
        vr: :CS
      },
      0x1043 => %{
        keyword: :OOISize,
        name: "OOI Size",
        vr: :FL
      },
      0x1044 => %{
        keyword: :AcquisitionStatus,
        name: "Acquisition Status",
        vr: :CS
      },
      0x1045 => %{
        keyword: :BasisMaterialsCodeSequence,
        name: "Basis Materials Code Sequence",
        vr: :SQ
      },
      0x1046 => %{
        keyword: :PhantomType,
        name: "Phantom Type",
        vr: :CS
      },
      0x1047 => %{
        keyword: :OOIOwnerSequence,
        name: "OOI Owner Sequence",
        vr: :SQ
      },
      0x1048 => %{
        keyword: :ScanType,
        name: "Scan Type",
        vr: :CS
      },
      0x1051 => %{
        keyword: :ItineraryID,
        name: "Itinerary ID",
        vr: :LO
      },
      0x1052 => %{
        keyword: :ItineraryIDType,
        name: "Itinerary ID Type",
        vr: :SH
      },
      0x1053 => %{
        keyword: :ItineraryIDAssigningAuthority,
        name: "Itinerary ID Assigning Authority",
        vr: :LO
      },
      0x1054 => %{
        keyword: :RouteID,
        name: "Route ID",
        vr: :SH
      },
      0x1055 => %{
        keyword: :RouteIDAssigningAuthority,
        name: "Route ID Assigning Authority",
        vr: :SH
      },
      0x1056 => %{
        keyword: :InboundArrivalType,
        name: "Inbound Arrival Type",
        vr: :CS
      },
      0x1058 => %{
        keyword: :CarrierID,
        name: "Carrier ID",
        vr: :SH
      },
      0x1059 => %{
        keyword: :CarrierIDAssigningAuthority,
        name: "Carrier ID Assigning Authority",
        vr: :CS
      },
      0x1060 => %{
        keyword: :SourceOrientation,
        name: "Source Orientation",
        vr: :FL
      },
      0x1061 => %{
        keyword: :SourcePosition,
        name: "Source Position",
        vr: :FL
      },
      0x1062 => %{
        keyword: :BeltHeight,
        name: "Belt Height",
        vr: :FL
      },
      0x1064 => %{
        keyword: :AlgorithmRoutingCodeSequence,
        name: "Algorithm Routing Code Sequence",
        vr: :SQ
      },
      0x1067 => %{
        keyword: :TransportClassification,
        name: "Transport Classification",
        vr: :CS
      },
      0x1068 => %{
        keyword: :OOITypeDescriptor,
        name: "OOI Type Descriptor",
        vr: :LT
      },
      0x1069 => %{
        keyword: :TotalProcessingTime,
        name: "Total Processing Time",
        vr: :FL
      },
      0x106C => %{
        keyword: :DetectorCalibrationData,
        name: "Detector Calibration Data",
        vr: :OB
      },
      0x106D => %{
        keyword: :AdditionalScreeningPerformed,
        name: "Additional Screening Performed",
        vr: :CS
      },
      0x106E => %{
        keyword: :AdditionalInspectionSelectionCriteria,
        name: "Additional Inspection Selection Criteria",
        vr: :CS
      },
      0x106F => %{
        keyword: :AdditionalInspectionMethodSequence,
        name: "Additional Inspection Method Sequence",
        vr: :SQ
      },
      0x1070 => %{
        keyword: :AITDeviceType,
        name: "AIT Device Type",
        vr: :CS
      },
      0x1071 => %{
        keyword: :QRMeasurementsSequence,
        name: "QR Measurements Sequence",
        vr: :SQ
      },
      0x1072 => %{
        keyword: :TargetMaterialSequence,
        name: "Target Material Sequence",
        vr: :SQ
      },
      0x1073 => %{
        keyword: :SNRThreshold,
        name: "SNR Threshold",
        vr: :FD
      },
      0x1075 => %{
        keyword: :ImageScaleRepresentation,
        name: "Image Scale Representation",
        vr: :DS
      },
      0x1076 => %{
        keyword: :ReferencedPTOSequence,
        name: "Referenced PTO Sequence",
        vr: :SQ
      },
      0x1077 => %{
        keyword: :ReferencedTDRInstanceSequence,
        name: "Referenced TDR Instance Sequence",
        vr: :SQ
      },
      0x1078 => %{
        keyword: :PTOLocationDescription,
        name: "PTO Location Description",
        vr: :ST
      },
      0x1079 => %{
        keyword: :AnomalyLocatorIndicatorSequence,
        name: "Anomaly Locator Indicator Sequence",
        vr: :SQ
      },
      0x107A => %{
        keyword: :AnomalyLocatorIndicator,
        name: "Anomaly Locator Indicator",
        vr: :FL
      },
      0x107B => %{
        keyword: :PTORegionSequence,
        name: "PTO Region Sequence",
        vr: :SQ
      },
      0x107C => %{
        keyword: :InspectionSelectionCriteria,
        name: "Inspection Selection Criteria",
        vr: :CS
      },
      0x107D => %{
        keyword: :SecondaryInspectionMethodSequence,
        name: "Secondary Inspection Method Sequence",
        vr: :SQ
      },
      0x107E => %{
        keyword: :PRCSToRCSOrientation,
        name: "PRCS to RCS Orientation",
        vr: :DS
      }
    },
    0x4FFE => %{
      0x0001 => %{
        keyword: :MACParametersSequence,
        name: "MAC Parameters Sequence",
        vr: :SQ
      }
    },
    0x5000 => %{
      0x0005 => %{
        keyword: :CurveDimensions,
        name: "Curve Dimensions",
        vr: :US
      },
      0x0010 => %{
        keyword: :NumberOfPoints,
        name: "Number of Points",
        vr: :US
      },
      0x0020 => %{
        keyword: :TypeOfData,
        name: "Type of Data",
        vr: :CS
      },
      0x0022 => %{
        keyword: :CurveDescription,
        name: "Curve Description",
        vr: :LO
      },
      0x0030 => %{
        keyword: :AxisUnits,
        name: "Axis Units",
        vr: :SH
      },
      0x0040 => %{
        keyword: :AxisLabels,
        name: "Axis Labels",
        vr: :SH
      },
      0x0103 => %{
        keyword: :DataValueRepresentation,
        name: "Data Value Representation",
        vr: :US
      },
      0x0104 => %{
        keyword: :MinimumCoordinateValue,
        name: "Minimum Coordinate Value",
        vr: :US
      },
      0x0105 => %{
        keyword: :MaximumCoordinateValue,
        name: "Maximum Coordinate Value",
        vr: :US
      },
      0x0106 => %{
        keyword: :CurveRange,
        name: "Curve Range",
        vr: :SH
      },
      0x0110 => %{
        keyword: :CurveDataDescriptor,
        name: "Curve Data Descriptor",
        vr: :US
      },
      0x0112 => %{
        keyword: :CoordinateStartValue,
        name: "Coordinate Start Value",
        vr: :US
      },
      0x0114 => %{
        keyword: :CoordinateStepValue,
        name: "Coordinate Step Value",
        vr: :US
      },
      0x1001 => %{
        keyword: :CurveActivationLayer,
        name: "Curve Activation Layer",
        vr: :CS
      },
      0x2000 => %{
        keyword: :AudioType,
        name: "Audio Type",
        vr: :US
      },
      0x2002 => %{
        keyword: :AudioSampleFormat,
        name: "Audio Sample Format",
        vr: :US
      },
      0x2004 => %{
        keyword: :NumberOfChannels,
        name: "Number of Channels",
        vr: :US
      },
      0x2006 => %{
        keyword: :NumberOfSamples,
        name: "Number of Samples",
        vr: :UL
      },
      0x2008 => %{
        keyword: :SampleRate,
        name: "Sample Rate",
        vr: :UL
      },
      0x200A => %{
        keyword: :TotalTime,
        name: "Total Time",
        vr: :UL
      },
      0x200C => %{
        keyword: :AudioSampleData,
        name: "Audio Sample Data",
        vr: :OB
      },
      0x200E => %{
        keyword: :AudioComments,
        name: "Audio Comments",
        vr: :LT
      },
      0x2500 => %{
        keyword: :CurveLabel,
        name: "Curve Label",
        vr: :LO
      },
      0x2600 => %{
        keyword: :CurveReferencedOverlaySequence,
        name: "Curve Referenced Overlay Sequence",
        vr: :SQ
      },
      0x2610 => %{
        keyword: :CurveReferencedOverlayGroup,
        name: "Curve Referenced Overlay Group",
        vr: :US
      },
      0x3000 => %{
        keyword: :CurveData,
        name: "Curve Data",
        vr: :OB
      }
    },
    0x5200 => %{
      0x9229 => %{
        keyword: :SharedFunctionalGroupsSequence,
        name: "Shared Functional Groups Sequence",
        vr: :SQ
      },
      0x9230 => %{
        keyword: :PerFrameFunctionalGroupsSequence,
        name: "Per-Frame Functional Groups Sequence",
        vr: :SQ
      }
    },
    0x5400 => %{
      0x0100 => %{
        keyword: :WaveformSequence,
        name: "Waveform Sequence",
        vr: :SQ
      },
      0x0110 => %{
        keyword: :ChannelMinimumValue,
        name: "Channel Minimum Value",
        vr: :OB
      },
      0x0112 => %{
        keyword: :ChannelMaximumValue,
        name: "Channel Maximum Value",
        vr: :OB
      },
      0x1004 => %{
        keyword: :WaveformBitsAllocated,
        name: "Waveform Bits Allocated",
        vr: :US
      },
      0x1006 => %{
        keyword: :WaveformSampleInterpretation,
        name: "Waveform Sample Interpretation",
        vr: :CS
      },
      0x100A => %{
        keyword: :WaveformPaddingValue,
        name: "Waveform Padding Value",
        vr: :OB
      },
      0x1010 => %{
        keyword: :WaveformData,
        name: "Waveform Data",
        vr: :OB
      }
    },
    0x5600 => %{
      0x0010 => %{
        keyword: :FirstOrderPhaseCorrectionAngle,
        name: "First Order Phase Correction Angle",
        vr: :OF
      },
      0x0020 => %{
        keyword: :SpectroscopyData,
        name: "Spectroscopy Data",
        vr: :OF
      }
    },
    0x6000 => %{
      0x0010 => %{
        keyword: :OverlayRows,
        name: "Overlay Rows",
        vr: :US
      },
      0x0011 => %{
        keyword: :OverlayColumns,
        name: "Overlay Columns",
        vr: :US
      },
      0x0012 => %{
        keyword: :OverlayPlanes,
        name: "Overlay Planes",
        vr: :US
      },
      0x0015 => %{
        keyword: :NumberOfFramesInOverlay,
        name: "Number of Frames in Overlay",
        vr: :IS
      },
      0x0022 => %{
        keyword: :OverlayDescription,
        name: "Overlay Description",
        vr: :LO
      },
      0x0040 => %{
        keyword: :OverlayType,
        name: "Overlay Type",
        vr: :CS
      },
      0x0045 => %{
        keyword: :OverlaySubtype,
        name: "Overlay Subtype",
        vr: :LO
      },
      0x0050 => %{
        keyword: :OverlayOrigin,
        name: "Overlay Origin",
        vr: :SS
      },
      0x0051 => %{
        keyword: :ImageFrameOrigin,
        name: "Image Frame Origin",
        vr: :US
      },
      0x0052 => %{
        keyword: :OverlayPlaneOrigin,
        name: "Overlay Plane Origin",
        vr: :US
      },
      0x0060 => %{
        keyword: :OverlayCompressionCode,
        name: "Overlay Compression Code",
        vr: :CS
      },
      0x0061 => %{
        keyword: :OverlayCompressionOriginator,
        name: "Overlay Compression Originator",
        vr: :SH
      },
      0x0062 => %{
        keyword: :OverlayCompressionLabel,
        name: "Overlay Compression Label",
        vr: :SH
      },
      0x0063 => %{
        keyword: :OverlayCompressionDescription,
        name: "Overlay Compression Description",
        vr: :CS
      },
      0x0066 => %{
        keyword: :OverlayCompressionStepPointers,
        name: "Overlay Compression Step Pointers",
        vr: :AT
      },
      0x0068 => %{
        keyword: :OverlayRepeatInterval,
        name: "Overlay Repeat Interval",
        vr: :US
      },
      0x0069 => %{
        keyword: :OverlayBitsGrouped,
        name: "Overlay Bits Grouped",
        vr: :US
      },
      0x0100 => %{
        keyword: :OverlayBitsAllocated,
        name: "Overlay Bits Allocated",
        vr: :US
      },
      0x0102 => %{
        keyword: :OverlayBitPosition,
        name: "Overlay Bit Position",
        vr: :US
      },
      0x0110 => %{
        keyword: :OverlayFormat,
        name: "Overlay Format",
        vr: :CS
      },
      0x0200 => %{
        keyword: :OverlayLocation,
        name: "Overlay Location",
        vr: :US
      },
      0x0800 => %{
        keyword: :OverlayCodeLabel,
        name: "Overlay Code Label",
        vr: :CS
      },
      0x0802 => %{
        keyword: :OverlayNumberOfTables,
        name: "Overlay Number of Tables",
        vr: :US
      },
      0x0803 => %{
        keyword: :OverlayCodeTableLocation,
        name: "Overlay Code Table Location",
        vr: :AT
      },
      0x0804 => %{
        keyword: :OverlayBitsForCodeWord,
        name: "Overlay Bits For Code Word",
        vr: :US
      },
      0x1001 => %{
        keyword: :OverlayActivationLayer,
        name: "Overlay Activation Layer",
        vr: :CS
      },
      0x1100 => %{
        keyword: :OverlayDescriptorGray,
        name: "Overlay Descriptor - Gray",
        vr: :US
      },
      0x1101 => %{
        keyword: :OverlayDescriptorRed,
        name: "Overlay Descriptor - Red",
        vr: :US
      },
      0x1102 => %{
        keyword: :OverlayDescriptorGreen,
        name: "Overlay Descriptor - Green",
        vr: :US
      },
      0x1103 => %{
        keyword: :OverlayDescriptorBlue,
        name: "Overlay Descriptor - Blue",
        vr: :US
      },
      0x1200 => %{
        keyword: :OverlaysGray,
        name: "Overlays - Gray",
        vr: :US
      },
      0x1201 => %{
        keyword: :OverlaysRed,
        name: "Overlays - Red",
        vr: :US
      },
      0x1202 => %{
        keyword: :OverlaysGreen,
        name: "Overlays - Green",
        vr: :US
      },
      0x1203 => %{
        keyword: :OverlaysBlue,
        name: "Overlays - Blue",
        vr: :US
      },
      0x1301 => %{
        keyword: :ROIArea,
        name: "ROI Area",
        vr: :IS
      },
      0x1302 => %{
        keyword: :ROIMean,
        name: "ROI Mean",
        vr: :DS
      },
      0x1303 => %{
        keyword: :ROIStandardDeviation,
        name: "ROI Standard Deviation",
        vr: :DS
      },
      0x1500 => %{
        keyword: :OverlayLabel,
        name: "Overlay Label",
        vr: :LO
      },
      0x3000 => %{
        keyword: :OverlayData,
        name: "Overlay Data",
        vr: :OB
      },
      0x4000 => %{
        keyword: :OverlayComments,
        name: "Overlay Comments",
        vr: :LT
      }
    },
    0x7F00 => %{
      0x0010 => %{
        keyword: :VariablePixelData,
        name: "Variable Pixel Data",
        vr: :OB
      },
      0x0011 => %{
        keyword: :VariableNextDataGroup,
        name: "Variable Next Data Group",
        vr: :US
      },
      0x0020 => %{
        keyword: :VariableCoefficientsSDVN,
        name: "Variable Coefficients SDVN",
        vr: :OW
      },
      0x0030 => %{
        keyword: :VariableCoefficientsSDHN,
        name: "Variable Coefficients SDHN",
        vr: :OW
      },
      0x0040 => %{
        keyword: :VariableCoefficientsSDDN,
        name: "Variable Coefficients SDDN",
        vr: :OW
      }
    },
    0x7FE0 => %{
      0x0001 => %{
        keyword: :ExtendedOffsetTable,
        name: "Extended Offset Table",
        vr: :OV
      },
      0x0002 => %{
        keyword: :ExtendedOffsetTableLengths,
        name: "Extended Offset Table Lengths",
        vr: :OV
      },
      0x0003 => %{
        keyword: :EncapsulatedPixelDataValueTotalLength,
        name: "Encapsulated Pixel Data Value Total Length",
        vr: :UV
      },
      0x0008 => %{
        keyword: :FloatPixelData,
        name: "Float Pixel Data",
        vr: :OF
      },
      0x0009 => %{
        keyword: :DoubleFloatPixelData,
        name: "Double Float Pixel Data",
        vr: :OD
      },
      0x0010 => %{
        keyword: :PixelData,
        name: "Pixel Data",
        vr: :OB
      },
      0x0020 => %{
        keyword: :CoefficientsSDVN,
        name: "Coefficients SDVN",
        vr: :OW
      },
      0x0030 => %{
        keyword: :CoefficientsSDHN,
        name: "Coefficients SDHN",
        vr: :OW
      },
      0x0040 => %{
        keyword: :CoefficientsSDDN,
        name: "Coefficients SDDN",
        vr: :OW
      }
    },
    0xFFFA => %{
      0xFFFA => %{
        keyword: :DigitalSignaturesSequence,
        name: "Digital Signatures Sequence",
        vr: :SQ
      }
    },
    0xFFFC => %{
      0xFFFC => %{
        keyword: :DataSetTrailingPadding,
        name: "Data Set Trailing Padding",
        vr: :OB
      }
    },
    0xFFFE => %{
      0xE000 => %{
        keyword: :Item,
        name: "Item",
        vr: :UN
      },
      0xE00D => %{
        keyword: :ItemDelimitationItem,
        name: "Item Delimitation Item",
        vr: :UN
      },
      0xE0DD => %{
        keyword: :SequenceDelimitationItem,
        name: "Sequence Delimitation Item",
        vr: :UN
      }
    }
  }

  def by_tag(), do: @by_tag
end
