.class public Lcom/idb/device/CameraResource$CameraControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idb/device/CameraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraControl"
.end annotation


# static fields
.field public static final CMD_START_AUDIO:Ljava/lang/String; = "CMD_START_AUDIO"

.field public static final CMD_START_VIDEO:Ljava/lang/String; = "CMD_START_VIDEO"

.field public static final CMD_START_VIDEOANDAUDIO:Ljava/lang/String; = "CMD_START_VIDEOANDAUDIO"

.field public static final CMD_STOP_AUDIO:Ljava/lang/String; = "CMD_STOP_AUDIO"

.field public static final CMD_STOP_VIDEO:Ljava/lang/String; = "CMD_STOP_VIDEO"

.field public static final CMD_STOP_VIDEOANDAUDIO:Ljava/lang/String; = "CMD_STOP_VIDEOANDAUDIO"

.field public static final VIDEOQUALITY_1080P:I = 0x3

.field public static final VIDEOQUALITY_360P:I = 0x1

.field public static final VIDEOQUALITY_720P:I = 0x2

.field public static final VIDEOQUALITY_DEFAULT:I


# instance fields
.field private command:Ljava/lang/String;

.field public final synthetic this$0:Lcom/idb/device/CameraResource;

.field private videoQuality:I


# direct methods
.method public constructor <init>(Lcom/idb/device/CameraResource;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/idb/device/CameraResource$CameraControl;->this$0:Lcom/idb/device/CameraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/idb/device/CameraResource$CameraControl;->command:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/idb/device/CameraResource$CameraControl;->videoQuality:I

    return-void
.end method

.method public constructor <init>(Lcom/idb/device/CameraResource;Lorg/json/JSONObject;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/idb/device/CameraResource$CameraControl;->this$0:Lcom/idb/device/CameraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "command"

    .line 5
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idb/device/CameraResource$CameraControl;->command:Ljava/lang/String;

    const-string p1, "videoQuality"

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/idb/device/CameraResource$CameraControl;->videoQuality:I

    return-void
.end method

.method public static synthetic access$000(Lcom/idb/device/CameraResource$CameraControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/idb/device/CameraResource$CameraControl;->videoQuality:I

    return p0
.end method

.method public static synthetic access$002(Lcom/idb/device/CameraResource$CameraControl;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/idb/device/CameraResource$CameraControl;->videoQuality:I

    return p1
.end method

.method public static synthetic access$100(Lcom/idb/device/CameraResource$CameraControl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/idb/device/CameraResource$CameraControl;->command:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/idb/device/CameraResource$CameraControl;->command:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "command"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "videoQuality"

    .line 4
    iget p0, p0, Lcom/idb/device/CameraResource$CameraControl;->videoQuality:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CameraResource"

    const-string v1, ""

    .line 5
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method
