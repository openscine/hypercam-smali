.class public Ld/h/a/c/k0/n$e;
.super Ld/h/a/c/k0/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/a/c/k0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ld/h/a/c/k0/n;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Ld/h/a/c/k0/n$e;->c:Ljava/lang/Class;

    .line 3
    iput-object p3, p0, Ld/h/a/c/k0/n$e;->d:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/annotation/Annotation;)Ld/h/a/c/k0/n;
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 2
    iget-object v2, p0, Ld/h/a/c/k0/n$e;->c:Ljava/lang/Class;

    if-ne v2, v4, :cond_0

    .line 3
    iput-object p1, p0, Ld/h/a/c/k0/n$e;->d:Ljava/lang/annotation/Annotation;

    return-object p0

    .line 4
    :cond_0
    new-instance v6, Ld/h/a/c/k0/n$b;

    iget-object v1, p0, Ld/h/a/c/k0/n;->b:Ljava/lang/Object;

    iget-object v3, p0, Ld/h/a/c/k0/n$e;->d:Ljava/lang/annotation/Annotation;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ld/h/a/c/k0/n$b;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public b()Ld/h/a/c/k0/p;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/h/a/c/k0/n$e;->c:Ljava/lang/Class;

    iget-object p0, p0, Ld/h/a/c/k0/n$e;->d:Ljava/lang/annotation/Annotation;

    invoke-static {v0, p0}, Ld/h/a/c/k0/p;->h(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ld/h/a/c/k0/p;

    move-result-object p0

    return-object p0
.end method

.method public c()Ld/h/a/c/t0/b;
    .locals 2

    .line 1
    new-instance v0, Ld/h/a/c/k0/n$d;

    iget-object v1, p0, Ld/h/a/c/k0/n$e;->c:Ljava/lang/Class;

    iget-object p0, p0, Ld/h/a/c/k0/n$e;->d:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, p0}, Ld/h/a/c/k0/n$d;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public h(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    iget-object p0, p0, Ld/h/a/c/k0/n$e;->c:Ljava/lang/Class;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
