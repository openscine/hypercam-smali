.class public Liq/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkq/d;


# annotations
.annotation build Lbq/a;
    threading = .enum Lbq/d;->b:Lbq/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkq/d<",
        "Laq/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Liq/n;


# instance fields
.field public final a:Llq/w;

.field public final b:Laq/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Liq/n;

    invoke-direct {v0}, Liq/n;-><init>()V

    sput-object v0, Liq/n;->c:Liq/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v0}, Liq/n;-><init>(Llq/w;Laq/z;)V

    return-void
.end method

.method public constructor <init>(Llq/w;Laq/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Llq/l;->c:Llq/l;

    :goto_0
    iput-object p1, p0, Liq/n;->a:Llq/w;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget-object p2, Lfq/l;->b:Lfq/l;

    :goto_1
    iput-object p2, p0, Liq/n;->b:Laq/z;

    return-void
.end method


# virtual methods
.method public a(Lkq/h;Ldq/c;)Lkq/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkq/h;",
            "Ldq/c;",
            ")",
            "Lkq/c<",
            "Laq/y;",
            ">;"
        }
    .end annotation

    new-instance v0, Liq/m;

    iget-object v1, p0, Liq/n;->a:Llq/w;

    iget-object p0, p0, Liq/n;->b:Laq/z;

    invoke-direct {v0, p1, v1, p0, p2}, Liq/m;-><init>(Lkq/h;Llq/w;Laq/z;Ldq/c;)V

    return-object v0
.end method
