.class public final synthetic Ld/d/a/a7/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic c:Ld/d/a/a7/t;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/d/a/a7/t;

    invoke-direct {v0}, Ld/d/a/a7/t;-><init>()V

    sput-object v0, Ld/d/a/a7/t;->c:Ld/d/a/a7/t;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/litegallery/GalleryContainerManager$a;

    invoke-static {p1}, Lcom/android/camera/litegallery/GalleryContainerManager;->t(Lcom/android/camera/litegallery/GalleryContainerManager$a;)V

    return-void
.end method
