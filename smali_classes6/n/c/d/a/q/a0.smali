.class public Ln/c/d/a/q/a0;
.super Ln/c/d/a/q/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln/c/d/a/q/a0$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "ilst"


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ln/c/d/a/q/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ln/c/d/a/j;


# direct methods
.method public constructor <init>(Ln/c/d/a/q/z;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ln/c/d/a/q/c;-><init>(Ln/c/d/a/q/z;)V

    .line 2
    new-instance p1, Ln/c/d/a/q/c1;

    new-instance v0, Ln/c/d/a/q/a0$a;

    invoke-direct {v0}, Ln/c/d/a/q/a0$a;-><init>()V

    invoke-direct {p1, v0}, Ln/c/d/a/q/c1;-><init>(Ln/c/d/a/d;)V

    iput-object p1, p0, Ln/c/d/a/q/a0;->e:Ln/c/d/a/j;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ln/c/d/a/q/a0;->d:Ljava/util/Map;

    return-void
.end method

.method public static m(Ljava/util/Map;)Ln/c/d/a/q/a0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ln/c/d/a/q/c;",
            ">;>;)",
            "Ln/c/d/a/q/a0;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln/c/d/a/q/a0;

    const-string v1, "ilst"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ln/c/d/a/q/z;->a(Ljava/lang/String;J)Ln/c/d/a/q/z;

    move-result-object v1

    invoke-direct {v0, v1}, Ln/c/d/a/q/a0;-><init>(Ln/c/d/a/q/z;)V

    .line 2
    iput-object p0, v0, Ln/c/d/a/q/a0;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    const-string v0, "ilst"

    return-object v0
.end method


# virtual methods
.method public c(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    iget-object p0, p0, Ln/c/d/a/q/a0;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln/c/d/a/q/c;

    .line 6
    invoke-virtual {v2, p1}, Ln/c/d/a/q/c;->l(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()I
    .locals 4

    .line 1
    iget-object p0, p0, Ln/c/d/a/q/a0;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 v0, 0x8

    move v1, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/c/d/a/q/c;

    .line 3
    invoke-virtual {v3}, Ln/c/d/a/q/c;->e()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method public h(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    sub-int/2addr v0, v1

    .line 3
    invoke-static {p1, v0}, Ln/c/c/i/c;->k(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v3, p0, Ln/c/d/a/q/a0;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {v0}, Ln/c/d/a/q/z;->h(Ljava/nio/ByteBuffer;)Ln/c/d/a/q/z;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Ln/c/d/a/q/z;->c()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 10
    invoke-virtual {v1}, Ln/c/d/a/q/z;->c()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v0, v3}, Ln/c/c/i/c;->k(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Ln/c/d/a/q/a0;->e:Ln/c/d/a/j;

    invoke-static {v3, v1, v4}, Ln/c/d/a/q/c;->i(Ljava/nio/ByteBuffer;Ln/c/d/a/q/z;Ln/c/d/a/j;)Ln/c/d/a/q/c;

    move-result-object v1

    .line 11
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public o()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ln/c/d/a/q/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Ln/c/d/a/q/a0;->d:Ljava/util/Map;

    return-object p0
.end method
