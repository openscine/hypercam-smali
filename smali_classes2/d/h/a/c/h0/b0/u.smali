.class public Ld/h/a/c/h0/b0/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/h/a/c/h0/b0/u$b;,
        Ld/h/a/c/h0/b0/u$c;,
        Ld/h/a/c/h0/b0/u$k;,
        Ld/h/a/c/h0/b0/u$g;,
        Ld/h/a/c/h0/b0/u$h;,
        Ld/h/a/c/h0/b0/u$j;,
        Ld/h/a/c/h0/b0/u$i;,
        Ld/h/a/c/h0/b0/u$f;,
        Ld/h/a/c/h0/b0/u$m;,
        Ld/h/a/c/h0/b0/u$e;,
        Ld/h/a/c/h0/b0/u$d;,
        Ld/h/a/c/h0/b0/u$l;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ld/h/a/c/h0/b0/u;->a:Ljava/util/HashSet;

    const/16 v0, 0xb

    new-array v1, v0, [Ljava/lang/Class;

    .line 2
    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Byte;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v4, Ljava/lang/Short;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-class v4, Ljava/lang/Character;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-class v4, Ljava/lang/Long;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-class v4, Ljava/lang/Float;

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-class v4, Ljava/lang/Double;

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-class v4, Ljava/lang/Number;

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-class v4, Ljava/math/BigDecimal;

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-class v4, Ljava/math/BigInteger;

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    aget-object v2, v1, v3

    .line 4
    sget-object v4, Ld/h/a/c/h0/b0/u;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Ld/h/a/c/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ld/h/a/c/k<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_0

    .line 3
    sget-object p0, Ld/h/a/c/h0/b0/u$i;->w:Ld/h/a/c/h0/b0/u$i;

    return-object p0

    .line 4
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_1

    .line 5
    sget-object p0, Ld/h/a/c/h0/b0/u$d;->w:Ld/h/a/c/h0/b0/u$d;

    return-object p0

    .line 6
    :cond_1
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_2

    .line 7
    sget-object p0, Ld/h/a/c/h0/b0/u$j;->w:Ld/h/a/c/h0/b0/u$j;

    return-object p0

    .line 8
    :cond_2
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_3

    .line 9
    sget-object p0, Ld/h/a/c/h0/b0/u$g;->w:Ld/h/a/c/h0/b0/u$g;

    return-object p0

    .line 10
    :cond_3
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_4

    .line 11
    sget-object p0, Ld/h/a/c/h0/b0/u$f;->w:Ld/h/a/c/h0/b0/u$f;

    return-object p0

    .line 12
    :cond_4
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_5

    .line 13
    sget-object p0, Ld/h/a/c/h0/b0/u$e;->w:Ld/h/a/c/h0/b0/u$e;

    return-object p0

    .line 14
    :cond_5
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_6

    .line 15
    sget-object p0, Ld/h/a/c/h0/b0/u$m;->w:Ld/h/a/c/h0/b0/u$m;

    return-object p0

    .line 16
    :cond_6
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_7

    .line 17
    sget-object p0, Ld/h/a/c/h0/b0/u$h;->w:Ld/h/a/c/h0/b0/u$h;

    return-object p0

    .line 18
    :cond_7
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_13

    .line 19
    sget-object p0, Ld/h/a/c/h0/b0/t;->n:Ld/h/a/c/h0/b0/t;

    return-object p0

    .line 20
    :cond_8
    sget-object v0, Ld/h/a/c/h0/b0/u;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 21
    const-class p1, Ljava/lang/Integer;

    if-ne p0, p1, :cond_9

    .line 22
    sget-object p0, Ld/h/a/c/h0/b0/u$i;->k0:Ld/h/a/c/h0/b0/u$i;

    return-object p0

    .line 23
    :cond_9
    const-class p1, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_a

    .line 24
    sget-object p0, Ld/h/a/c/h0/b0/u$d;->k0:Ld/h/a/c/h0/b0/u$d;

    return-object p0

    .line 25
    :cond_a
    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_b

    .line 26
    sget-object p0, Ld/h/a/c/h0/b0/u$j;->k0:Ld/h/a/c/h0/b0/u$j;

    return-object p0

    .line 27
    :cond_b
    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_c

    .line 28
    sget-object p0, Ld/h/a/c/h0/b0/u$g;->k0:Ld/h/a/c/h0/b0/u$g;

    return-object p0

    .line 29
    :cond_c
    const-class p1, Ljava/lang/Character;

    if-ne p0, p1, :cond_d

    .line 30
    sget-object p0, Ld/h/a/c/h0/b0/u$f;->k0:Ld/h/a/c/h0/b0/u$f;

    return-object p0

    .line 31
    :cond_d
    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_e

    .line 32
    sget-object p0, Ld/h/a/c/h0/b0/u$e;->k0:Ld/h/a/c/h0/b0/u$e;

    return-object p0

    .line 33
    :cond_e
    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_f

    .line 34
    sget-object p0, Ld/h/a/c/h0/b0/u$m;->k0:Ld/h/a/c/h0/b0/u$m;

    return-object p0

    .line 35
    :cond_f
    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_10

    .line 36
    sget-object p0, Ld/h/a/c/h0/b0/u$h;->k0:Ld/h/a/c/h0/b0/u$h;

    return-object p0

    .line 37
    :cond_10
    const-class p1, Ljava/lang/Number;

    if-ne p0, p1, :cond_11

    .line 38
    sget-object p0, Ld/h/a/c/h0/b0/u$k;->n:Ld/h/a/c/h0/b0/u$k;

    return-object p0

    .line 39
    :cond_11
    const-class p1, Ljava/math/BigDecimal;

    if-ne p0, p1, :cond_12

    .line 40
    sget-object p0, Ld/h/a/c/h0/b0/u$b;->n:Ld/h/a/c/h0/b0/u$b;

    return-object p0

    .line 41
    :cond_12
    const-class p1, Ljava/math/BigInteger;

    if-ne p0, p1, :cond_13

    .line 42
    sget-object p0, Ld/h/a/c/h0/b0/u$c;->n:Ld/h/a/c/h0/b0/u$c;

    return-object p0

    .line 43
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal error: can\'t find deserializer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method
