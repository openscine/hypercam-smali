.class public Ld/o/b/c/c1$b5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/b/c/l1/l;


# annotations
.annotation runtime Ld/o/b/c/l1/o;
    name = "ShopRecommendation"
    namespace = "Template"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o/b/c/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b5"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/o/b/c/c1$c5;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ld/o/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/o/h/a<",
            "Ld/o/b/c/c1$h2;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ld/o/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/o/h/a<",
            "Ld/o/b/c/c1$p0;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ld/o/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/o/h/a<",
            "Ld/o/b/c/c1$x0;",
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

    iput-object v0, p0, Ld/o/b/c/c1$b5;->b:Ld/o/h/a;

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/c1$b5;->c:Ld/o/h/a;

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/c1$b5;->d:Ld/o/h/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/o/b/c/c1$c5;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/c1$b5;->b:Ld/o/h/a;

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/c1$b5;->c:Ld/o/h/a;

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/c1$b5;->d:Ld/o/h/a;

    iput-object p1, p0, Ld/o/b/c/c1$b5;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ld/o/h/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/o/h/a<",
            "Ld/o/b/c/c1$p0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld/o/b/c/c1$b5;->c:Ld/o/h/a;

    return-object p0
.end method

.method public b()Ld/o/h/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/o/h/a<",
            "Ld/o/b/c/c1$x0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld/o/b/c/c1$b5;->d:Ld/o/h/a;

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld/o/b/c/c1$c5;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld/o/b/c/c1$b5;->a:Ljava/util/List;

    return-object p0
.end method

.method public d()Ld/o/h/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/o/h/a<",
            "Ld/o/b/c/c1$h2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld/o/b/c/c1$b5;->b:Ld/o/h/a;

    return-object p0
.end method

.method public e(Ld/o/b/c/c1$p0;)Ld/o/b/c/c1$b5;
    .locals 0

    invoke-static {p1}, Ld/o/h/a;->e(Ljava/lang/Object;)Ld/o/h/a;

    move-result-object p1

    iput-object p1, p0, Ld/o/b/c/c1$b5;->c:Ld/o/h/a;

    return-object p0
.end method

.method public f(Ld/o/b/c/c1$x0;)Ld/o/b/c/c1$b5;
    .locals 0

    invoke-static {p1}, Ld/o/h/a;->e(Ljava/lang/Object;)Ld/o/h/a;

    move-result-object p1

    iput-object p1, p0, Ld/o/b/c/c1$b5;->d:Ld/o/h/a;

    return-object p0
.end method

.method public g(Ljava/util/List;)Ld/o/b/c/c1$b5;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/o/b/c/c1$c5;",
            ">;)",
            "Ld/o/b/c/c1$b5;"
        }
    .end annotation

    iput-object p1, p0, Ld/o/b/c/c1$b5;->a:Ljava/util/List;

    return-object p0
.end method

.method public h(Ld/o/b/c/c1$h2;)Ld/o/b/c/c1$b5;
    .locals 0

    invoke-static {p1}, Ld/o/h/a;->e(Ljava/lang/Object;)Ld/o/h/a;

    move-result-object p1

    iput-object p1, p0, Ld/o/b/c/c1$b5;->b:Ld/o/h/a;

    return-object p0
.end method
