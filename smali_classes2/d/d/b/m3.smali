.class public final synthetic Ld/d/b/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic c:Ld/d/b/s4;


# direct methods
.method public synthetic constructor <init>(Ld/d/b/s4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/d/b/m3;->c:Ld/d/b/s4;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Ld/d/b/m3;->c:Ld/d/b/s4;

    invoke-virtual {p0, p1}, Ld/d/b/s4;->p4(Ljava/lang/Runnable;)V

    return-void
.end method
