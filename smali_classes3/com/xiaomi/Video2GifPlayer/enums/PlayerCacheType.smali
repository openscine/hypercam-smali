.class public final enum Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

.field public static final enum PlayerCacheAll:Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

.field public static final enum PlayerCacheFile:Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

.field public static final enum PlayerCacheMemory:Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

.field public static final enum PlayerCacheNo:Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;


# instance fields
.field private nCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    const-string v1, "PlayerCacheNo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;->PlayerCacheNo:Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    .line 2
    new-instance v1, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    const-string v3, "PlayerCacheFile"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;->PlayerCacheFile:Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    .line 3
    new-instance v3, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    const-string v5, "PlayerCacheMemory"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;->PlayerCacheMemory:Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    .line 4
    new-instance v5, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    const-string v7, "PlayerCacheAll"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;->PlayerCacheAll:Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;->$VALUES:[Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;
    .locals 6

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;->PlayerCacheNo:Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    .line 2
    invoke-static {}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;->values()[Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;->$VALUES:[Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    invoke-virtual {v0}, [Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerCacheType;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
