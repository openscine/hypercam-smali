.class public final synthetic Ld/d/a/t6/o4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic c:Ld/d/a/t6/o4/k;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/d/a/t6/o4/k;

    invoke-direct {v0}, Ld/d/a/t6/o4/k;-><init>()V

    sput-object v0, Ld/d/a/t6/o4/k;->c:Ld/d/a/t6/o4/k;

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

    check-cast p1, Ld/d/a/l7/g/c0;

    invoke-static {p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionProExtra;->lambda$onManuallyDataChanged$6(Ld/d/a/l7/g/c0;)V

    return-void
.end method
