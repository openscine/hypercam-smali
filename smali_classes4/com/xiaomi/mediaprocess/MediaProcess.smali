.class public Lcom/xiaomi/mediaprocess/MediaProcess;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mediaprocess/MediaProcess$Callback;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "MediaProcess"

.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "com.videofilter.basic"

    const-string v1, "com.videofilter.sweet"

    const-string v2, "com.videofilter.crema"

    const-string v3, "com.videofilter.nashville"

    const-string v4, "com.videofilter.aden"

    const-string v5, "com.videofilter.gingham"

    const-string v6, "com.videofilter.stinson"

    const-string v7, "com.videofilter.clarendon"

    const-string v8, "com.videofilter.juno"

    const-string v9, "com.videofilter.dogpatch"

    const-string v10, "com.videofilter.gray"

    .line 1
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native AddGrayscaleFilterJni()I
.end method

.method private static native AddMotionFlowFilterJni()I
.end method

.method private static native AddMp3MixFilterJni(Ljava/lang/String;JJFFJ)I
.end method

.method private static native AddPhotoFilterJni(Ljava/lang/String;F)I
.end method

.method private static native AddPngMixFilterJni(Ljava/lang/String;FFFF)I
.end method

.method private static native AddRotateFilterJni(I)I
.end method

.method private static native AddScaleFilterJni(II)I
.end method

.method private static native AddShakeFilterJni()I
.end method

.method private static native AddSobelEdgeDetectionFilterJni()I
.end method

.method private static native AddSoulFilterJni()I
.end method

.method private static native AddVideoMapFilterJni(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native ConvertJni(Ljava/lang/String;JLjava/lang/String;ZIIJJFLcom/xiaomi/mediaprocess/MediaProcess$Callback;)I
.end method

.method public static a()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "AddGrayscaleFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/mediaprocess/MediaProcess;->AddGrayscaleFilterJni()I

    move-result v0

    return v0
.end method

.method public static b()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "AddMotionFlowFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/mediaprocess/MediaProcess;->AddMotionFlowFilterJni()I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;JJFFJ)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "AddMp3MixFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static/range {p0 .. p8}, Lcom/xiaomi/mediaprocess/MediaProcess;->AddMp3MixFilterJni(Ljava/lang/String;JJFFJ)I

    move-result p0

    return p0
.end method

.method private static native cancelmediaconvertJni(Ljava/lang/String;)I
.end method

.method public static d(Ljava/lang/String;F)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "AddPhotoFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/mediaprocess/MediaProcess;->AddPhotoFilterJni(Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;FFFF)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "AddPngMixFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/mediaprocess/MediaProcess;->AddPngMixFilterJni(Ljava/lang/String;FFFF)I

    move-result p0

    return p0
.end method

.method public static f(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "AddRotateFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/xiaomi/mediaprocess/MediaProcess;->AddRotateFilterJni(I)I

    move-result p0

    return p0
.end method

.method public static g(II)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "AddScaleFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/mediaprocess/MediaProcess;->AddScaleFilterJni(II)I

    move-result p0

    return p0
.end method

.method public static h()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "AddShakeFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/mediaprocess/MediaProcess;->AddShakeFilterJni()I

    move-result v0

    return v0
.end method

.method public static i()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "AddSobeEdgeDetectionFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/mediaprocess/MediaProcess;->AddSobelEdgeDetectionFilterJni()I

    move-result v0

    return v0
.end method

.method public static j()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "AddSoulFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/mediaprocess/MediaProcess;->AddSoulFilterJni()I

    move-result v0

    return v0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "AddVideoMapFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mediaprocess/MediaProcess;->AddVideoMapFilterJni(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/String;JLjava/lang/String;ZIIJJFLcom/xiaomi/mediaprocess/MediaProcess$Callback;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "Convert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static/range {p0 .. p12}, Lcom/xiaomi/mediaprocess/MediaProcess;->ConvertJni(Ljava/lang/String;JLjava/lang/String;ZIIJJFLcom/xiaomi/mediaprocess/MediaProcess$Callback;)I

    move-result p0

    return p0
.end method

.method public static m(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "cancel mediaconvert "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/xiaomi/mediaprocess/MediaProcess;->cancelmediaconvertJni(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static native mediaconvertJni(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;FLjava/lang/String;FFFFZ[Lcom/xiaomi/mediaprocess/PngShowInfo;DIJJFLjava/lang/String;JJFFLcom/xiaomi/mediaprocess/MediaProcess$Callback;)I
.end method

.method public static n(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;FLjava/lang/String;FFFFZ[Lcom/xiaomi/mediaprocess/PngShowInfo;DIJJFLjava/lang/String;JJFFLcom/xiaomi/mediaprocess/MediaProcess$Callback;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->a:Ljava/lang/String;

    const-string v1, "mediaconvert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static/range {p0 .. p28}, Lcom/xiaomi/mediaprocess/MediaProcess;->mediaconvertJni(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;FLjava/lang/String;FFFFZ[Lcom/xiaomi/mediaprocess/PngShowInfo;DIJJFLjava/lang/String;JJFFLcom/xiaomi/mediaprocess/MediaProcess$Callback;)I

    move-result v0

    return v0
.end method
