.class public Ld/d/a/c7/m8/b/ga$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mediaprocess/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/d/a/c7/m8/b/ga;->s0(Ld/d/a/v7/b0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/d/a/c7/m8/b/ga;


# direct methods
.method public constructor <init>(Ld/d/a/c7/m8/b/ga;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld/d/a/c7/m8/b/ga$h;->a:Ld/d/a/c7/m8/b/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveFailed()V
    .locals 3
    .annotation build Ld/d/a/w6/c;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LiveSubVVImpl"

    const-string v2, "ComposeCameraRecord OnReceiveFailed"

    .line 1
    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Ld/d/a/c7/m8/b/ga$h;->a:Ld/d/a/c7/m8/b/ga;

    invoke-static {p0}, Ld/d/a/c7/m8/b/ga;->u0(Ld/d/a/c7/m8/b/ga;)Ld/d/a/k6/f/n;

    move-result-object p0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ld/d/a/k6/f/n;->k(I)V

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LiveSubVVImpl"

    const-string v2, "ComposeCameraRecord OnReceiveFinish"

    .line 1
    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Ld/d/a/c7/m8/b/ga$h;->a:Ld/d/a/c7/m8/b/ga;

    invoke-static {p0}, Ld/d/a/c7/m8/b/ga;->u0(Ld/d/a/c7/m8/b/ga;)Ld/d/a/k6/f/n;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ld/d/a/k6/f/n;->k(I)V

    return-void
.end method
