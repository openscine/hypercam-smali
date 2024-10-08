.class public Lcom/android/camera/panorama/RoundDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/panorama/RoundDetector$LoopRangeLeft;,
        Lcom/android/camera/panorama/RoundDetector$LoopRange;
    }
.end annotation


# static fields
.field public static final DETECT_DIRECTION_MARGIN_DEGREE:F = 20.0f

.field private static final MATRIX_SIZE:I = 0x10

.field public static final SynchronizedObject:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String; = "RoundDetector"


# instance fields
.field public isLandscape:Z

.field private mAccelerometerValues:[F

.field public mCurrentDegreeLandscape:I

.field public mCurrentDegreePortrait:I

.field public mDirection:I

.field private mEndDegreeRange:Lcom/android/camera/panorama/RoundDetector$LoopRange;

.field private final mI:[F

.field private final mInR:[F

.field public mIsEndOk:Z

.field private mMagneticValues:[F

.field private final mOutR:[F

.field private mStartDegree:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/panorama/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/panorama/RoundDetector;->emptyRange()Lcom/android/camera/panorama/RoundDetector$LoopRange;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/panorama/RoundDetector;->mEndDegreeRange:Lcom/android/camera/panorama/RoundDetector$LoopRange;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/android/camera/panorama/RoundDetector;->mDirection:I

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, Lcom/android/camera/panorama/RoundDetector;->mInR:[F

    new-array v1, v0, [F

    .line 5
    iput-object v1, p0, Lcom/android/camera/panorama/RoundDetector;->mOutR:[F

    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lcom/android/camera/panorama/RoundDetector;->mI:[F

    const/4 v0, 0x0

    new-array v1, v0, [F

    .line 7
    iput-object v1, p0, Lcom/android/camera/panorama/RoundDetector;->mMagneticValues:[F

    new-array v0, v0, [F

    .line 8
    iput-object v0, p0, Lcom/android/camera/panorama/RoundDetector;->mAccelerometerValues:[F

    return-void
.end method

.method private static correctionCircleDegree(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degree"
        }
    .end annotation

    const/16 v0, 0x168

    if-gez p0, :cond_0

    add-int/2addr p0, v0

    return p0

    :cond_0
    if-ge v0, p0, :cond_1

    sub-int/2addr p0, v0

    :cond_1
    return p0
.end method

.method private emptyRange()Lcom/android/camera/panorama/RoundDetector$LoopRange;
    .locals 2

    .line 1
    new-instance p0, Lcom/android/camera/panorama/RoundDetector$LoopRange;

    const/4 v0, -0x1

    const/16 v1, 0x168

    invoke-direct {p0, v0, v0, v1}, Lcom/android/camera/panorama/RoundDetector$LoopRange;-><init>(III)V

    return-object p0
.end method

.method public static radianToDegree(F)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radian"
        }
    .end annotation

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method


# virtual methods
.method public currentDegree()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/panorama/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/panorama/RoundDetector;->isLandscape:Z

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/android/camera/panorama/RoundDetector;->mCurrentDegreeLandscape:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/panorama/RoundDetector;->mCurrentDegreePortrait:I

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public currentDegree0Base()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/panorama/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/panorama/RoundDetector;->currentDegree()I

    move-result v1

    .line 3
    iget p0, p0, Lcom/android/camera/panorama/RoundDetector;->mDirection:I

    if-eqz p0, :cond_0

    rsub-int v1, v1, 0x168

    .line 4
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public detect()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/panorama/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/panorama/RoundDetector;->mIsEndOk:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_0
    iget v1, p0, Lcom/android/camera/panorama/RoundDetector;->mDirection:I

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 5
    iget v1, p0, Lcom/android/camera/panorama/RoundDetector;->mStartDegree:I

    invoke-virtual {p0}, Lcom/android/camera/panorama/RoundDetector;->currentDegree()I

    move-result p0

    if-lt v1, p0, :cond_1

    move v2, v3

    :cond_1
    monitor-exit v0

    return v2

    .line 6
    :cond_2
    iget v1, p0, Lcom/android/camera/panorama/RoundDetector;->mStartDegree:I

    invoke-virtual {p0}, Lcom/android/camera/panorama/RoundDetector;->currentDegree()I

    move-result p0

    if-gt v1, p0, :cond_3

    move v2, v3

    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sensor",
            "accuracy"
        }
    .end annotation

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/android/camera/panorama/RoundDetector;->mMagneticValues:[F

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/android/camera/panorama/RoundDetector;->mAccelerometerValues:[F

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/android/camera/panorama/RoundDetector;->mMagneticValues:[F

    array-length v0, p1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/panorama/RoundDetector;->mAccelerometerValues:[F

    array-length v2, v0

    if-gtz v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/android/camera/panorama/RoundDetector;->mInR:[F

    iget-object v3, p0, Lcom/android/camera/panorama/RoundDetector;->mI:[F

    invoke-static {v2, v3, v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    const/4 p1, 0x3

    new-array v0, p1, [F

    .line 6
    iget-object v2, p0, Lcom/android/camera/panorama/RoundDetector;->mInR:[F

    const/16 v3, 0x81

    iget-object v4, p0, Lcom/android/camera/panorama/RoundDetector;->mOutR:[F

    invoke-static {v2, p1, v3, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 7
    iget-object v2, p0, Lcom/android/camera/panorama/RoundDetector;->mOutR:[F

    invoke-static {v2, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v2, 0x0

    .line 8
    aget v3, v0, v2

    invoke-static {v3}, Lcom/android/camera/panorama/RoundDetector;->radianToDegree(F)I

    move-result v3

    if-gez v3, :cond_3

    add-int/lit16 v3, v3, 0x168

    .line 9
    :cond_3
    iget-object v4, p0, Lcom/android/camera/panorama/RoundDetector;->mInR:[F

    iget-object v5, p0, Lcom/android/camera/panorama/RoundDetector;->mOutR:[F

    invoke-static {v4, v1, p1, v5}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 10
    iget-object p1, p0, Lcom/android/camera/panorama/RoundDetector;->mOutR:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 11
    aget p1, v0, v2

    invoke-static {p1}, Lcom/android/camera/panorama/RoundDetector;->radianToDegree(F)I

    move-result p1

    if-gez p1, :cond_4

    add-int/lit16 p1, p1, 0x168

    .line 12
    :cond_4
    sget-object v0, Lcom/android/camera/panorama/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iput v3, p0, Lcom/android/camera/panorama/RoundDetector;->mCurrentDegreeLandscape:I

    .line 14
    iput p1, p0, Lcom/android/camera/panorama/RoundDetector;->mCurrentDegreePortrait:I

    .line 15
    iget-object p1, p0, Lcom/android/camera/panorama/RoundDetector;->mEndDegreeRange:Lcom/android/camera/panorama/RoundDetector$LoopRange;

    invoke-virtual {p0}, Lcom/android/camera/panorama/RoundDetector;->currentDegree()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/panorama/RoundDetector$LoopRange;->contains(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/panorama/RoundDetector;->mIsEndOk:Z

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public setStartPosition(IIFFZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rotation",
            "direction",
            "wideH",
            "wideV",
            "make360"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    .line 1
    :goto_1
    iput-boolean p1, p0, Lcom/android/camera/panorama/RoundDetector;->isLandscape:Z

    if-eqz p1, :cond_2

    float-to-int p1, p3

    goto :goto_2

    :cond_2
    float-to-int p1, p4

    .line 2
    :goto_2
    sget-object p3, Lcom/android/camera/panorama/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter p3

    if-eqz p5, :cond_3

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/panorama/RoundDetector;->currentDegree()I

    move-result p4

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_3
    if-nez p2, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/panorama/RoundDetector;->currentDegree()I

    move-result p4

    add-int/lit8 p5, p1, -0x14

    add-int/2addr p4, p5

    invoke-static {p4}, Lcom/android/camera/panorama/RoundDetector;->correctionCircleDegree(I)I

    move-result p4

    goto :goto_3

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/panorama/RoundDetector;->currentDegree()I

    move-result p4

    add-int/lit8 p5, p1, -0x14

    sub-int/2addr p4, p5

    invoke-static {p4}, Lcom/android/camera/panorama/RoundDetector;->correctionCircleDegree(I)I

    move-result p4

    :goto_3
    const/4 p5, 0x2

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_5

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/panorama/RoundDetector;->mIsEndOk:Z

    .line 7
    invoke-direct {p0}, Lcom/android/camera/panorama/RoundDetector;->emptyRange()Lcom/android/camera/panorama/RoundDetector$LoopRange;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/panorama/RoundDetector;->mEndDegreeRange:Lcom/android/camera/panorama/RoundDetector$LoopRange;

    const-string p0, "RoundDetector"

    const-string p1, "Unsupported Direction."

    new-array p2, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    monitor-exit p3

    return-void

    :cond_5
    mul-int/lit8 v2, p1, 0x3

    .line 10
    div-int/2addr v2, p5

    sub-int v2, p4, v2

    goto :goto_4

    :cond_6
    add-int v2, p4, p1

    .line 11
    :goto_4
    div-int/2addr p1, p5

    add-int/2addr p1, v2

    .line 12
    invoke-static {v2}, Lcom/android/camera/panorama/RoundDetector;->correctionCircleDegree(I)I

    move-result v2

    .line 13
    invoke-static {p1}, Lcom/android/camera/panorama/RoundDetector;->correctionCircleDegree(I)I

    move-result p1

    const/16 v3, 0x168

    if-nez p2, :cond_8

    if-ge v2, p4, :cond_7

    move v2, v3

    .line 14
    :cond_7
    new-instance v4, Lcom/android/camera/panorama/RoundDetector$LoopRangeLeft;

    invoke-direct {v4, v2, p1, v3}, Lcom/android/camera/panorama/RoundDetector$LoopRangeLeft;-><init>(III)V

    iput-object v4, p0, Lcom/android/camera/panorama/RoundDetector;->mEndDegreeRange:Lcom/android/camera/panorama/RoundDetector$LoopRange;

    goto :goto_5

    :cond_8
    if-ge p4, p1, :cond_9

    move p1, v1

    .line 15
    :cond_9
    new-instance v4, Lcom/android/camera/panorama/RoundDetector$LoopRange;

    invoke-direct {v4, v2, p1, v3}, Lcom/android/camera/panorama/RoundDetector$LoopRange;-><init>(III)V

    iput-object v4, p0, Lcom/android/camera/panorama/RoundDetector;->mEndDegreeRange:Lcom/android/camera/panorama/RoundDetector$LoopRange;

    .line 16
    :goto_5
    iput p2, p0, Lcom/android/camera/panorama/RoundDetector;->mDirection:I

    .line 17
    iput p4, p0, Lcom/android/camera/panorama/RoundDetector;->mStartDegree:I

    .line 18
    iput-boolean v1, p0, Lcom/android/camera/panorama/RoundDetector;->mIsEndOk:Z

    const-string p1, "RoundDetector"

    .line 19
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p4, "%s, start:%d(>>%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/panorama/RoundDetector;->mEndDegreeRange:Lcom/android/camera/panorama/RoundDetector$LoopRange;

    aput-object v3, v2, v1

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/panorama/RoundDetector;->currentDegree()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    iget p0, p0, Lcom/android/camera/panorama/RoundDetector;->mStartDegree:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, p5

    .line 21
    invoke-static {p2, p4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    monitor-exit p3

    return-void

    :goto_6
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 0

    return-void
.end method
