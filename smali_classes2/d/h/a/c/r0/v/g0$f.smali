.class public Ld/h/a/c/r0/v/g0$f;
.super Ld/h/a/c/r0/v/g0$h;
.source "SourceFile"


# annotations
.annotation runtime Ld/h/a/c/f0/a;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/a/c/r0/v/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/h/a/c/r0/v/g0$h<",
        "[J>;"
    }
.end annotation


# static fields
.field private static final m:Ld/h/a/c/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ld/h/a/c/s0/n;->b0()Ld/h/a/c/s0/n;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ld/h/a/c/s0/n;->j0(Ljava/lang/Class;)Ld/h/a/c/j;

    move-result-object v0

    sput-object v0, Ld/h/a/c/r0/v/g0$f;->m:Ld/h/a/c/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, [J

    invoke-direct {p0, v0}, Ld/h/a/c/r0/v/g0$h;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ld/h/a/c/r0/v/g0$f;Ld/h/a/c/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ld/h/a/c/r0/v/g0$h;-><init>(Ld/h/a/c/r0/v/g0$h;Ld/h/a/c/d;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public N()Ld/h/a/c/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/h/a/c/o<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public O()Ld/h/a/c/j;
    .locals 0

    .line 1
    sget-object p0, Ld/h/a/c/r0/v/g0$f;->m:Ld/h/a/c/j;

    return-object p0
.end method

.method public bridge synthetic Q(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, [J

    invoke-virtual {p0, p1}, Ld/h/a/c/r0/v/g0$f;->V([J)Z

    move-result p0

    return p0
.end method

.method public T(Ld/h/a/c/d;Ljava/lang/Boolean;)Ld/h/a/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/h/a/c/d;",
            "Ljava/lang/Boolean;",
            ")",
            "Ld/h/a/c/o<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ld/h/a/c/r0/v/g0$f;

    invoke-direct {v0, p0, p1, p2}, Ld/h/a/c/r0/v/g0$f;-><init>(Ld/h/a/c/r0/v/g0$f;Ld/h/a/c/d;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public bridge synthetic U(Ljava/lang/Object;Ld/h/a/b/i;Ld/h/a/c/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, [J

    invoke-virtual {p0, p1, p2, p3}, Ld/h/a/c/r0/v/g0$f;->Y([JLd/h/a/b/i;Ld/h/a/c/e0;)V

    return-void
.end method

.method public V([J)Z
    .locals 0

    .line 1
    array-length p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public W(Ld/h/a/c/e0;[J)Z
    .locals 0

    .line 1
    array-length p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final X([JLd/h/a/b/i;Ld/h/a/c/e0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Ld/h/a/c/r0/v/a;->S(Ld/h/a/c/e0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ld/h/a/c/r0/v/g0$f;->Y([JLd/h/a/b/i;Ld/h/a/c/e0;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    array-length p3, p1

    invoke-virtual {p2, p1, p0, p3}, Ld/h/a/b/i;->Z([JII)V

    return-void
.end method

.method public Y([JLd/h/a/b/i;Ld/h/a/c/e0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length p0, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p0, :cond_0

    .line 2
    aget-wide v0, p1, p3

    invoke-virtual {p2, v0, v1}, Ld/h/a/b/i;->A0(J)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ld/h/a/c/e0;Ljava/lang/reflect/Type;)Ld/h/a/c/m;
    .locals 1

    const-string p1, "array"

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Ld/h/a/c/r0/v/m0;->u(Ljava/lang/String;Z)Ld/h/a/c/q0/u;

    move-result-object p1

    const-string v0, "number"

    .line 2
    invoke-virtual {p0, v0, p2}, Ld/h/a/c/r0/v/m0;->u(Ljava/lang/String;Z)Ld/h/a/c/q0/u;

    move-result-object p0

    const-string p2, "items"

    invoke-virtual {p1, p2, p0}, Ld/h/a/c/q0/u;->h2(Ljava/lang/String;Ld/h/a/c/m;)Ld/h/a/c/m;

    move-result-object p0

    return-object p0
.end method

.method public c(Ld/h/a/c/m0/g;Ld/h/a/c/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ld/h/a/c/l;
        }
    .end annotation

    .line 1
    sget-object v0, Ld/h/a/c/m0/d;->d:Ld/h/a/c/m0/d;

    invoke-virtual {p0, p1, p2, v0}, Ld/h/a/c/r0/v/m0;->E(Ld/h/a/c/m0/g;Ld/h/a/c/j;Ld/h/a/c/m0/d;)V

    return-void
.end method

.method public bridge synthetic h(Ld/h/a/c/e0;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Ld/h/a/c/r0/v/g0$f;->W(Ld/h/a/c/e0;[J)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic m(Ljava/lang/Object;Ld/h/a/b/i;Ld/h/a/c/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, [J

    invoke-virtual {p0, p1, p2, p3}, Ld/h/a/c/r0/v/g0$f;->X([JLd/h/a/b/i;Ld/h/a/c/e0;)V

    return-void
.end method
