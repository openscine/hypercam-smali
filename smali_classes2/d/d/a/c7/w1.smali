.class public final synthetic Ld/d/a/c7/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ld/d/a/c7/q7;

.field public final synthetic d:Lcom/android/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Ld/d/a/c7/q7;Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/d/a/c7/w1;->c:Ld/d/a/c7/q7;

    iput-object p2, p0, Ld/d/a/c7/w1;->d:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld/d/a/c7/w1;->c:Ld/d/a/c7/q7;

    iget-object p0, p0, Ld/d/a/c7/w1;->d:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Ld/d/a/c7/q7;->nm(Lcom/android/camera/Camera;)V

    return-void
.end method
