.class public Ld/o/b/c/i0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/b/c/l1/l;


# annotations
.annotation runtime Ld/o/b/c/l1/o;
    name = "General"
    namespace = "Notification"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o/b/c/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation
.end field

.field private d:J
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation
.end field

.field private e:Ld/o/b/c/c1$h2;
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation
.end field

.field private f:Ld/o/b/c/i0$b;
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation
.end field

.field private g:Ld/o/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/o/h/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ld/o/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/o/h/a<",
            "Ld/o/b/c/c1$h2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/i0$a;->g:Ld/o/h/a;

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/i0$a;->h:Ld/o/h/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLd/o/b/c/c1$h2;Ld/o/b/c/i0$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/i0$a;->g:Ld/o/h/a;

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/i0$a;->h:Ld/o/h/a;

    iput-object p1, p0, Ld/o/b/c/i0$a;->a:Ljava/lang/String;

    iput-object p2, p0, Ld/o/b/c/i0$a;->b:Ljava/lang/String;

    iput-object p3, p0, Ld/o/b/c/i0$a;->c:Ljava/lang/String;

    iput-wide p4, p0, Ld/o/b/c/i0$a;->d:J

    iput-object p6, p0, Ld/o/b/c/i0$a;->e:Ld/o/b/c/c1$h2;

    iput-object p7, p0, Ld/o/b/c/i0$a;->f:Ld/o/b/c/i0$b;

    return-void
.end method


# virtual methods
.method public a()Ld/o/b/c/i0$b;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iget-object p0, p0, Ld/o/b/c/i0$a;->f:Ld/o/b/c/i0$b;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iget-object p0, p0, Ld/o/b/c/i0$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()J
    .locals 2
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iget-wide v0, p0, Ld/o/b/c/i0$a;->d:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iget-object p0, p0, Ld/o/b/c/i0$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ld/o/h/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/o/h/a<",
            "Ld/o/b/c/c1$h2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld/o/b/c/i0$a;->h:Ld/o/h/a;

    return-object p0
.end method

.method public f()Ld/o/b/c/c1$h2;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iget-object p0, p0, Ld/o/b/c/i0$a;->e:Ld/o/b/c/c1$h2;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iget-object p0, p0, Ld/o/b/c/i0$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ld/o/h/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/o/h/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld/o/b/c/i0$a;->g:Ld/o/h/a;

    return-object p0
.end method

.method public i(Ld/o/b/c/i0$b;)Ld/o/b/c/i0$a;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iput-object p1, p0, Ld/o/b/c/i0$a;->f:Ld/o/b/c/i0$b;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Ld/o/b/c/i0$a;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iput-object p1, p0, Ld/o/b/c/i0$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public k(J)Ld/o/b/c/i0$a;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iput-wide p1, p0, Ld/o/b/c/i0$a;->d:J

    return-object p0
.end method

.method public l(Ljava/lang/String;)Ld/o/b/c/i0$a;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iput-object p1, p0, Ld/o/b/c/i0$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ld/o/b/c/c1$h2;)Ld/o/b/c/i0$a;
    .locals 0

    invoke-static {p1}, Ld/o/h/a;->e(Ljava/lang/Object;)Ld/o/h/a;

    move-result-object p1

    iput-object p1, p0, Ld/o/b/c/i0$a;->h:Ld/o/h/a;

    return-object p0
.end method

.method public n(Ld/o/b/c/c1$h2;)Ld/o/b/c/i0$a;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iput-object p1, p0, Ld/o/b/c/i0$a;->e:Ld/o/b/c/c1$h2;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Ld/o/b/c/i0$a;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iput-object p1, p0, Ld/o/b/c/i0$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Ld/o/b/c/i0$a;
    .locals 0

    invoke-static {p1}, Ld/o/h/a;->e(Ljava/lang/Object;)Ld/o/h/a;

    move-result-object p1

    iput-object p1, p0, Ld/o/b/c/i0$a;->g:Ld/o/h/a;

    return-object p0
.end method
