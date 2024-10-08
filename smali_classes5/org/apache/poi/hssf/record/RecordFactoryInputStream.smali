.class public final Lorg/apache/poi/hssf/record/RecordFactoryInputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;
    }
.end annotation


# instance fields
.field private _bofDepth:I

.field private _lastDrawingRecord:Lorg/apache/poi/hssf/record/DrawingRecord;

.field private _lastRecord:Lorg/apache/poi/hssf/record/Record;

.field private _lastRecordWasEOFLevelZero:Z

.field private final _recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

.field private final _shouldIncludeContinueRecords:Z

.field private _unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

.field private _unreadRecordIndex:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DrawingRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastDrawingRecord:Lorg/apache/poi/hssf/record/DrawingRecord;

    .line 5
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v2, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;Ljava/util/List;)V

    .line 8
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->hasEncryption()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->createDecryptingStream(Ljava/io/InputStream;)Lorg/apache/poi/hssf/record/RecordInputStream;

    move-result-object v0

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/poi/hssf/record/Record;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    .line 12
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13
    iput v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 14
    :cond_1
    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 15
    iput-boolean p2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_shouldIncludeContinueRecords:Z

    .line 16
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->getLastRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    .line 17
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->hasBOFRecord()Z

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    .line 18
    iput-boolean v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecordWasEOFLevelZero:Z

    return-void
.end method

.method private getNextUnreadRecord()Lorg/apache/poi/hssf/record/Record;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 3
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 4
    aget-object v0, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 5
    iput v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 7
    iput-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    :cond_1
    return-object v1
.end method

.method private readNextRecord()Lorg/apache/poi/hssf/record/Record;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecordWasEOFLevelZero:Z

    .line 3
    instance-of v2, v0, Lorg/apache/poi/hssf/record/BOFRecord;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    return-object v0

    .line 5
    :cond_0
    instance-of v2, v0, Lorg/apache/poi/hssf/record/EOFRecord;

    if-eqz v2, :cond_2

    .line 6
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    if-ge v1, v3, :cond_1

    .line 7
    iput-boolean v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecordWasEOFLevelZero:Z

    :cond_1
    return-object v0

    .line 8
    :cond_2
    instance-of v2, v0, Lorg/apache/poi/hssf/record/DBCellRecord;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    return-object v4

    .line 9
    :cond_3
    instance-of v2, v0, Lorg/apache/poi/hssf/record/RKRecord;

    if-eqz v2, :cond_4

    .line 10
    check-cast v0, Lorg/apache/poi/hssf/record/RKRecord;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/RecordFactory;->convertToNumberRecord(Lorg/apache/poi/hssf/record/RKRecord;)Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    instance-of v2, v0, Lorg/apache/poi/hssf/record/MulRKRecord;

    if-eqz v2, :cond_5

    .line 12
    check-cast v0, Lorg/apache/poi/hssf/record/MulRKRecord;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/RecordFactory;->convertRKRecords(Lorg/apache/poi/hssf/record/MulRKRecord;)[Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    .line 14
    iput v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 15
    aget-object p0, v0, v1

    return-object p0

    .line 16
    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0xeb

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    instance-of v2, v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    if-eqz v2, :cond_6

    .line 17
    check-cast v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 18
    check-cast v0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->join(Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;)V

    return-object v4

    .line 19
    :cond_6
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_e

    .line 20
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/record/ContinueRecord;

    .line 21
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    instance-of v3, v2, Lorg/apache/poi/hssf/record/ObjRecord;

    if-nez v3, :cond_c

    instance-of v3, v2, Lorg/apache/poi/hssf/record/TextObjectRecord;

    if-eqz v3, :cond_7

    goto :goto_0

    .line 22
    :cond_7
    instance-of v3, v2, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    if-eqz v3, :cond_8

    .line 23
    check-cast v2, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ContinueRecord;->getData()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->processContinueRecord([B)V

    return-object v4

    .line 24
    :cond_8
    instance-of v3, v2, Lorg/apache/poi/hssf/record/DrawingRecord;

    if-eqz v3, :cond_9

    return-object v1

    .line 25
    :cond_9
    instance-of v1, v2, Lorg/apache/poi/hssf/record/UnknownRecord;

    if-eqz v1, :cond_a

    return-object v0

    .line 26
    :cond_a
    instance-of v1, v2, Lorg/apache/poi/hssf/record/EOFRecord;

    if-eqz v1, :cond_b

    return-object v0

    .line 27
    :cond_b
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled Continue Record followining "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_c
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastDrawingRecord:Lorg/apache/poi/hssf/record/DrawingRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ContinueRecord;->getData()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/DrawingRecord;->processContinueRecord([B)V

    .line 29
    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_shouldIncludeContinueRecords:Z

    if-eqz p0, :cond_d

    return-object v0

    :cond_d
    return-object v4

    .line 30
    :cond_e
    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    .line 31
    instance-of v1, v0, Lorg/apache/poi/hssf/record/DrawingRecord;

    if-eqz v1, :cond_f

    .line 32
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/record/DrawingRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastDrawingRecord:Lorg/apache/poi/hssf/record/DrawingRecord;

    :cond_f
    return-object v0
.end method


# virtual methods
.method public nextRecord()Lorg/apache/poi/hssf/record/Record;
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->getNextUnreadRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecordWasEOFLevelZero:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v0

    const/16 v2, 0x809

    if-eq v0, v2, :cond_2

    return-object v1

    .line 5
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->readNextRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    return-object v0
.end method
