.class public Lcom/android/camera/panorama/direction/UpDirectionFunction;
.super Lcom/android/camera/panorama/direction/DirectionFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIIIFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputWidth",
            "inputHeight",
            "maxWidth",
            "maxHeight",
            "scale",
            "angle"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/panorama/direction/DirectionFunction;-><init>(IIIIFI)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mDirection:I

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0
    .annotation build Ld/d/a/w6/c;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/panorama/direction/DirectionFunction;->getVerticalPreviewSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method
