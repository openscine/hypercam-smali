.class public interface abstract Ln/a/a/c/z1/l3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final a:Ln/a/a/c/z1/l3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ln/a/a/c/z1/g1;->b:Ln/a/a/c/z1/g1;

    sput-object v0, Ln/a/a/c/z1/l3;->a:Ln/a/a/c/z1/l3;

    return-void
.end method

.method public static a()Ln/a/a/c/z1/l3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Ln/a/a/c/z1/l3<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln/a/a/c/z1/l3;->a:Ln/a/a/c/z1/l3;

    return-object v0
.end method

.method public static synthetic b(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public abstract c(I)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)J^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
