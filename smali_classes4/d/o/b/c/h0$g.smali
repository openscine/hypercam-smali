.class public Ld/o/b/c/h0$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o/b/c/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation
.end field

.field private b:Z
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation
.end field

.field private c:Ld/o/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/o/h/a<",
            "Ljava/util/List<",
            "Ld/o/b/c/h0$r1;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/h0$g;->c:Ld/o/h/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/h0$g;->c:Ld/o/h/a;

    iput-object p1, p0, Ld/o/b/c/h0$g;->a:Ljava/lang/String;

    iput-boolean p2, p0, Ld/o/b/c/h0$g;->b:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iget-object p0, p0, Ld/o/b/c/h0$g;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ld/o/h/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/o/h/a<",
            "Ljava/util/List<",
            "Ld/o/b/c/h0$r1;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Ld/o/b/c/h0$g;->c:Ld/o/h/a;

    return-object p0
.end method

.method public c()Z
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iget-boolean p0, p0, Ld/o/b/c/h0$g;->b:Z

    return p0
.end method

.method public d(Z)Ld/o/b/c/h0$g;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iput-boolean p1, p0, Ld/o/b/c/h0$g;->b:Z

    return-object p0
.end method

.method public e(Ljava/lang/String;)Ld/o/b/c/h0$g;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iput-object p1, p0, Ld/o/b/c/h0$g;->a:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/util/List;)Ld/o/b/c/h0$g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/o/b/c/h0$r1;",
            ">;)",
            "Ld/o/b/c/h0$g;"
        }
    .end annotation

    invoke-static {p1}, Ld/o/h/a;->e(Ljava/lang/Object;)Ld/o/h/a;

    move-result-object p1

    iput-object p1, p0, Ld/o/b/c/h0$g;->c:Ld/o/h/a;

    return-object p0
.end method
