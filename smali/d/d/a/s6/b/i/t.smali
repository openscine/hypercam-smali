.class public final synthetic Ld/d/a/s6/b/i/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ld/d/a/s6/b/i/t;->c:Z

    iput-boolean p2, p0, Ld/d/a/s6/b/i/t;->d:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Ld/d/a/s6/b/i/t;->c:Z

    iget-boolean p0, p0, Ld/d/a/s6/b/i/t;->d:Z

    check-cast p1, Ld/d/a/l7/g/q1;

    invoke-static {v0, p0, p1}, Ld/d/a/s6/b/i/c0;->cq(ZZLd/d/a/l7/g/q1;)V

    return-void
.end method
