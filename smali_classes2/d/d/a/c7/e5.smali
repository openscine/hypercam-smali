.class public final synthetic Ld/d/a/c7/e5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Ld/d/a/c7/e8;

.field public final synthetic d:Z

.field public final synthetic f:Z

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Ld/d/a/c7/e8;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/d/a/c7/e5;->c:Ld/d/a/c7/e8;

    iput-boolean p2, p0, Ld/d/a/c7/e5;->d:Z

    iput-boolean p3, p0, Ld/d/a/c7/e5;->f:Z

    iput-boolean p4, p0, Ld/d/a/c7/e5;->g:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ld/d/a/c7/e5;->c:Ld/d/a/c7/e8;

    iget-boolean v1, p0, Ld/d/a/c7/e5;->d:Z

    iget-boolean v2, p0, Ld/d/a/c7/e5;->f:Z

    iget-boolean p0, p0, Ld/d/a/c7/e5;->g:Z

    check-cast p1, Ld/d/a/l7/g/q1;

    invoke-virtual {v0, v1, v2, p0, p1}, Ld/d/a/c7/e8;->Qk(ZZZLd/d/a/l7/g/q1;)V

    return-void
.end method
