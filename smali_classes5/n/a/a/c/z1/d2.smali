.class public final synthetic Ln/a/a/c/z1/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/a/a/c/z1/y3;


# instance fields
.field public final synthetic c:Ln/a/a/c/z1/y3;

.field public final synthetic d:Ln/a/a/c/z1/y3;


# direct methods
.method public synthetic constructor <init>(Ln/a/a/c/z1/y3;Ln/a/a/c/z1/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/a/a/c/z1/d2;->c:Ln/a/a/c/z1/y3;

    iput-object p2, p0, Ln/a/a/c/z1/d2;->d:Ln/a/a/c/z1/y3;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ln/a/a/c/z1/d2;->c:Ln/a/a/c/z1/y3;

    iget-object p0, p0, Ln/a/a/c/z1/d2;->d:Ln/a/a/c/z1/y3;

    invoke-static {v0, p0, p1}, Ln/a/a/c/z1/y3;->i(Ln/a/a/c/z1/y3;Ln/a/a/c/z1/y3;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
