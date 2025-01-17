from io import BytesIO

import pydicom


ds = pydicom.Dataset()

# AE
ds.StationAETitle = "AETITLE"
# AS
ds.PatientAge = "042Y"
# AT
ds.DataElement = 0x00020010
ds.ImageType = "CODESTRING"
# DA
ds.InstanceCreationDate = "20000101"
# FS
ds.PatientSize = "1.93"
# DT
ds.InstanceCoercionDateTime = "20240102131415"
# FL
ds.DisplayedZValue = 1.234
# FD
ds.TimeRange = [1.23456789, 9.012345678]
# IS
ds.ReferencedFrameNumber = "123"
# SH
ds.DataSetSubtype = "SHORTSTRING"
# LT
ds.ExtendedCodeMeaning = "LONGTEXT"
# OB
ds.CoordinateSystemAxisValues = b"1234"
# # OF
# ds.VectorGridData = [1.23, 3.45, 6.78, 9.01, 2.34]
# # OD
# ds.VolumetricCurvePoints = [1.23, 3.45, 6.78, 9.01, 2.34]
# OW
ds.BlendingLookupTableData = b"otherword"
# PN
ds.PatientName = "John^Doe"
# SH
ds.AccessionNumber = "SHORTSTRING"
# SL
ds.SelectorSLValue = -42
# SS
ds.SelectorSSValue = -42
# ST
ds.InstitutionAddress = "SHORTTEXT"
# TM
ds.InstanceCreationTime = "111213.123456"
# UI
ds.PrivateRecordUID = "1.2.3.4"
# UL
ds.PixelComponentMask = 42
# UN
ds.SelectorUNValue = b"unknown"
# US
ds.DataSetType = 1
# UT
ds.BatteryLevel = "UNLIMITEDTEXT"


def serialize_single_data_element(
        element: pydicom.DataElement,
        implicit_vr: bool = False,
        little_endian: bool = True) -> bytes:
    ds = pydicom.Dataset()
    ds.add(element)
    buffer = BytesIO()
    ds.save_as(buffer, implicit_vr=implicit_vr, little_endian=little_endian)
    return buffer.getvalue()


tses = [
    "ImplicitVRLittleEndian",
    "ExplicitVRLittleEndian",
    "ExplicitVRBigEndian",
]


for element in ds.values():
    print(f"# VR: {element.VR}, Value: {element.value}")
    for implicit_vr in [False, True]:
        for little_endian in [True, False]:
            if implicit_vr and not little_endian:
                # implicit VR with big endian is not supported
                continue
            data = serialize_single_data_element(
                element, implicit_vr, little_endian)
            print(f'sample = %{{options: [endianness: {
                  ":little" if little_endian else ":big"}, explicit: {str(not implicit_vr).lower()}], data: "{data.hex()}"}}')
    print()


for ts in tses:
    fmds = pydicom.FileMetaDataset()
    fmds.TransferSyntaxUID = getattr(pydicom.uid, ts)
    fmds.MediaStorageSOPClassUID = "1.2.3"
    fmds.MediaStorageSOPInstanceUID = "1.2.3"

    filename = f"test-{ts}.dcm"

    fds = pydicom.FileDataset(filename, dataset=ds, file_meta=fmds)

    with open(filename, "wb") as out_file:
        pydicom.dcmwrite(out_file, fds, enforce_file_format=True)
