.class public Ln/a/a/a/m/e$c;
.super Ln/a/a/a/m/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln/a/a/a/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private final synthetic d:Ln/a/a/a/m/e;


# direct methods
.method public constructor <init>(Ln/a/a/a/m/e;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln/a/a/a/m/e$c;->d:Ln/a/a/a/m/e;

    .line 2
    invoke-direct {p0, p1, p2}, Ln/a/a/a/m/e$a;-><init>(Ln/a/a/a/m/e;I)V

    return-void
.end method


# virtual methods
.method public a(II)[C
    .locals 2

    .line 1
    new-array v0, p2, [C

    .line 2
    iget-object p0, p0, Ln/a/a/a/m/e$a;->a:[C

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public c(C)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln/a/a/a/m/e$a;->a:[C

    iget v1, p0, Ln/a/a/a/m/e$a;->b:I

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, p0, Ln/a/a/a/m/e$a;->b:I

    return-void
.end method
