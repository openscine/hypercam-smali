.class public Lcb/u$e;
.super Lcb/u$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcb/u$l<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation

.annotation runtime Lya/a;
.end annotation


# static fields
.field public static final k:J = 0x1L

.field public static final l:Lcb/u$e;

.field public static final m:Lcb/u$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcb/u$e;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcb/u$e;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    sput-object v0, Lcb/u$e;->l:Lcb/u$e;

    new-instance v0, Lcb/u$e;

    const-class v1, Ljava/lang/Byte;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcb/u$e;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    sput-object v0, Lcb/u$e;->m:Lcb/u$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Byte;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/Byte;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcb/u$l;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public D0(Lla/l;Lxa/g;)Ljava/lang/Byte;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lla/l;->G()Lla/p;

    move-result-object v0

    sget-object v1, Lla/p;->q:Lla/p;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lla/l;->f0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcb/a0;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcb/u$l;->i:Z

    invoke-virtual {p0, p2, p1}, Lcb/a0;->A(Lxa/g;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcb/u$l;->i:Z

    invoke-virtual {p0, p2, p1}, Lcb/a0;->x(Lxa/g;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcb/a0;->n0(Lxa/g;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lra/i;->k(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v1}, Lcb/a0;->w(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcb/a0;->a:Ljava/lang/Class;

    const-string v1, "overflow, value cannot be represented as 8-bit value"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, v1, v0}, Lxa/g;->p0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    :cond_2
    int-to-byte p0, v1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :catch_0
    iget-object p0, p0, Lcb/a0;->a:Ljava/lang/Class;

    const-string v1, "not a valid Byte value"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, v1, v0}, Lxa/g;->p0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    :cond_3
    sget-object v1, Lla/p;->t:Lla/p;

    if-ne v0, v1, :cond_5

    sget-object v0, Lxa/h;->Y:Lxa/h;

    invoke-virtual {p2, v0}, Lxa/g;->v0(Lxa/h;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Byte"

    invoke-virtual {p0, p1, p2, v0}, Lcb/a0;->F(Lla/l;Lxa/g;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lla/l;->C()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v1, Lla/p;->x:Lla/p;

    if-ne v0, v1, :cond_6

    iget-boolean p1, p0, Lcb/u$l;->i:Z

    invoke-virtual {p0, p2, p1}, Lcb/a0;->z(Lxa/g;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    :cond_6
    sget-object v1, Lla/p;->m:Lla/p;

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, p1, p2}, Lcb/a0;->C(Lla/l;Lxa/g;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    :cond_7
    sget-object v1, Lla/p;->r:Lla/p;

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Lla/l;->C()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object p0, p0, Lcb/a0;->a:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Lxa/g;->g0(Ljava/lang/Class;Lla/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0
.end method

.method public E0(Lla/l;Lxa/g;)Ljava/lang/Byte;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lla/p;->r:Lla/p;

    invoke-virtual {p1, v0}, Lla/l;->C0(Lla/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lla/l;->C()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcb/u$e;->D0(Lla/l;Lxa/g;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c()Lpb/a;
    .locals 0

    invoke-super {p0}, Lcb/u$l;->c()Lpb/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f(Lla/l;Lxa/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lla/n;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcb/u$e;->E0(Lla/l;Lxa/g;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic n(Lxa/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lxa/l;
        }
    .end annotation

    invoke-super {p0, p1}, Lcb/u$l;->n(Lxa/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
