.class public final Ld/h/a/c/h0/b0/b0$d;
.super Ld/h/a/c/h0/b0/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/a/c/h0/b0/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field private static final K8:J = 0x1L


# instance fields
.field public final L8:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Ld/h/a/c/h0/b0/b0;-><init>(ILjava/lang/Class;)V

    .line 2
    iput-object p1, p0, Ld/h/a/c/h0/b0/b0$d;->L8:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ld/h/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Ld/h/a/c/h0/b0/b0$d;->L8:Ljava/lang/reflect/Method;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
