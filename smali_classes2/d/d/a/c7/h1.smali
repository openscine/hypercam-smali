.class public final synthetic Ld/d/a/c7/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Ld/d/a/c7/q7;

.field public final synthetic d:Z

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Ld/d/a/c7/q7;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/d/a/c7/h1;->c:Ld/d/a/c7/q7;

    iput-boolean p2, p0, Ld/d/a/c7/h1;->d:Z

    iput-boolean p3, p0, Ld/d/a/c7/h1;->f:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ld/d/a/c7/h1;->c:Ld/d/a/c7/q7;

    iget-boolean v1, p0, Ld/d/a/c7/h1;->d:Z

    iget-boolean p0, p0, Ld/d/a/c7/h1;->f:Z

    check-cast p1, Ld/d/a/l7/g/q1;

    invoke-virtual {v0, v1, p0, p1}, Ld/d/a/c7/q7;->zn(ZZLd/d/a/l7/g/q1;)V

    return-void
.end method
