.class public Lcom/faceunity/pta_helper/gif/GifImage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final delayMs:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/GifImage;->bitmap:Landroid/graphics/Bitmap;

    .line 3
    iput p2, p0, Lcom/faceunity/pta_helper/gif/GifImage;->delayMs:I

    return-void
.end method
