.class public final Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/spherical/Projection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubMesh"
.end annotation


# static fields
.field public static final VIDEO_TEXTURE_ID:I


# instance fields
.field public final mode:I

.field public final textureCoords:[F

.field public final textureId:I

.field public final vertices:[F


# direct methods
.method public constructor <init>(I[F[FI)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    .line 3
    array-length p1, p2

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    array-length p1, p3

    int-to-long v2, p1

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->vertices:[F

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureCoords:[F

    .line 6
    iput p4, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->mode:I

    return-void
.end method


# virtual methods
.method public getVertexCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->vertices:[F

    array-length p0, p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method
