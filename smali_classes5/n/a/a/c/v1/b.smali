.class public final synthetic Ln/a/a/c/v1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Comparable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/a/a/c/v1/b;->a:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ln/a/a/c/v1/b;->a:Ljava/lang/Comparable;

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p0, p1}, Ln/a/a/c/v1/g;->k(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method
