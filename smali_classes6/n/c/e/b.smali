.class public Ln/c/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ln/c/c/i/d;Ln/c/e/c;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/c/c/i/d;",
            "Ln/c/e/c;",
            ")",
            "Ljava/util/List<",
            "Ln/c/c/h$c<",
            "Ln/c/d/a/k$a;",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ln/c/e/b;->e(Ln/c/c/i/d;)Ln/c/d/a/k$a;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ln/c/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1, v0}, Ln/c/e/b;->c(Ln/c/c/i/d;Ln/c/d/a/k$a;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    invoke-direct {p0, v1}, Ln/c/e/b;->g(Ljava/nio/ByteBuffer;)Ln/c/d/a/q/c;

    move-result-object v2

    check-cast v2, Ln/c/d/a/q/j0;

    .line 5
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const-string v4, "mvex"

    .line 6
    invoke-static {v2, v4}, Ln/c/d/a/c;->b(Ln/c/d/a/q/s0;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 7
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 8
    invoke-direct {p0, p1}, Ln/c/e/b;->d(Ln/c/c/i/d;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln/c/d/a/k$a;

    .line 9
    invoke-direct {p0, p1, v7}, Ln/c/e/b;->c(Ln/c/c/i/d;Ln/c/d/a/k$a;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 10
    invoke-static {v7, v8}, Ln/c/c/h;->x(Ljava/lang/Object;Ljava/lang/Object;)Ln/c/c/h$c;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-direct {p0, v8}, Ln/c/e/b;->g(Ljava/nio/ByteBuffer;)Ln/c/d/a/q/c;

    move-result-object v7

    check-cast v7, Ln/c/d/a/q/m0;

    .line 12
    invoke-virtual {v7, v2}, Ln/c/d/a/q/m0;->J(Ln/c/d/a/q/j0;)V

    .line 13
    invoke-static {v8, v7}, Ln/c/c/h;->x(Ljava/lang/Object;Ljava/lang/Object;)Ln/c/c/h$c;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v4}, Ln/c/c/h;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v6, 0x0

    new-array v6, v6, [Ln/c/d/a/q/m0;

    invoke-interface {p1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ln/c/d/a/q/m0;

    invoke-interface {p2, v2, p1}, Ln/c/e/c;->b(Ln/c/d/a/q/j0;[Ln/c/d/a/q/m0;)V

    .line 15
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln/c/c/h$c;

    .line 16
    iget-object v4, p2, Ln/c/c/h$c;->a:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget-object p2, p2, Ln/c/c/h$c;->b:Ljava/lang/Object;

    check-cast p2, Ln/c/d/a/q/c;

    invoke-direct {p0, v4, p2}, Ln/c/e/b;->j(Ljava/nio/ByteBuffer;Ln/c/d/a/q/c;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v5

    .line 17
    :cond_2
    invoke-interface {p2, v2}, Ln/c/e/c;->a(Ln/c/d/a/q/j0;)V

    .line 18
    :cond_3
    invoke-direct {p0, v1, v2}, Ln/c/e/b;->j(Ljava/nio/ByteBuffer;Ln/c/d/a/q/c;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v5

    .line 19
    :cond_4
    invoke-static {v0, v1}, Ln/c/c/h;->x(Ljava/lang/Object;Ljava/lang/Object;)Ln/c/c/h$c;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method private c(Ln/c/c/i/d;Ln/c/d/a/k$a;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ln/c/d/a/k$a;->d()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ln/c/c/i/d;->setPosition(J)Ln/c/c/i/d;

    .line 2
    invoke-virtual {p2}, Ln/c/d/a/k$a;->c()Ln/c/d/a/q/z;

    move-result-object p0

    invoke-virtual {p0}, Ln/c/d/a/q/z;->e()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p1, p0}, Ln/c/c/i/c;->e(Ljava/nio/channels/ReadableByteChannel;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private d(Ln/c/c/i/d;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/c/c/i/d;",
            ")",
            "Ljava/util/List<",
            "Ln/c/d/a/k$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-static {p1}, Ln/c/d/a/k;->k(Ln/c/c/i/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/c/d/a/k$a;

    .line 3
    invoke-virtual {v0}, Ln/c/d/a/k$a;->c()Ln/c/d/a/q/z;

    move-result-object v1

    invoke-virtual {v1}, Ln/c/d/a/q/z;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "moof"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private e(Ln/c/c/i/d;)Ln/c/d/a/k$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ln/c/d/a/k;->k(Ln/c/c/i/d;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln/c/d/a/k$a;

    .line 2
    invoke-virtual {p1}, Ln/c/d/a/k$a;->c()Ln/c/d/a/q/z;

    move-result-object v0

    invoke-virtual {v0}, Ln/c/d/a/q/z;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moov"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private g(Ljava/nio/ByteBuffer;)Ln/c/d/a/q/c;
    .locals 1

    .line 1
    invoke-static {p1}, Ln/c/d/a/q/z;->h(Ljava/nio/ByteBuffer;)Ln/c/d/a/q/z;

    move-result-object p0

    .line 2
    invoke-static {}, Ln/c/d/a/b;->b()Ln/c/d/a/j;

    move-result-object v0

    invoke-static {p1, p0, v0}, Ln/c/d/a/c;->d(Ljava/nio/ByteBuffer;Ln/c/d/a/q/z;Ln/c/d/a/j;)Ln/c/d/a/q/c;

    move-result-object p0

    return-object p0
.end method

.method private i(Ln/c/c/i/d;Ln/c/d/a/k$a;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ln/c/d/a/k$a;->d()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ln/c/c/i/d;->setPosition(J)Ln/c/c/i/d;

    .line 2
    invoke-interface {p1, p3}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private j(Ljava/nio/ByteBuffer;Ln/c/d/a/q/c;)Z
    .locals 3

    const/4 p0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2
    invoke-virtual {p2, p1}, Ln/c/d/a/q/c;->l(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/16 v1, 0x8

    if-ge p2, v1, :cond_0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p2, 0x4

    new-array p2, p2, [B

    const/16 v1, 0x66

    aput-byte v1, p2, p0

    const/16 v1, 0x72

    aput-byte v1, p2, v0

    const/4 v1, 0x2

    const/16 v2, 0x65

    aput-byte v2, p2, v1

    const/4 v1, 0x3

    aput-byte v2, p2, v1

    .line 6
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return p0
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;Ln/c/e/c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Ln/c/c/i/c;->s(Ljava/io/File;)Ln/c/c/i/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {p2}, Ln/c/c/i/c;->x(Ljava/io/File;)Ln/c/c/i/a;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, p3}, Ln/c/e/b;->b(Ln/c/c/i/d;Ln/c/e/c;)Ljava/util/List;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Ln/c/c/i/c;->b(Ljava/io/Closeable;)V

    .line 5
    invoke-static {v0}, Ln/c/c/i/c;->b(Ljava/io/Closeable;)V

    return p0

    .line 6
    :cond_0
    :try_start_2
    new-instance p3, Ln/c/e/b$a;

    invoke-direct {p3, p0}, Ln/c/e/b$a;-><init>(Ln/c/e/b;)V

    invoke-static {p2, p3}, Ln/c/c/h;->e(Ljava/util/List;Ln/c/c/h$a;)Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-static {p0}, Ln/c/c/h;->w(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    .line 8
    invoke-static {p1}, Ln/c/d/a/k;->k(Ln/c/c/i/d;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln/c/d/a/k$a;

    .line 9
    invoke-virtual {p3}, Ln/c/d/a/k$a;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v0, v1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p3, p1, v0}, Ln/c/d/a/k$a;->b(Ln/c/c/i/d;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v0

    .line 12
    :goto_2
    invoke-static {v0}, Ln/c/c/i/c;->b(Ljava/io/Closeable;)V

    .line 13
    invoke-static {p1}, Ln/c/c/i/c;->b(Ljava/io/Closeable;)V

    throw p0
.end method

.method public f(Ljava/io/File;Ln/c/e/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Ln/c/c/i/c;->t(Ljava/io/File;)Ln/c/c/i/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-direct {p0, p1, p2}, Ln/c/e/b;->b(Ln/c/c/i/d;Ln/c/e/c;)Ljava/util/List;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Ln/c/c/i/c;->b(Ljava/io/Closeable;)V

    return p0

    .line 4
    :cond_0
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/c/c/h$c;

    .line 5
    iget-object v1, v0, Ln/c/c/h$c;->a:Ljava/lang/Object;

    check-cast v1, Ln/c/d/a/k$a;

    iget-object v0, v0, Ln/c/c/h$c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, v1, v0}, Ln/c/e/b;->i(Ln/c/c/i/d;Ln/c/d/a/k$a;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    .line 6
    :goto_2
    invoke-static {p1}, Ln/c/c/i/c;->b(Ljava/io/Closeable;)V

    throw p0
.end method

.method public h(Ljava/io/File;Ln/c/e/c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Ln/c/e/b;->a(Ljava/io/File;Ljava/io/File;Ln/c/e/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
