.class public final Ld/c/b/n1/t;
.super Ld/c/b/n1/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ld/c/b/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ld/c/b/n1/r;-><init>(Ld/c/b/p;)V

    return-void
.end method


# virtual methods
.method public I(Ljava/lang/Object;)Ld/c/b/n1/b0;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Ld/c/b/n1/r;->c:Ld/c/b/n1/b0;

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ld/c/b/n1/b0;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ld/c/b/n1/r$b;->c:Ld/c/b/n1/r$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "expect type %s, but %s"

    invoke-direct {p0, v2, p1, v0}, Ld/c/b/n1/b0;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Ld/c/b/n1/t;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Ld/c/b/n1/t;

    .line 3
    iget-object v2, p0, Ld/c/b/n1/r;->m:Ljava/lang/String;

    iget-object v3, p1, Ld/c/b/n1/r;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Ld/c/b/n1/r;->n:Ljava/lang/String;

    iget-object p1, p1, Ld/c/b/n1/r;->n:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Ld/c/b/n1/r;->m:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Ld/c/b/n1/r;->n:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public m()Ld/c/b/n1/r$b;
    .locals 0

    .line 1
    sget-object p0, Ld/c/b/n1/r$b;->c:Ld/c/b/n1/r$b;

    return-object p0
.end method
