.class public final synthetic Ld/o/t/a/b/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Ld/o/t/a/b/p3;

.field public final synthetic d:Landroid/util/Range;


# direct methods
.method public synthetic constructor <init>(Ld/o/t/a/b/p3;Landroid/util/Range;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/t/a/b/h0;->c:Ld/o/t/a/b/p3;

    iput-object p2, p0, Ld/o/t/a/b/h0;->d:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ld/o/t/a/b/h0;->c:Ld/o/t/a/b/p3;

    iget-object p0, p0, Ld/o/t/a/b/h0;->d:Landroid/util/Range;

    check-cast p1, Ld/d/b/f4;

    invoke-virtual {v0, p0, p1}, Ld/o/t/a/b/p3;->Un(Landroid/util/Range;Ld/d/b/f4;)V

    return-void
.end method
