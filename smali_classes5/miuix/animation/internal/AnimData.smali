.class public Lmiuix/animation/internal/AnimData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public delay:J

.field public ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public frameCount:I

.field public initTime:J

.field public isCompleted:Z

.field public justEnd:Z

.field public logEnabled:Z

.field public op:B

.field public progress:D

.field public property:Lmiuix/animation/property/FloatProperty;

.field public startTime:J

.field public startValue:D

.field public targetValue:D

.field public tintMode:I

.field public value:D

.field public velocity:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmiuix/animation/internal/AnimData;->tintMode:I

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 3
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 4
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 5
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 2
    iput-object v0, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-void
.end method

.method public from(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    iput-object v0, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 2
    iget-wide v0, p1, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 3
    iget v0, p1, Lmiuix/animation/listener/UpdateInfo;->frameCount:I

    iput v0, p0, Lmiuix/animation/internal/AnimData;->frameCount:I

    .line 4
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    iput-byte v0, p0, Lmiuix/animation/internal/AnimData;->op:B

    .line 5
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->initTime:J

    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 6
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->startTime:J

    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 7
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->progress:D

    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->progress:D

    .line 8
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 9
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 10
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 11
    iget-boolean v0, p1, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    iput-boolean v0, p0, Lmiuix/animation/internal/AnimData;->isCompleted:Z

    .line 12
    iget-object p1, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-boolean p1, p1, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    iput-boolean p1, p0, Lmiuix/animation/internal/AnimData;->justEnd:Z

    .line 13
    invoke-static {p2, p3}, Lmiuix/animation/internal/AnimConfigUtils;->getTintMode(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)I

    move-result p1

    iput p1, p0, Lmiuix/animation/internal/AnimData;->tintMode:I

    .line 14
    invoke-static {p2, p3}, Lmiuix/animation/internal/AnimConfigUtils;->getEase(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 15
    invoke-static {p2, p3}, Lmiuix/animation/internal/AnimConfigUtils;->getDelay(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/animation/internal/AnimData;->delay:J

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmiuix/animation/internal/AnimData;->isCompleted:Z

    .line 2
    iput v0, p0, Lmiuix/animation/internal/AnimData;->frameCount:I

    .line 3
    iput-boolean v0, p0, Lmiuix/animation/internal/AnimData;->justEnd:Z

    return-void
.end method

.method public setOp(B)V
    .locals 1

    .line 1
    iput-byte p1, p0, Lmiuix/animation/internal/AnimData;->op:B

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 2
    :goto_1
    iput-boolean p1, p0, Lmiuix/animation/internal/AnimData;->isCompleted:Z

    return-void
.end method

.method public to(Lmiuix/animation/listener/UpdateInfo;)V
    .locals 3

    .line 1
    iget v0, p0, Lmiuix/animation/internal/AnimData;->frameCount:I

    iput v0, p1, Lmiuix/animation/listener/UpdateInfo;->frameCount:I

    .line 2
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v1, p0, Lmiuix/animation/internal/AnimData;->op:B

    iput-byte v1, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 3
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->delay:J

    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->delay:J

    .line 4
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget v1, p0, Lmiuix/animation/internal/AnimData;->tintMode:I

    iput v1, v0, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 5
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->initTime:J

    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->initTime:J

    .line 6
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startTime:J

    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->startTime:J

    .line 7
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->progress:D

    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->progress:D

    .line 8
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 9
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 10
    iget-boolean v0, p0, Lmiuix/animation/internal/AnimData;->isCompleted:Z

    iput-boolean v0, p1, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 11
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->value:D

    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 12
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    iput-wide v0, p1, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 13
    iget-object p1, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-boolean v0, p0, Lmiuix/animation/internal/AnimData;->justEnd:Z

    iput-boolean v0, p1, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 14
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimData;->clear()V

    return-void
.end method
