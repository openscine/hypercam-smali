.class public final Ld/c/b/q1/d4;
.super Ld/c/b/q1/h3$a;
.source "SourceFile"


# static fields
.field public static final b:Ld/c/b/q1/d4;

.field public static final c:[B

.field public static final d:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld/c/b/q1/d4;

    invoke-direct {v0}, Ld/c/b/q1/d4;-><init>()V

    sput-object v0, Ld/c/b/q1/d4;->b:Ld/c/b/q1/d4;

    const-string v0, "[D"

    .line 2
    invoke-static {v0}, Ld/c/b/m;->S(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Ld/c/b/q1/d4;->c:[B

    .line 3
    invoke-static {v0}, Ld/c/b/p1/o;->a(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ld/c/b/q1/d4;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/c/b/q1/h3$a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ld/c/b/x0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    check-cast p2, [D

    invoke-virtual {p1, p2}, Ld/c/b/x0;->Z0([D)V

    return-void
.end method

.method public l(Ld/c/b/x0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p4}, Ld/c/b/x0;->P(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Ld/c/b/q1/d4;->c:[B

    sget-wide p3, Ld/c/b/q1/d4;->d:J

    invoke-virtual {p1, p0, p3, p4}, Ld/c/b/x0;->T1([BJ)Z

    .line 3
    :cond_0
    check-cast p2, [D

    invoke-virtual {p1, p2}, Ld/c/b/x0;->Z0([D)V

    return-void
.end method
